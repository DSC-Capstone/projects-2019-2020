import torch
import torch.multiprocessing as mp

import utils
from trainer import Trainer
from utils import dist_init


def main():
    parser = utils.prepare_parser()
    parser = utils.add_dgp_parser(parser)

    config = vars(parser.parse_args())
    utils.dgp_update_config(config)
    
    #Print parameters
    cat = ['model', 'dgp_mode', 'list_file', 'exp_path', 'root_dir', 'resolution', 'random_G', 'update_G', 'custom_mask']
    for key,val in config.items():
        if key in cat:
            print(key,":", str(val))

    if config['custom_mask']:
        config['mask_path'] = '../data/input/'+config['mask_path']
        print('mask_path :',config['mask_path'])

    rank = 0
    if mp.get_start_method(allow_none=True) != 'spawn':
        mp.set_start_method('spawn', force=True)
    if config['dist']:
        rank, world_size = dist_init(config['port'])

    # Seed RNG
    utils.seed_rng(rank + config['seed'])

    # Setup cudnn.benchmark for free speed
    torch.backends.cudnn.benchmark = True

    # train
    trainer = Trainer(config)
    trainer.run()


if __name__ == '__main__':
    main()

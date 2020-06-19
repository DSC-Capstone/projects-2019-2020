#!/usr/bin/env sh

WORK_PATH=$(dirname $0)
#$1 - Train: True/False
#$2 - Input image: Str
#$3 - Use_mask: True/False
#$4 - Input mask: Str
cd $WORK_PATH

#Write input image to list
echo $2 > ../data/input/img_list.txt

#No custom mask use
if [ $3 = False ]
then python -u -W ignore main.py \
--exp_path ../data/out \
--root_dir ../data/input/ \
--list_file ../data/input/img_list.txt \
--seed 2 \
--dgp_mode inpainting \
--update_G \
--update_embed \
--ftr_num 8 8 8 8 8 \
--ft_num 7 7 7 7 7 \
--lr_ratio 1.0 1.0 1.0 1.0 1.0 \
--w_D_loss 1 1 1 1 0.5 \
--w_nll 0.02 \
--w_mse 1 1 1 1 10 \
--select_num 1000 \
--sample_std 0.3 \
--iterations 200 200 200 200 200 \
--G_lrs 5e-5 5e-5 2e-5 2e-5 1e-5 \
--z_lrs 2e-3 1e-3 2e-5 2e-5 1e-5 \
--use_in False False False False False \
--resolution 256 \
--save_G \
--random_G $1 \
--custom_mask $3 \
--weights_root ../data \
--load_weights 256 \
--G_ch 96 --D_ch 96 \
--G_shared \
--hier --dim_z 120 --shared_dim 128 \
--skip_init --use_ema --no_tb

#Custom mask Use
else
    python -u -W ignore main.py \
--exp_path ../data/out/ \
--root_dir ../data/input \
--list_file ../data/input/img_list.txt \
--seed 2 \
--dgp_mode inpainting \
--update_G \
--update_embed \
--ftr_num 8 8 8 8 8 \
--ft_num 7 7 7 7 7 \
--lr_ratio 1.0 1.0 1.0 1.0 1.0 \
--w_D_loss 1 1 1 1 0.5 \
--w_nll 0.02 \
--w_mse 1 1 1 1 10 \
--select_num 1000 \
--sample_std 0.3 \
--iterations 200 200 200 200 200 \
--G_lrs 5e-5 5e-5 2e-5 2e-5 1e-5 \
--z_lrs 2e-3 1e-3 2e-5 2e-5 1e-5 \
--use_in False False False False False \
--resolution 256 \
--save_G \
--random_G $1 \
--custom_mask $3 \
--mask_path $4 \
--weights_root ../data \
--load_weights 256 \
--G_ch 96 --D_ch 96 \
--G_shared \
--hier --dim_z 120 --shared_dim 128 \
--skip_init --use_ema --no_tb
fi

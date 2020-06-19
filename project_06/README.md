# DSC180B Project - Quantifying Style
# RestoreNet: Quantifying the Restoration of WWII Documents

Welcome to the my current version of the project.

### Prerequisites

What things you need to use the program (TBD)

```
BeautifulSoup - pip install beautifulsoup4
REGEX - pip install regex
Requests - pip3 install requests

TensorFlow - pip3 install tensorflow
PyTorch - pip3 install torch torchvision
```

### Getting Started

First, go ahead and clone this repository to your local directory
```
git clone https://github.com/Emmanuel-Diaz/DSC180B-Project.git
```

then install all necessary packages

```
pip install -r requirements.txt
```


### Usage


**Collecting World War II Images**

Enter the following command to collect from [ww2db](http://ww2db.com/photo.php)

```
python run.py scrape [NUM_IMAGES] [TIME_PERIOD]
```

```NUM_IMAGES``` Number of World War II images to scrape<br>
```TIME_PERIOD``` Time period of images [Pre-War, Mid-War, Late-War]<br>


**Computing features**
Enter the following command to compute features on the data collected

```
python run.py features
```

**Restoring a test example**

Enter the following command to run the network on the 'Spoils of War' image, just like in the report output.
```
python run.py test-project
```

### Training

**Performing a trained restoration**
In order to do a trained restoration, you will either need to
1. Download Pre-trained weights found [here]() and place them into your ```data/out``` directory.
2. Train your own weights using your collected data. (TBD)

**Running with custom image and mask**

To use your own custom image and mask for restoration, please perform the following steps.
1. Place your image to be restored ```img``` in the ```data/input``` directory. (```img``` can be ```.png```,```.jpeg```,```.jpg```)
2. Place your custom mask ```mask``` in the ```data/input``` directory. (```mask``` must be ```.png```)
3. Run the following command with your file names.

```
python run.py -t [True/False] -i <img> -m <mask.png>
```

```-t``` Use a trained model (e.g weights are located in ```data/out```)<br>
```-i``` Degraded image file name<br>
```-m``` Mask image file name<br>


## Built With

* [Python](https://www.python.org/) - Language used
* [PyTorch](https://www.pytorch.org) - Net Framework


## Version

1.2 Added selective mask inpainting

## Author

* [Emmanuel Diaz](https://github.com/Emmanuel-Diaz)

* *Deep Generative Prior* by Xingang Pan, Xiaohang Zhan, Bo Dai, Dahua Lin, Chen Change Loy, Ping Luo 
	* [Report](https://arxiv.org/abs/2003.13659)
	* [GitHub](https://github.com/XingangPan/deep-generative-prior)

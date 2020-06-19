# IlliterateBot


### To test our code use the command:

python run.py test


## Limitations of Code 

### CNN Feature Vectors
Parts of the code that we have used we are unable to include into our pipeline. 
This includes creating the VGG16 CNN feature vectors, when transforming our book cover images
to feature vectors. When running our code that transforms our book cover images to feature vectors on our code, 
our code would constantly time out, and thus we were only able to run it on our jupyter notebooks where we
would need to split the data accordingly, and save the feature vectors immediately before the kernel crashes, 
and we would have to run the code again, and save the feature vectors separately before it crashes again. Because of
this, it is difficult to include it into our pipeline without changing the code each time we run. 



### Tesseract OCR
In our report we discussed our experiences using Tesseract OCR. The code used to generate the visualizations found in our report is in our Tesseract Jupyter Notebook. 
We were not able to add this code to our main pipeline since PyTesseract, a Python wrapper for Tesseract, requires a local installation of the Tesseract engine and requires placement directly
in the local AppData folder.



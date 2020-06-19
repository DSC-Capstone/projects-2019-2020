Presentation: https://drive.google.com/open?id=1ick7HAF_w0bjRSVxWURykakYpwKsDwDY


Website: https://nancyvuong.github.io/dsc180b_website/

To run pipeline on test data run python3 run.py test-project.
 
 
The project consists of these portions:
```
PROJECT
├── .gitignore
├── README.md
├── config
│   ├── data-params.json
│   ├── test-params.json
│   └── env.json
├── Notebooks
│   ├── API_Relationships (Model Explainability).ipynb
│   ├── Co_Occurence_EDA.ipynb
│   ├── Create_matrix.ipynb
│   ├── EDA.ipynb
│   ├── Lime.ipynb
│   ├── SVM_Explained.ipynb
│   ├── Scrape-APK.ipynb
│   └── Statistical test.ipynb
├── references
│   └── Hindroid.pdf
├── run.py
├── test-data
│   ├── APK/dating
│   ├── apk_data
│   └── xml_files/dating
└── src
    ├── Correlation_Coef.py
    ├── Filter_Coef.py
    ├── Malware_Types.py
    ├── Percent_API.py
    ├── baseline.py
    ├── create_matricies.py
    ├── model.py
    └── scrape_apk.py
    
```

### `src`

* `Correlation_Coef.py`: Calculated correlation coef for each API in each kernel

* `Filter_Coef.py`: Filters API by corelation coef values

* `Malware_Types.py`: Obtains type and category of malware from amd.arguslab.org 

* `Percent_API.py`: Ranking Algorithim for APIs

* `baseline.py`: Baseline Hindorid model

* `create_matricies.py`: Create A,B and P matricies/kernels for the Hindroid Model

* `model.py`: Final model used for multi-class malware detection

* `scrape_apk.py`: Obtains the Benign apps from https://apkpure.com/sitemap.xml



### 'Reference'

  * http://yes-lab.org/files/HinDroid_KDD2017_Slides_Ye.pdf
  

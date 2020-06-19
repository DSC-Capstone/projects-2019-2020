# Clustering-Germ-Layers

## __General__

Data scraping from https://portal.gdc.cancer.gov/ through selenium for analysis across the different germ layers and cancers. 

<br>
This is done through the use of Google's chromedriver. The chromedriver.exe included is for Windows with Chrome 83. If this does not work for your computer, go to this site https://chromedriver.chromium.org/ and download the matching driver and change chrome_driver_location to that of the correct one. MacOS may need to rename the driver to include the .exe extension.

<br><br>

## __File Usage__

### [Param_config.json](config/param_config.json)

- createDict 
    - Required keys: 
        - chrome_driver_location
        - data_dict (if not specified in command line)
            - if done through command line, remember to change it in param_config to file you want to use
    - Optional:
        - headless
        - time_wait, implicit_wait, after_sort_wait
- queryData
    - Required:
        - chrome_driver_location
        - data_dict (made from createDict)
        - samples
    - Optional:
        - headless
        - time_wait, implicit_wait, after_sort_wait
        - sort_using, sort_direction
        - file_names
- downloadData
    - Required:
        - chrome_driver_location
        - keep_tar_files, tar_dir, maf_dir
        - manual_csv_files (if not specified by pattern on the command line)
        - download_inds
    - Optional:
        - headless
        - time_wait, implicit_wait, after_sort_wait, download_wait


Example:
```
{
    "chrome_driver_location" : "chromedriver.exe",
    "headless" : true,
    "data_dict": "references/data_dictionary.csv",
    "file_names" : ["Q1.csv", "Q2.csv"],
    "sort_using" : ["Size", "Project"],
    "sort_direction": ["up", "up"],
    "samples": [133, 272],
    "time_wait" : 2,
    "implicit_wait" : 3,
    "after_sort_wait" : 5,
    "download_wait" : 60,
    "manual_csv_files" : ["Q1.csv"],
    "download_inds" : ["1-2,7-12"],
    "keep_tar" : false,
    "tar_dir" : "testdata/tars",
    "maf_dir": "testdata/mafs"
}
```
<br>

### [Query_config.json](config/query_config.json)

- queryData
    - All categories are up to user to pick and choose. A list of categories, types, and descriptions are in data dictionary file made using createDict.
        - Number after is the number of queries to be made using it so make sure that the numbers used match. The queries are made in order.
            - Must match with files_names and samples from param_config.json
        - Ex.  
        > { "files.data_format" : ["maf", 2] } -> ["files.data_format in ["maf"]", "files.data_format in ["maf"]"] 

        > { \
            "data_format" : ["maf", 1, "vcf", 1], \
            "access : ["open", 2] \
          } -------> \
          ["files.data_format in ["maf"] and files.access in ["open"], "files.data_format in ["vcf"] and files.access in ["open"]]

    - Incomplete category names may be autofilled to include the starting class name by the dictionary file, if they match to existing entries. 
        - Ex.
        > { "data_format" : ["maf", 2] } -> ["files.data_format in ["maf"]", "files.data_format in ["maf"]"]

        > { "data_for" : ["open", 2] } -> Error


Example:
```
{
    "data_category" : ["Simple Nucleotide Variation", 2],
    "data_format" : ["maf", 1, "vcf", 1],
    "cases.primary_site" : ["bronchus and lung", 2],
    "file_size_min": ["> 1000", 2],
    "file_size_max": ["< 10MB", 2],
    "access" : ["open", 2]
}
```
<br><br>

## __Command Line used by [run.py](run.py)__

<> means optional argument
```
(base) py run.py createDict config/param_config.json <Data_dict.csv>
```
- createDict creates a dictionary file in location specified in param_config.file. Overidden by CSV path on command line. 
    - if want to use command line CSV in queryData, then change the data_dict path in the param_config.file

<br>

```
(base) py run.py queryData config/param_config.json config/query_config.json
```
- queryData creates CSV files that match parameters in both the parameter and query config files with the URLs that link to the matching files.

<br>

```
(base) py run.py downloadData config/param_config.json <CSV matching pattern> <pattern 2> <...>
```
- downloadData uses indicies from param_config file and either the entered CSV files in param_config or the ones specified in the command line to find the files to download. The created annotations file is the same name as the created maf.gz file for ease of matching together.

<br><br>

## Appendix

Parameter file keys are the only ones included here as all information on the query keys can be found from the data file created by createDict. Grouped if highly related.

Used by more than one command

- chrome_driver_location \
    Path location of the chromedriver.exe file 

- data_dict \
    Data dictionary file made from createDict and can be used in queryData. In createDict, this value can be overridden by the CSV named in the commandline and only the latter CSV file is created.

    - It is scraped from TCGA using a vague query that holds all the different combinations for the keys. However, the possible values for those keys must be found from https://portal.gdc.cancer.gov/query and searching those terms in the query bar. This gives a list for all the possible values for that key. 
    - This file is only to locally see all the keys, types, and descriptions, as well as to help fix some user input errors in queryData.

- headless \
    Set to False if want to see movement across the site. \
    **WARNING**: Webpages load faster when True so if code breaks, then either change back or increase wait times.
    
- time_wait, implicit_wait, after_sort_wait, download_wait \
    Timing variables to change. There are default values if they are not specified; however, slower connections must be fixed by increasing these times so page is loaded.

    - Time_wait is the time the code waits after each step.
    - Implicit_wait is the time the code waits after loading a new page.
    - After_sort_wait is the time waiting for the data to be sorted which usually is kept higher than the others as it takes much longer to do.
        - However, if you are not sorting the data then setting the time much longer works.
    - Download_wait is the time that the program waits to download each file so larger files can be given more time to download.

queryData

- file_names \
    The list of CSV names that the queryData results will be saved to. If not specified, uses default names for queries.

- samples \
    The number of top results from a query search that will be saved to that query's CSV file. The max samples per CSV file is 1000 results.

- sort_using, sort_direction \
    Before the data is scraped, it is sorted by user specifications and then the top results are saved to the CSV file in queryData. If not specified, then uses the default sorting that TCGA stores files as. 
    - Sorts are done in order given so sorting by ["Size","Project"] is different than ["Project", "Size"]
    - Sort_using values are limited to:
        - "Access", "Data Category", "Data Format", "File Name", "Project", "Size"
    - Sort_direction gives direction of sorting and is limited to:
        - "Up", "Down"


downloadData

- download_inds \
    Indexes of the files in manual_csv_files that want to be downloaded to make downloading specific samples easier.
    - Ex. 
    > array_conv(["1-3,5", "1,3-4"]) => [[1,2,3,5], [1,3,4]]
    
    This downloads the files at these positions from the specified CSV files. \
    **WARNING** : As the first row of the CSV file is the column names, row 2 is the first data value and python starts at a 0 index so [1] points to the 3rd row in the CSV file. 

- keep_tar_files, tar_dir, maf_dir    
    - keep_tar_files is a boolean, that when True, says to keep the downloaded tar files along with the extracted maf.gz files. Otherwise, only the maf.gz files.
    - tar_dir is the directory where the chromedriver will save the downloaded tar files into.
    - maf_dir is the directory that the extracted maf.gz and corresponding annotation files are placed into.

    **WARNING**:  If there is an outer directory used by tar_dir and maf_dir and it is not created before running downloadData, the code will break.
    - In the param_config.json example, the testdata directory must be made in advance. However, the individual directories of tar_dir and maf_dir will be made through the code if they do not already exist.

- manual_csv_files \
    CSV file names that hold the location of the desired files to be downloaded. If new pattern is given in command line, this is overridden by CSVs found using that pattern. However, these CSVs found using the pattern are still subject to matching the download_inds.

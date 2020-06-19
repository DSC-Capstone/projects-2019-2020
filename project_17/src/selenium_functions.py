
"""
Selenium_functions.py houses only functions that require the use of selenium or
the timing functions that pauses selenium so selenium works as intended.
All other functions that are used are placed in cleaning.py.
"""

####################################################################### imports
######### selenium specific imports
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options

######## imports to be used in conjunction with selenium
    #### non-selenium functions in cleaning.py
import time
from cleaning import *

####### default time values used if not specified in param file
time_wait = 3
implicit_wait = 3
after_sort_wait = 6
download_wait = 15

############################### functions used in multiple command line actions
def button_click(driver, css_tag, sleep = True):
    """
    Finds an object by its css selector and clicks on it

    @param driver: selenium webdriver.Chrome object;
    @param css_tag: str; css location tag of object want to be click on
    @param sleep: bool; if you want to sleep after clicking button
    @return box: webElement object that was clicked on
    """
    try:
        box = driver.find_element_by_css_selector(css_tag)
        box.click()
        if sleep:
            time.sleep(time_wait)
        return box
    except:
        return None

def accept_gov_warning(driver, start = False):
    """
    Entering TCGA website and accepting the goverment data warning at start
    @param driver: selenium webdriver.Chrome object;
    @param start (opt.): bool; only accept or go to TCGA then accept
    """
    if start:
        driver.get('https://portal.gdc.cancer.gov/query')
        driver.implicitly_wait(implicit_wait)

    ## accept gov warning when entering page
    button_click(driver, ".undefined.button.css-oe4so")

def time_change(params):
    """
    Changes times to specified values if given in param config file,
    otherwise the times stay at their default values

    @param params: dict; dictionary from param config file
    """
    for key,item in params.items():
        if key == 'time_wait':
            global time_wait;           time_wait = item
        elif key == 'implicit_wait':
            global implicit_wait;       implicit_wait = item
        elif key == 'after_sort_wait':
            global after_sort_wait;     after_sort_wait = item
        elif key == "download_wait":
            global download_wait;     download_wait = item


######################################### chrome initializations before running
def convert_to_headless(chrome_options):
    """
    Change Options object to so driver is headless and return changed version
    @param chrome_options: Options object
    """

    ## browser is "headless" meaning it doesn't appear when running
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    chrome_options.add_argument('log-level=3') ## suppresses info msgs
    return chrome_options

def chrome_warning():
    print('WARNING: CURRENTLY ONLY WORKS ON COMPUTERS WITH CHROME')
    print("If inappropriate driver for chrome version, go to https://" + \
          "chromedriver.chromium.org/downloads to download the right one.")

def chrome_setup(params, download = False):
    """
    Set up chromedriver based on param file and accept warning so ready to go

    @param params: dict; dictionary from param config file
    @param download (opt.): bool; if True, add arguments for download location
    """

    chrome_warning()

    headless_check = ('headless' in params.keys()) and (params['headless'])
    if headless_check or download:
        chrome_options = Options()
        if headless_check:
            chrome_options = convert_to_headless(chrome_options)
        if download:
            tar_path = params['tar_dir'].replace('/', '\\')
            check_file(tar_path, True, True)
            prefs = {"download.default_directory" : os.path.abspath(tar_path)}
            chrome_options.add_experimental_option('prefs', prefs)
    else:
        chrome_options = None

    time_change(params)
    check_driver_location(params['chrome_driver_location'])
    driver = webdriver.Chrome(options = chrome_options,
                              executable_path = params['chrome_driver_location'])
    accept_gov_warning(driver, True)
    return driver


############################################################### query functions
def enter_query(driver, query, enter = True):
    """
    @param driver
    @param query: string; string query made from query_assemble
    @param enter (optional): if True, run query. Otherwise only enter query
    @return query_box: webElement where query is entered into
    """
    ## inputs query into query box
    query_box = driver.find_element_by_id('gql')
    query_box.clear()
    query_box.send_keys(query)
    time.sleep(time_wait)

    if enter: ## runs query if true
        valid_check = driver.find_elements_by_css_selector("div[class=\"text"
                                                    + "-success ng-scope\"]")
        ## if query fails, prints error message
        if valid_check == []:
            error_box = driver.find_element_by_css_selector("div[class=\"text"
                                                    + "-danger ng-scope\"]")
            elem = error_box.find_element_by_tag_name('a')
            elem.click()

            error_msg = error_box.find_elements_by_tag_name('span')[1].text
            elem.click() ## reset error message state

            assert False, ("Query is invalid. Please try again. \n" +
                           f"Query is currently \"{query}\" \n" +
                           f"Error message: \"{error_msg}\"")

        button_click(driver, ".btn.btn-primary.btn-success")
    return query_box

def results_check(driver, query, first_page = False):
    """
    Checks if no results occur for query. This avoids breaking the code as the
    table is not created if there are no entries for it to display.

    @param driver
    @param query; str; query string that is entered in enter_query
    @param first page (optional): bool; True if in first page of query results
    @return bool; True if there are results on the page. False otherwise
    """
    div_attr = "position: relative; width: 100%; min-height: 387px;"
    div_box = driver.find_element_by_css_selector(f"div[style=\"{div_attr}\"]")

    ### oddly, in pages after the first, can't scrape to know if no results
    if (div_box.text is None ) or (div_box.text == 'No results found'):
        if first_page:
            print(f"\nCurrent query \"{query}\" has no results.\n")
        return False
    return True


####################################################### data dictionary creator
def get_keywords(param_file, data_file = None):
    """
    Creates the data_dictionary file by going through all keywords in TCGA's
    query (possible by using a vague query entry) and saves this file to
    data_file or params['data_dict'].

    @param param_file: string; path for param config file
    @param data_file (optional): string; path to data_file
    """


    assert param_file.endswith('.json'), ("Invalid file chosen. Param config " +
                                             "needs to be a json file.")

    params = json_load(param_file)

    if check_file(params['data_dict']) and data_file is None:
        print(f"Data Dictionary file \"{params['data_dict']}\" already exists.")
        return
    if (data_file is not None):
        assert data_file.endswith('.csv'), ("Unusable name. Format should be " +
                                            "\"name.csv\"")
        if check_file(data_file):
            print(f"Data Dictionary file \"{data_file}\" already exists.")
            return

    driver = chrome_setup(params)

    #### vague query entry that results in all autocompletions occurring
    query = 'and '
    id_box = enter_query(driver, query, False)

    #### gets the autocompletion results (only can do 10 at a time)
    dropdown = driver.find_element_by_css_selector('.list-unstyled.Gql_dropdown.Gql_dropdown-0')

    info_lst = []

    start = True
    continuation = True ## tells loop to stop
    second_time = False ## so continuation doesnt stop on first loop

    while continuation:
        ### get all top elements it gives us
        items = dropdown.find_elements_by_tag_name('li')

        ### items is 12 elements but first and last are blanks
        for i in items[1:-1]:
            ## case_id only appears at start so end when seen a second time
            if bool(re_search("^case_id\s", i.text)):
                if second_time:
                    continuation = False
                second_time = True
            info_lst.append(i.text)

        times = 10 # normal amount as 10 downs gives max number of new results (10)

        if start: # 10 down works for everyone except for the first time
            times = 19 #down 19 times to get from element 1 to 20 so all 10 are new
            start = False

        for _ in range(times):
            id_box.send_keys(Keys.DOWN)

    driver.close()
    if data_file is None:
        create_data_dict(info_lst, params['data_dict'])
    else:
        create_data_dict(info_lst, data_file)
    print("FINISHED")


######################### data layout changes (url manipulation using selenium)
def change_amount_viewed(driver, size = 100):
    """
    Goes to show entries dropdown and get url for different sizes. Returns the
    url for the size specified by size.

    @param driver
    @param size: int; size of entries wanted to view
    @return new_url; string; url that shows size entries per page
    """

    ### click on div above the dropdown menu (stops error behavior)
    button_click(driver, 'div[style="display: flex; flex-direction: row;' +
        ' box-sizing: border-box; position: relative; outline: none; ' +
        'align-items: center; padding: 1rem; border-top: 1px solid ' +
        'rgb(222, 222, 222); background-color: white;"]')

    ### clicks onto the dropdown menu
    select = button_click(driver, '.test-page-size-selection.dropdown')

    size_elems = select.find_elements_by_tag_name('div')
    curr = size_elems[0]

    new_url = ''
    for i in size_elems[1:]:
        if i.text == str(size): ## checks tag is the specified size
            new_url = i.find_element_by_tag_name('a').get_attribute('href')
            break
    return new_url

def get_new_urls(driver):
    """
    This version only works with sizes of less than 1000 entries but avoids
    the bugs from the string version that occur randomly. So sometimes the
    string version works but it is inconsistent.

    @return offset_url_lst: list of strings; list of urls for up to the
        next 1000 entries broken into sections of 100. So max length is 10.
    """


    elem = driver.find_element_by_css_selector(f"div[style=\"display: flex; "+
            "flex-direction: row; box-sizing: border-box; position: relative; "+
            "outline: none; margin-left: auto;\"]")

    ## to make selection work for any page
    new_page_links = elem.find_elements_by_tag_name('a')

    #### since first 2 are inactivate on on page 1 so check if
        ## offset (indicates not on page 1)
    if 'files_offset' not in driver.current_url:
        start = 0
    elif 'files_offset=0&' in driver.current_url:
        start = 0
    else:
        start = 2

    offset_url_lst = []
    ## only want the middle 10 so start gives end too
    for link in new_page_links[start:start + 10]:
        offset_url_lst.append(link.get_attribute('href'))

    return offset_url_lst


############################# data sorting done once before the queries are run
def sort_data(driver, param_config):
    """
    Sorts the data based on chosen characteristics in the param config file.

    @param driver
    @param param_config: dict; dictionary from param config file
    """

    ### don't need to sort by anything if given nothing to sort by
    if 'sort_using' not in param_config.keys():
        print("\n\nWarning: Sort not specified. If intended, ignore warning.\n\n")
        return

    ## css location value for sort button div location
    loc = "display: flex; flex-direction: column; box-sizing: border-box; " + \
        "position: absolute; outline: none; box-shadow: rgba(0, 0, 0, 0.16) " + \
        "0px 2px 5px 0px, rgba(0, 0, 0, 0.12) 0px 2px 10px 0px; z-index: 200; " + \
        "min-width: 165px; background-color: white; text-align: left; right: " + \
        "0px; border-radius: 5px; top: 100%; margin-top: 5px; white-space: nowrap;"

    sort_table = driver.find_elements_by_css_selector(f"div[style = \"{loc}\"]")

    if sort_table == []:
        driver.find_elements_by_css_selector("span[class=\"undefined dropdown\"]")[1].click()
        sort_table = driver.find_elements_by_css_selector(f"div[style = \"{loc}\"]")
        if sort_table == []:
            button_click(driver, "button[class=\"undefined button css-14x0dj7\"]")
            sort_table = driver.find_elements_by_css_selector(f"div[style = \"{loc}\"]")

    sort_table = sort_table[0]

    elems = sort_table.find_elements_by_tag_name('div')
    #### Each section to sort by holds 5 other Drivers
    split_elems = split_lst(elems, 6)

    sort_names = ["Access", "File Name", "Project", "Data Category",
                  "Data Format", "Size"] ## names of all possible sort_by

    ### if nothing specified for direction, go default
    use_default_sort = 'sort_direction' not in param_config.keys()
    for index, using in enumerate(param_config['sort_using']):
        items = split_elems[sort_names.index(using)]

        if use_default_sort:
            ## default actually 2, but 5 is same result and prevents bugs
            items[5].click()
        else: ## if direction of sort was specified, then go that way
            if "up" in param_config['sort_direction'][index].lower():
                items[5].click()
            elif "down" in param_config['sort_direction'][index].lower():
                items[4].click()
            else:
                assert False, "Sort Directions should be either UP or DOWN"


##################################### ran by each query and assembles dataframe
def perform_query(driver, query, params, df_name, num_samples = 150):
    """
    Query is entered and a csv, with num_samples rows, is created from table
    that results from running the query. A CSV temp file is made for each page
    and they are combined in the end, with the temps being deleted.

    @param driver
    @param query; string; query to be entered into TCGA
    @param params: dict; dictionary from param config file
    @param df_name: name of the file to write to, including the extension
    @pram num_samples (opt.): int; number of samples wanted in the created csv
    """
    if df_name.endswith('.csv') == False:
        df_name = df_name + '.csv'

    if num_samples > 1000:
        num_samples = 1000
    num_samples = int(num_samples)

    ## inputs query into query box and runs it
    enter_query(driver, query)
    ## if query has no results, then leave early
    if results_check(driver, query, True) == False:  return

    sort_data(driver, params)
    time.sleep(after_sort_wait) ## needs longer time to sort so doesn't break
    # curr_url = driver.current_url

    ## alternative way using selenium
    new_url = change_amount_viewed(driver)
    driver.get(new_url)
    driver.implicitly_wait(implicit_wait)
    new_url_lst = get_new_urls(driver)

    ### alternative ways using string manipulation based on how url is designed
    # new_url = str_change_amount_viewed(driver.current_url)
    # new_url_lst = str_get_new_urls(new_url, num_samples)
    # new_url_lst = [str_change_amount_viewed(driver.current_url, num_samples)]

    ### goes through all the list of pages until hit num_samples rows
        ## goes to new tab and goes back to original tab after downloading page
    for index, url in enumerate(new_url_lst):
        driver.execute_script("window.open('');") # open new tab

        # Switch to the new tab
        driver.switch_to.window(driver.window_handles[1])
        driver.get(url)
        driver.implicitly_wait(implicit_wait)

        #### if current page has no results, then stop downloads
        if results_check(driver, query) == False:  break

        ### table grabbing
        table = driver.find_element_by_id("repository-files-table")

        link_elems = table.find_elements_by_tag_name('a')
        links = [elem.get_attribute('href') for elem in link_elems]

        ## create dataframes
        download_dataframes(driver.page_source, links, str(index)+'_'+df_name)

        # close the active tab
        driver.close()

        ### switch to starting tab
        driver.switch_to.window(driver.window_handles[0])

    ## combine created CSVs so its not several smaller 100 row files
    combine_dataframes(df_name[:-4], num_samples)


############### Combines all functions to scrape URLs using configuration files
def tcga_scrape(param_file, query_file):
    """
    Main scraping function that uses config files to assemble the queries to
    run. Then, iterates through all the queries and makes a new CSV per.

    @param param_file: str; path that goes to the param config file
    @param query_file: str; path that goes to the query config file
    """
    assert param_file.endswith('.json'), ("Invalid file chosen. Param config " +
                                             "needs to be a json file.")
    assert query_file.endswith('.json'), ("Invalid file chosen. Query config " +
                                             "needs to be a json file.")
    ### load files into a dictionary
    params = json_load(param_file)
    queries = json_load(query_file)

    ### config + assemble turn query from dictionary into list of strings
    query_dict = query_config(queries)

    data_dict = None
    if 'data_dict' in params.keys():
        data_dict = params['data_dict']
    assembled_query = query_assemble(query_dict, data_dict)

    ### precheck to make sure everything works so don't
        ### need to init if variables dont work
    present_dict = pre_scraping_config_check(params, query_dict)

    ########## Reached here means config files are valid

    driver = chrome_setup(params)

    print("\nIf query does not have enough results to satisfy num_samples, " +
          "table will only go up to maximum possible results.\n")
    print("The maximum amount of entries placed into CSV is 1000.")

    ### performs a query for each query in list of queries
    for index, query in enumerate(assembled_query):
        name = str(f'Query_{index}.csv')
        if present_dict["file_names"]:
            name = os.path.join(*params["file_names"][index].split('/'))

        ### which combination of defaults to use based on parameters
        if present_dict["samples"]:
            perform_query(driver, query, params, name, params['samples'][index])
        else:
            perform_query(driver, query, params, name)

    driver.close()
    print("FINISHED")


################################################################# Download Data
def download_data(param_file, csv_patterns = None):
    """
    Sets up downloading of the data and downloader does the actual downloading

    @param param_file: str; path to param config file
    @param csv_patterns (opt.): list of strings; patterns to identify csvs
    """
    csv_lst = []

    params = json_load(param_file)
    #### will use manually entered csv files from param
        ### unless given in command line
    if 'manual_csv_files' in params.keys():
        csv_lst = set(params['manual_csv_files'])
        csv_lst = [file for file in csv_lst if check_file(file)]

    if csv_patterns is not None:
        for pattern in csv_patterns:
            csv_lst += glob_glob(pattern)

            csv_lst = [file for file in csv_lst if file.endswith('.csv')]
            csv_lst = list(set(csv_lst))

    assert csv_lst != [], 'No matching CSV files found by pattern or by name.'

    driver = chrome_setup(params, download = True)
    downloader(driver, params, csv_lst)

def downloader(driver, params, csv_lst):
    """
    Downloads tar files to specified tar directory and then extracts them to
    place the created maf.gz files in the maf directory. Afterwards, deletes
    all unnecessary folders and files unless user wants to keep tar files.

    @param driver
    @param params: dict; dictionary from param config file
    @param csv_lst: list of strings; path locations to all CSV files to use
    """

    tar_dir = os.path.join(*params['tar_dir'].split('/'))
    maf_dir = os.path.join(*params['maf_dir'].split('/'))
    keep_tar_files = params['keep_tar']

    ### Number of CSV files must match to indicies,
        ### otherwise unsure what files user wants to download
    assert check_file(tar_dir, True), f'{tar_dir} does not exist'
    assert len(params['download_inds']) == len(csv_lst), (
                "Download indicies do not match to csv_files")

    ### goes through all the indicies in each CSV to download file
    for index, ind in enumerate(array_conv(params['download_inds'])):
        assert csv_lst[index].endswith('csv'), "Invalid File "
        links = pandas_reindex(csv_lst[index],ind)

        for link in links: ## uses link specified in CSV file to go to page
            driver.get(link)
            driver.implicitly_wait(implicit_wait)

            accept_gov_warning(driver)
            button_click(driver, ".test-download-button.button")
            time.sleep(download_wait)

    time.sleep(30)
    driver.close()
    maf_extract_move(tar_dir, maf_dir) ## extract and move maf files

    if keep_tar_files: ## determines which files to keep from download
        remove_file_dir(tar_dir, True, True)
        remove_file_dir(tar_dir, False, True)
    else:
        remove_file_dir(tar_dir, True)
        remove_file_dir(tar_dir, False)

####### example uses of main functions that users will only interact with
    ### rest of functions are helpers for these
if __name__ == "__main__":
    get_keywords('config/param_config.json')
    tcga_scrape('config/param_config.json', 'config/query_config.json')
    download_data('config/param_config.json', ['Query_0.csv', '*.csv'])

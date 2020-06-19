import os
import ftplib
import zipfile
import gzip

#fucntion to connect to FTP
def ftp_server_authen():
    """
    a function call to connect and authenticate a ftp server
    """
    #connect to the FTP server
    ftp = ftplib.FTP("ftp.ebi.ac.uk")
    #login anonymously
    ftp.login()

    return ftp

#function to retrieve ftp data
def ftp_server(ftp, study_ref):
    """
    a function call to change to a specific study subdir
    """
    #make a list to store all the sub studies directory
    all_studies = []
    #change the parent dir
    parent_dir = '/pub/databases/gwas/summary_statistics/'
    ftp.cwd(parent_dir)
    #grab all the studies dir
    ftp.retrlines("LIST", all_studies.append)
    #getting one specific study
    studyDir = study_ref + '/'
    #changing to one specific study
    ftp.cwd(studyDir)
    #ftp.retrlines("LIST")

#function to grab t2d data
def get_t2d_file_names(server):
    """
    a function call to save all the useful T2D files into a list within the current directory
    """
    #make a list to store all teh sub files of one specific study
    file_listing = []
    #get the list of sub-directories at the current dir and append them to a list
    server.retrlines("LIST", file_listing.append)
    #only grab the bam files from the list 
    files = [i.split()[-1] for i in file_listing]
    #grab the harmonised dir
    harmo = [index for index, val in enumerate(files) if val == 'harmonised']
    subdir = files[harmo[0]] + '/'
    #go the directory
    server.cwd(subdir)
    
    #make a list to store all teh sub files of one specific study
    sub_files = []
    #get the list of sub-directories at the current dir and append them to a list
    server.retrlines("LIST", sub_files.append)
    #only grab the bam files from the list 
    tsvs = [i.split()[-1] for i in sub_files if i.split()[-1][-2:] == 'gz']
    return tsvs

#fucntion to download the data
def download_file(ftp, outdir, study_ref):
    """
    Function call to download bam files
    """

    #redirect the ftp server
    #go to one specific T2D Study with Summary Statistics
    ftp_server(ftp, study_ref)

    #dir where the downloaded data will be saved at
    T2Ddir = outdir

    try:
        #change to the data dir
        os.chdir(T2Ddir)      
    except OSError:
        #make a new dir if not existing
        os.mkdir(T2Ddir)
        print ("Successfully created the T2D data directory")
        #change to the T2D data dir
        os.chdir(T2Ddir)
    else:
        print ("T2D data directory already exists")

    try:
        #change to the one study dir
        os.chdir(study_ref)      
    except OSError:
        #make a new dir if not existing
        os.mkdir(study_ref)
        print ("Successfully created the sub directory %s" % study_ref)
        #change to the one study dir
        os.chdir(study_ref)
    else:
        print ("Sub directory %s already exists" % study_ref)

    one_study_files = get_t2d_file_names(ftp)

    for fn in one_study_files:
        #check if the file already exists in the dir
        if os.path.exists(fn):
            print("File %s already exists" % fn)
        #download the file otherwise
        else:
            one_file = open(fn, "wb")
            ftp.retrbinary("RETR " + fn, one_file.write) 
            one_file.close()
            print("successfully downloaded the file: " + str(fn))
    #go back to the parent dir 
    os.chdir("..")
    os.chdir("..")
    #close the ftp server after downloading for one study
    ftp.close()
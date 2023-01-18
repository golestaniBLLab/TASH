<pre>
_________  ________  ________  ___  ___     
|\___   ___\\   __  \|\   ____\|\  \|\  \    
\|___ \  \_\ \  \|\  \ \  \___|\ \  \\\  \   
     \ \  \ \ \   __  \ \_____  \ \   __  \  
      \ \  \ \ \  \ \  \|____|\  \ \  \ \  \ 
       \ \__\ \ \__\ \__\____\_\  \ \__\ \__\
        \|__|  \|__|\|__|\_________\|__|\|__|
                        \|_________|         
                                             
</pre>               

by Josue Luiz Dalboni da Rocha

# Paper
Dalboni da Rocha, J.L., Schneider, P., Benner, J. et al. [TASH: Toolbox for the Automated Segmentation of Heschl’s gyrus](https://www.nature.com/articles/s41598-020-60609-y). Sci Rep 10, 3887 (2020).

# Installation

## Requirements
You must have the following setup:
* Have MATLAB installed on your Linux platform (or Linux subsystem for Windows WLS).
* Have Freesurfer (preferred version 5.3) installed on your Linux platform (or WLS).
* On the OS X terminal, set in the folder where the file TASH_complete.csh is (see how in the next section).
* On the OS X terminal, type:
```batchfile
chmod +x TASH_complete_v1.sh
```

## Setting Up
* Perform Freesurfer recon-all command on each of the T1 MR images.
```batchfile
recon-all -subject Your_Subject -i Your_Subject_T1_image_file -all -qcache
```
* IMPORTANT: the TASH scripts reads the folders automatically, so make sure that **the only folders present in SUBJECTS_DIR are the one with the subject names** (e.g. run TASH before other analysis methods like qdec etc.)
*	Define your output TASH folder as:
```batchfile
export TASH_DIR=PathToYourFolder
```

## Running TASH
You are ready to run TASH!
For Freesurfer <7 run 

```batchfile
./TASH_complete_v1.sh [-h] [-m] [-v] [-t] [-g]
```
With:
* [h] Helper funtion
* [m] Value to run also the MCAI analysis. 0 means no running MCAI, 1 means MCAI AND TASH, 2 means ONLY MCAI. IMPORTANT: to run MCAI with flag == 2 it means that, at some point, TASH was run on the dataset of interest.  Default set to 0 no MCAI\n
* [g] Which gyrus you want MCAI to run on [1-2-3 etc]. Default 1.
* [v] The Freesurfer version you used. Available 5, 6 or 7 (the version updates like .2 or .3 are not important). Default 7.
* [t] Type of table you want to get. If 1, the output tables will be based only on TASH. If 2, morphological stats are obtained from other regions in the brain (ROI - Destrieux Atlas). Default 2.



## Data output
*	Two matlab files contains the numerical output of TASH (actual values for anatomical measures).
*	 'TASH_measures_complete.mat' stores two matlab structs ('lh' and 'rh'), each one contains the anatomical measures (volume, suface area, mean thickness, etc...) considering all gyri of the hemisphere together. In this way, each matrix inside the struct (for example 'lh.volume') contains one value per line, while each line is each different inputted T1 image.
*	'TASH_measures_complete_individual.mat' file has the same structure of the file mentioned above. However, in this case it stores the anatomical measures considering each gyrus individually. In this way, each matrix inside the struct (for example 'lh.volume') contains N values per line, where N is the number of transverse temporal gyri for each hemisphere. Then, the first column stores results for the first gyrus and so on (from anterior to posterior).
*	For both matlab files a .csv table is also generated for TASH (and MCAI if selected). This makes it easier to transer the results to other data analysis software/programming languages for stats (e.g. R, Python etc.)
*	The images in the main folder display all temporal transverse gyri per hemisphere, while the images in the subfolder 'individual' display each gyrus individually per image.


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

## Installation

## Requirements
You must have the following setup:
* Have MATLAB installed on your Linux platform (or Linux subsystem for Windows WLS).
* Have Freesurfer (preferred version 5.3) installed on your Linux platform (or WLS).
* On the OS X terminal Tcsh Shell, set in the folder where the file TASH_complete.csh is.
* On the OS X terminal Tcsh Shell, type: chmod +x TASH_complete.csh and TASH_complete_7.csh

## Setting Up
* Perform Freesurfer recon-all command on each of the T1 MR images.
```batchfile
recon-all -subject Your_Subject -i Your_Subject_T1_image_file -all -qcache
```
* IMPORTANT: the TASH scripts reads the folders automatically, so make sure that the only folders present in SUBJECTS_DIR are the one with the subject names (e.g. run TASH before other analysis methods like qdec etc.)
*	Open the file TASH_complete(_v7) and define your TASH folder (where you want the output)

## Running TASH
You first need to open a TCSH terminal. Hence type in the terminal

```batchfile
tcsh
```

ALL done! You are ready to run TASH!
For Freesurfer <7 run 

```batchfile
./TASH_complete.csh 
```

For Freesurfer 7 run 

```batchfile
./TASH_complete_v7.csh
```

## Data output
*	Two matlab files contains the numerical output of TASH (actual values for anatomical measures).
*	 'TASH_measures_complete.mat' stores two matlab structs ('lh' and 'rh'), each one contains the anatomical measures (volume, suface area, mean thickness, etc...) considering all gyri of the hemisphere together. In this way, each matrix inside the struct (for example 'lh.volume') contains one value per line, while each line is each different inputted T1 image.
*	'TASH_measures_complete_individual.mat' file has the same structure of the file mentioned above. However, in this case it stores the anatomical measures considering each gyrus individually. In this way, each matrix inside the struct (for example 'lh.volume') contains N values per line, where N is the number of transverse temporal gyri for each hemisphere. Then, the first column stores results for the first gyrus and so on (from anterior to posterior).
*	The images in the main folder display all temporal transverse gyri per hemisphere, while the images in the subfolder 'individual' display each gyrus individually per image.


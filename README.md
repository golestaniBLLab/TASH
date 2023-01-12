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
* On the OS X terminal Tcsh Shell, type: chmod +x TASH_complete.csh

This software has been written in Matlab. Download the folder containing the code and add it to you Matlab path with 
```matlab
addpath(PathtoFolder/TASH_Complete)
```

## Preprocessing
* Perform Freesurfer recon-all command on each of the T1 MR images.
```batchfile
recon-all -subject Your_Subject -i Your_Subject_T1_image_file -all -qcache
```
*	On the terminal Tcsh Shell, set in the folder where the TASH tcsh files are.
*	Open the file TASH_DefineSubjects and define your folder



# TASH

# setting folder TASH
set TASH_DIR='SET_YOUR_FOLDER_HERE' 

cd TASH_Complete

chmod +x TASH_tcsh.csh
./TASH_tcsh.csh
matlab -nojvm -nodesktop -r 'try; TASH_segmentation_complete; catch; end; quit'
chmod +x TASH_tcsh2_complete.csh
./TASH_tcsh2_complete.csh
matlab -nojvm -nodesktop -r 'try; TASH_output_complete; catch; end; quit'

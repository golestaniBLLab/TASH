# TASH

# setting folder TASH
set TASH_DIR='/home/deganog21/Desktop/TASH_projects/TASH_res/'  

cd TASH_Complete

chmod +x TASH_tcsh.csh
./TASH_tcsh.csh
matlab -nojvm -nodesktop -r 'try; TASH_segmentation_complete; catch; end; quit'
chmod +x TASH_tcsh2_complete.csh
./TASH_tcsh2_complete.csh
matlab -nojvm -nodesktop -r 'try; TASH_output_complete_v7; catch; end; quit'

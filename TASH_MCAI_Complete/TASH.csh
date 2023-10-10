# TASH

# setting folder TASH
set TASH_DIR='/home/deganog21/Desktop/TASH_projects/TASH_res/' 

cd TASH_Complete

# run!
chmod +x TASH_tcsh.csh
./TASH_tcsh.csh
matlab -nojvm -nodesktop -r 'try; TASH_segmentation; catch; end; quit'
chmod +x TASH_tcsh2.csh
./TASH_tcsh2.csh
matlab -nojvm -nodesktop -r 'try; TASH_output; catch; end; quit'

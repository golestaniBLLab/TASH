# TASH
chmod +x TASH_tcsh.csh
./TASH_tcsh.csh
matlab -nojvm -nodesktop -r 'try; TASH_segmentation_third; catch; end; quit'
chmod +x TASH_tcsh2_third.csh
./TASH_tcsh2_third.csh
matlab -nojvm -nodesktop -r 'try; TASH_output_third; catch; end; quit'

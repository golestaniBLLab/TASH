# TASH
chmod +x TASH_tcsh.csh
./TASH_tcsh.csh
matlab -nojvm -nodesktop -r 'try; TASH_segmentation_half; catch; end; quit'
chmod +x TASH_tcsh2_half.csh
./TASH_tcsh2_half.csh
matlab -nojvm -nodesktop -r 'try; TASH_output_half; catch; end; quit'

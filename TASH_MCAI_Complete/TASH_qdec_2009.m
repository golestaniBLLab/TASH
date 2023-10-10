
aparcstats2table --subjectsfile=Sub_DefineSubjects.txt   --skip  --parc aparc.a2009s  --hemi lh --meas volume -t qdec_Heidelberg_VOLUME_LH_DestrieuxAtlas.txt
aparcstats2table --subjectsfile=Sub_DefineSubjects.txt  --skip --parc aparc.a2009s  --hemi rh --meas volume -t qdec_Heidelberg_VOLUME_RH_DestrieuxAtlas.txt

aparcstats2table --subjectsfile=Sub_DefineSubjects.txt  --skip  --parc aparc.a2009s  --hemi lh --meas area -t qdec_Heidelberg_AREA_LH_DestrieuxAtlas.txt
aparcstats2table  --subjectsfile=Sub_DefineSubjects.txt  --skip  --parc aparc.a2009s  --hemi rh --meas area -t qdec_Heidelberg_AREA_RH_estrieuxAtlas.txt

aparcstats2table --subjectsfile=Sub_DefineSubjects.txt --skip --parc aparc.a2009s   --hemi lh --meas thickness -t qdec_Heidelberg_THICKNESS_LH_DestrieuxAtlas.txt
aparcstats2table --subjectsfile=Sub_DefineSubjects.txt  --skip   --parc aparc.a2009s  --hemi rh --meas thickness -t qdec_Heidelberg_THICKNESS_RH_DestrieuxAtlas.txt

aparcstats2table --subjectsfile=Sub_DefineSubjects.txt  --skip --parc aparc.a2009s   --hemi lh --meas meancurv -t qdec_sanlm_Heidelberg_MEANCURV_LH_FS53_DestrieuxAtlas.txt
aparcstats2table --subjectsfile=Sub_DefineSubjects.txt  --skip --parc aparc.a2009s  --hemi rh --meas meancurv -t qdec_sanlm_Heidelberg_MEANCURV_RH_FS53_DestrieuxAtlas.txt

asegstats2table --subjectsfile=Sub_DefineSubjects.txt --meas volume --tablefile aseg_Heidelberg_volume.txt

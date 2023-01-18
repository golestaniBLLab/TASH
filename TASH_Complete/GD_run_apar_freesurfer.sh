#!/bin/bash
# Script Name:  running aparstat from freesurfer
# Autor:        Giulio Degano
# Datum:        20/12/2022
# volume, thickness, thicknessstd, meancurv, gauscurv, foldind, curvind

Dload=$SUBJECTS_DIR*/

listFold=($(ls -d $Dload | xargs -n 1 basename))
vv=${listFold[@]}

measures=(volume thickness thicknessstd meancurv gauscurv foldind curvind)
HEMI=(lh rh)

for i in "${measures[@]}"
do
	for j in "${HEMI[@]}"
	do
		Dsave=$TASH_DIR/qdec_"$i"_"$j"_Destrieux.txt
		aparcstats2table --subjects $vv --parc aparc.a2009s --hemi $j --meas $i -t $Dsave
		echo $Dsave
	done
done


#!/bin/bash
# Script Name:  running asegstat from freesurfer
# Autor:        Giulio Degano
# Datum:        23/12/2022
# volume, thickness, thicknessstd, meancurv, gauscurv, foldind, curvind

Dload=$SUBJECTS_DIR*/

listFold=($(ls -d $Dload | xargs -n 1 basename))
for (( i=0; i<${#listFold[@]}; i++ )); do 
    #echo ${listFold[i]}
    if [[ ${listFold[i]} = "fsaverage" ]]; then
    	echo 'Found fsaverage' 
        listFold=( "${listFold[@]:0:$i}" "${listFold[@]:$((i + 1))}" )
        i=$((i - 1))
    fi
done

vv=${listFold[@]}

measures=('volume' 'Area_mm2' 'nvoxels' 'nvertices' 'mean' 'std' 'snr' 'max')


for i in "${measures[@]}"
do

	Dsave=$TASH_DIR/qdec_"$i"_asegstat.txt
	asegstats2table --subjects $vv --meas $i -t $Dsave
	echo $Dsave

done

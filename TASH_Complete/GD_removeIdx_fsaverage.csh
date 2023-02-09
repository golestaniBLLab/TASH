#!/bin/csh -f


set filex = `ls -d $SUBJECTS_DIR{*/}`
#echo $filex
set SUBJECTSold = `basename --multiple $filex`

set idxFs = $1

@ k = $idxFs - 1
@ j = $idxFs + 1

echo $idxFs

if ($k == 0) then
 echo "fsaverage is the first folder"
 set SUBJECTS = ($SUBJECTSold[$j-])
else if ($j > ${#SUBJECTSold}) then
 echo "fsaverage is the last folder"
 set SUBJECTS = ($SUBJECTSold[1-$k])
else
 set SUBJECTS = ($SUBJECTSold[1-$k] $SUBJECTSold[$j-])
endif


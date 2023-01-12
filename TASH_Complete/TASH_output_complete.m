clear all
[sub, Dir, Dsave] = TASH_DefineSubjects;
line=53;
[lh,rh]=TASH_Measures_c(Dir,[],[],line)
fname = fullfile(Dsave,['TASH_measures_complete.mat'])
save(fname,'lh','rh')
[lh,rh]=TASH_Measures_c1(Dir,[],[],line)
try
    [lh,rh]=TASH_Measures_c2(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c3(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c4(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c5(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c6(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c7(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c8(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c9(Dir,lh,rh,line)
    [lh,rh]=TASH_Measures_c10(Dir,lh,rh,line)
catch
end
fname = fullfile(Dsave,['TASH_measures_complete_individual.mat'])
save(fname,'lh','rh')
side='lh';
TASH_transfer_complete(side,Dir,Dsave);
side='rh';
TASH_transfer_complete(side,Dir,Dsave);
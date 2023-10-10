clear all
[sub, Dir, Dsave] = TASH_DefineSubjects;
[lh_c,rh_c]=TASH_Measures_h(Dir)
fname = fullfile(Dsave,['TASH_measures_third.mat'])
save(fname,'lh_c','rh_c')
[lh,rh]=TASH_Measures_h1(Dir)
try
    [lh,rh]=TASH_Measures_h2(Dir,lh,rh)
    [lh,rh]=TASH_Measures_h3(Dir,lh,rh)
    [lh,rh]=TASH_Measures_h4(Dir,lh,rh)
    [lh,rh]=TASH_Measures_h5(Dir,lh,rh)
    [lh,rh]=TASH_Measures_h6(Dir,lh,rh)
    [lh,rh]=TASH_Measures_h7(Dir,lh,rh)
catch
end
fname = fullfile(Dsave,['TASH_measures_third_individual.mat'])
save(fname,'lh','rh')
side='lh';
TASH_transfer_third(side,Dir,Dsave);
side='rh';
TASH_transfer_third(side,Dir,Dsave);
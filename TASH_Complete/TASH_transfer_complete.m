function TASH_transfer_complete(side,Dir,Dsave)

subjectsID = TASH_DefineSubjects;
D_save = fullfile(Dsave,['complete']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['complete'],side);
if ~isdir(D_save)
    mkdir(D_save);
end
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    fname = fullfile(D_load,['HG_',side,'_cg.tif'])
    fname2 = fullfile(D_save,['HG_',side, subjectsID{isub},'_cg_', '.tif']) 
    copyfile(fname,fname2)
    catch
    end
end

D_save = fullfile(Dsave,['complete/individual']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['complete/individual'],side);
if ~isdir(D_save)
    mkdir(D_save);
end 
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    for g=1:10
    gyrus=num2str(g);
    fname = fullfile(D_load,['HG_',side,'_cg',gyrus,'.tif'])
    fname2 = fullfile(D_save,['HG_',side,'_', subjectsID{isub},'_cg',gyrus, '.tif']) 
    copyfile(fname,fname2)
    end
    catch
    end
end
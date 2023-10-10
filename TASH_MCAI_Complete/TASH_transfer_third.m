function TASH_transfer_third(side,Dir,Dsave)

subjectsID = TASH_DefineSubjects;
D_save = fullfile(Dsave,['third']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['third'],side);
if ~isdir(D_save)
    mkdir(D_save);
end
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    fname = fullfile(D_load,['HG_',side,'_1thirds.tif'])
    fname2 = fullfile(D_save,['HG_',side,'_thirds_', subjectsID{isub}, '.tif']) 
    copyfile(fname,fname2)
    catch
    end
end

D_save = fullfile(Dsave,['third/individual']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['third/individual'],side);
if ~isdir(D_save)
    mkdir(D_save);
end
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    for g=1:7
    gyrus=num2str(g);
    fname = fullfile(D_load,['HG_',side,'_1thirds',gyrus,'.tif'])
    fname2 = fullfile(D_save,['HG_',side,'_1thirds_', subjectsID{isub},'_',gyrus, '.tif']) 
    copyfile(fname,fname2)
    end
    catch
    end
end
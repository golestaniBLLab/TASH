function TASH_transfer_half(side,Dir,Dsave)

subjectsID = TASH_DefineSubjects;
D_save = fullfile(Dsave,['half']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['half'],side);
if ~isdir(D_save)
    mkdir(D_save);
end
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    fname = fullfile(D_load,['HG_',side,'_half.tif'])
    fname2 = fullfile(D_save,['HG_',side,'_half_', subjectsID{isub}, '.tif']) 
    copyfile(fname,fname2)
    catch
    end
end

D_save = fullfile(Dsave,['half/individual']);
if ~isdir(D_save)
    mkdir(D_save);
end
D_save = fullfile(Dsave,['half/individual'],side);
if ~isdir(D_save)
    mkdir(D_save);
end
for isub = 1:length(subjectsID)
    try
    D_load = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    for g=1:7
    gyrus=num2str(g);
    fname = fullfile(D_load,['HG_',side,'_half',gyrus,'.tif'])
    fname2 = fullfile(D_save,['HG_',side,'_half',gyrus,'_', subjectsID{isub}, '.tif']) 
    copyfile(fname,fname2)
    end
    catch
    end
end
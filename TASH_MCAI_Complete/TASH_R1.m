function R1_mean = TASH_R1(side)

[subjectsID, Dir, Dsave] = TASH_DefineSubjects;

for isub = 1:length(subjectsID)
    try
    %% directory where results will be saved --> change for new data
    D_save = fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches');
    if ~isdir(D_save)
        mkdir(D_save);
    end
    
        suff = 'Complete';
       
        %% find the vertices that correspond to the faces to keep
        vrt_toKeep = [];%%%%%%%%unique(f_index(:));
        
        %% load R1ature
        fname = fullfile(Dir,subjectsID{isub}, 'surf', [side '.R1projfrac0.5.mgh']);
        fname2 = fullfile(Dir,subjectsID{isub}, 'surf', [side '.R1projfrac0.5']);
        disp(['loading ', fname]);
        
        [R1a, M, mr_parms] = load_mgh(fname);
        [R1b, M, mr_parms] = load_mgh(fname2);
        %% save new curvature file for this ROI                      
        %%%% Adding all complete ROIS
       %file_curv= fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches', [side, '_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1halfnew_g1.curv']);
       file_curv= fullfile(Dir,subjectsID{isub},'RestrictedFlatPatches', [side, '_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all.curv']);
       disp(['loading ', file_curv]);
       curv = read_curv(file_curv);
       try
       R1_HG=mean(R1a(curv<0));
       catch
       R1_HG=mean(R1b(curv<0));
       end
       R1_mean(isub,1)=R1_HG; 
 
   catch       
   end
end

end
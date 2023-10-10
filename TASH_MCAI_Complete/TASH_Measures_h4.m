function [lh,rh]=TASH_Measures_h4(Dir,lh,rh)

subjectsID = TASH_DefineSubjects;
gyrus=4;
    
for isub = 1:length(subjectsID)
    
    try
    D_load = fullfile(Dir,subjectsID{isub},'Volume');
    fname = fullfile(D_load,['lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4_label']);
    fid = fopen(fname);
    for i=1:53
    fgetl(fid);
    end
    resp= textscan(ans,'lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.label %f %f %f %f %f %f %f %f %f');
    lh.Volume(isub,gyrus)=resp{3};
    lh.Area(isub,gyrus)=resp{2};
    lh.ThickAvg(isub,gyrus)=resp{4};
    lh.ThickStd(isub,gyrus)=resp{5};
    lh.MeanCurv(isub,gyrus)=resp{6};
    lh.GausCurv(isub,gyrus)=resp{7};
    lh.FoldInd(isub,gyrus)=resp{8};
    lh.CurvInd(isub,gyrus)=resp{9};
    fclose('all');
    catch
    end
  
    try
    D_load = fullfile(Dir,subjectsID{isub},'Volume');
    fname = fullfile(D_load,['rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4_label']);
    fid = fopen(fname);
    for i=1:53
    fgetl(fid);
    end
    resp= textscan(ans,'rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.label %f %f %f %f %f %f %f %f %f');
    rh.Volume(isub,gyrus)=resp{3};
    rh.Area(isub,gyrus)=resp{2};
    rh.ThickAvg(isub,gyrus)=resp{4};
    rh.ThickStd(isub,gyrus)=resp{5};
    rh.MeanCurv(isub,gyrus)=resp{6};
    rh.GausCurv(isub,gyrus)=resp{7};
    rh.FoldInd(isub,gyrus)=resp{8};
    rh.CurvInd(isub,gyrus)=resp{9};
    fclose('all');
    catch
    end
  
end


end
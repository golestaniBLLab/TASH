function MCAI=MCAI(gyrusN)
%  _____ ______   ________  ________  ___     
%|\   _ \  _   \|\   ____\|\   __  \|\  \    
%\ \  \\\__\ \  \ \  \___|\ \  \|\  \ \  \   
% \ \  \\|__| \  \ \  \    \ \   __  \ \  \  
%  \ \  \    \ \  \ \  \____\ \  \ \  \ \  \ 
%   \ \__\    \ \__\ \_______\ \__\ \__\ \__\
%    \|__|     \|__|\|_______|\|__|\|__|\|__|
%
% Input: 
%        D_load - folder containg the TASH output aka .tif images
% Output:
%         MCAI - output of concavity in the different directions. (see MCAI_directed for full details)
disp(' _____ ______   ________  ________  ___')
disp('|\   _ \  _   \|\   ____\|\   __  \|\  \	  ')   
disp('\ \  \\\__\ \  \ \  \___|\ \  \|\  \ \  \   ')
disp(' \ \  \\|__| \  \ \  \    \ \   __  \ \  \  ')
disp('  \ \  \    \ \  \ \  \____\ \  \ \  \ \  \ ')
disp('   \ \__\    \ \__\ \_______\ \__\ \__\ \__\')
disp('    \|__|     \|__|\|_______|\|__|\|__|\|__|')

TASHdir = getenv('TASH_DIR')

D_load=fullfile(TASHdir,'complete');

gyrusN

mkdir(fullfile(D_load,'MCAI_results'))
subjectsID = TASH_DefineSubjects;
    
for isub = 1:length(subjectsID)
    disp(['Running MCAI for subject:', subjectsID{isub}])
    
    try
    imageTIFF=['HG_lh_',subjectsID{isub},'_cg',gyrusN,'.tif'];
    fname = fullfile(D_load,'individual','lh',imageTIFF);
    tash = imread(fname);
    %imshow(tash(:,:,1)==9&tash(:,:,2)==9);
    hg=zeros(600,600);
    for i=1:600
        for j=1:600
            if tash(i,j,1)==9 && tash(i,j,2)==9
                hg(i,j)=100;
            end
        end
    end
    [L_clusters, N_clusters] = bwlabeln(hg);
    if N_clusters>1 
        S_clusters = histc(L_clusters(:),1:N_clusters);
        [~, indexC] = sort(S_clusters,'ascend');
        for ii = 1:length(indexC)-1
           hg(L_clusters==indexC(ii)) = 0;
        end
    end
    trace=bwboundaries(hg);
    f=figure('visible','off');
    plot(trace{1,1}(:,2),-trace{1,1}(:,1),'bo')
    plot_file=[D_load,'/MCAI_results/MCAI_TASH_lh_boundary_',subjectsID{isub},'g',gyrusN,'.jpg'];
    saveas(f,plot_file)
    [MCAI.MCAI_lh_total(isub,:), MCAI.MCAI_lh_lat(isub,:), MCAI.MCAI_lh_med(isub,:), 		   MCAI.MCAI_lh_ant(isub,:), MCAI.MCAI_lh_post(isub,:), MCAI.MCAI_lh_antlat(isub,:), MCAI.MCAI_lh_latpost(isub,:), MCAI.MCAI_lh_postmed(isub,:), MCAI.MCAI_lh_medant(isub,:), MCAI.MCAI_8_antlat_lh(isub,:), MCAI.MCAI_8_latant_lh(isub,:), MCAI.MCAI_8_latpost_lh(isub,:), MCAI.MCAI_8_postlat_lh(isub,:), MCAI.MCAI_8_postmed_lh(isub,:), MCAI.MCAI_8_medpost_lh(isub,:), MCAI.MCAI_8_medant_lh(isub,:), MCAI.MCAI_8_antmed_lh(isub,:)] = MCAI_directed(hg,'lh');
    catch ME
       
       error('Someting wrong in the left hemi')
       rethrow(ME)
       
    end
    
    try
    imageTIFF=['HG_rh_',subjectsID{isub},'_cg',gyrusN,'.tif'];
    fname = fullfile(D_load,'individual','rh',imageTIFF);
    tash = imread(fname);
    %imshow(tash(:,:,1)==9&tash(:,:,2)==9);
    hg=zeros(600,600);
    for i=1:600
        for j=1:600
            if tash(i,j,1)==9 && tash(i,j,2)==9
                hg(i,j)=100;
            end
        end
    end
    [L_clusters, N_clusters] = bwlabeln(hg);
    if N_clusters>1
        S_clusters = histc(L_clusters(:),1:N_clusters);
        [~, indexC] = sort(S_clusters,'ascend');
        for ii = 1:length(indexC)-1
           hg(L_clusters==indexC(ii)) = 0;
        end
    end
    trace=bwboundaries(hg);
    f=figure('visible','off');
    plot(trace{1,1}(:,2),-trace{1,1}(:,1),'bo')
    plot_file=[D_load,'/MCAI_results/MCAI_TASH_rh_boundary_',subjectsID{isub},'g',gyrusN,'.jpg'];
    saveas(f,plot_file)
    [MCAI.MCAI_rh_total(isub,:), MCAI.MCAI_rh_lat(isub,:), MCAI.MCAI_rh_med(isub,:), MCAI.MCAI_rh_ant(isub,:), MCAI.MCAI_rh_post(isub,:), MCAI.MCAI_rh_antlat(isub,:), MCAI.MCAI_rh_latpost(isub,:), MCAI.MCAI_rh_postmed(isub,:), MCAI.MCAI_rh_medant(isub,:), MCAI.MCAI_8_antlat_rh(isub,:), MCAI.MCAI_8_latant_rh(isub,:), MCAI.MCAI_8_latpost_rh(isub,:), MCAI.MCAI_8_postlat_rh(isub,:), MCAI.MCAI_8_postmed_rh(isub,:), MCAI.MCAI_8_medpost_rh(isub,:), MCAI.MCAI_8_medant_rh(isub,:), MCAI.MCAI_8_antmed_rh(isub,:)] = MCAI_directed(hg,'rh');
    catch
    
    	error('Someting wrong in the right hemi')
        rethrow(ME)
    	
    end

end

save([D_load,'/MCAI_results/MCAI_TASH_complete_g',gyrusN,'_res.mat'],'MCAI')

%% generating tables for dominant direction - by GD

direction={'lat','med','ant','post'};
hemi={'lh','rh'};

% filling left hemi
tempoTable=MCAI.MCAI_lh_total(:,1);
LABELS{1}='sub';
LABELS{2}='MCAI_lh_total_dom';
cnt=3;

for j=1:length(direction)
    tempoTable=[tempoTable, eval(['MCAI.MCAI_',hemi{1},'_',direction{j},'(:,1)'])];
    LABELS{cnt}=['MCAI_',hemi{1},'_',direction{j},'_dom'];
    cnt=cnt+1;
end

% filling right hemi
tempoTable=[tempoTable,MCAI.MCAI_rh_total(:,1)];
LABELS{cnt}='MCAI_rh_total_dom';
cnt=cnt+1;

for j=1:length(direction)
    tempoTable=[tempoTable, eval(['MCAI.MCAI_',hemi{2},'_',direction{j},'(:,1)'])];
    LABELS{cnt}=['MCAI_',hemi{2},'_',direction{j},'_dom'];
    cnt=cnt+1;
end


T = [array2table(subjectsID'),array2table(tempoTable)];
T.Properties.VariableNames = LABELS;

writetable(T,[D_load,'/MCAI_results/MCAI_table_g',gyrusN,'.csv'])









function GD_to_csv_all_gyri(val)

[sub, Dir, Dsave] = TASH_DefineSubjects();
%Dsave='/home/sitara22/data/team/sitara22/HCP_preprocessed/TASH_output/'

% selecting the measure to use... here I am using all of them
measure_toKeep={'Volume','Area','ThickAvg','ThickStd','MeanCurv','GausCurv','FoldInd','CurvInd'};

compG = load(fullfile(Dsave,'TASH_measures_complete.mat'));

Output_dataO=[];
cnt=2;
LABELS={'subject'};

for i=1:length(measure_toKeep)
    for j={'lh','rh'}
        Output_dataO=cat(2,Output_dataO,eval(['compG.',char(j),'.',char(measure_toKeep{i})]));
        LABELS{cnt}=['TASH_',char(j),'.',char(measure_toKeep{i})];
        cnt=cnt+1;
    end
end

%%

allG=load(fullfile(Dsave,'TASH_measures_complete_individual.mat'));

Output_dataG=[];

for i=1:length(measure_toKeep)
    for j={'lh','rh'}
        tempGy=eval(['allG.',char(j),'.',char(measure_toKeep{i})]);
        Ngy=size(tempGy,2);
        for k=1:Ngy
            Output_dataG=cat(2,Output_dataG,tempGy(:,k));
            LABELS{cnt}=['TASH_',num2str(k),'g_',char(j),'.',char(measure_toKeep{i})];
            cnt=cnt+1;
        end
    end
end

%%
Output_data=[Output_dataO Output_dataG];
%Obtain the full path name of the file
T = [array2table(sub'),array2table(Output_data)];

T.Properties.VariableNames = LABELS;

writetable(T,[Dsave,'TASH_only_table.csv'])

%% reading from qdec
if val>1
    measuresAparc={'volume', 'thickness', 'thicknessstd', 'meancurv', 'gauscurv', 'foldind', 'curvind'};
    HEMI={'lh','rh'};
    
    for i = 1:length(measuresAparc)
        for j=1:length(HEMI)
            Ttemp=readtable(fullfile(Dsave,['qdec_',measuresAparc{i},'_',HEMI{j},'_Destrieux.txt']));
            Ttemp = renamevars(Ttemp,[HEMI{j},'_aparc_a2009s_',measuresAparc{i}],'subject');
            T = join(T,Ttemp);
        end
    end
    
    measuresAseg={'volume', 'Area_mm2'};
    
    for i = 1:length(measuresAseg)
        
        Ttemp=readtable(fullfile(Dsave,['qdec_',measuresAseg{i},'_asegstat.txt']));
        Ttemp = renamevars(Ttemp,['Measure_',measuresAseg{i}],'subject');
        T = join(T,Ttemp);
        
    end
    
    
    writetable(T,[Dsave,'TASH_complete_table.csv'])
end
end

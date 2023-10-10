function [MCAI_total, MCAI_lat, MCAI_med, MCAI_ant, MCAI_post, MCAI_antlat, MCAI_latpost, MCAI_postmed, MCAI_medant, MCAI_8_antlat, MCAI_8_latant, MCAI_8_latpost, MCAI_8_postlat, MCAI_8_postmed, MCAI_8_medpost, MCAI_8_medant, MCAI_8_antmed] = MCAI_directed(im_ROI,side)
% Function to get the MCAI measures.
% Input: 
%        im_ROI - image mask of the gyrus
%        side - side of the brasin (left lh or right rh)
% Output:
%         MCAI_total        - total MCAI value 
% 4 Orientations
%          , - ~ ~ ~ - ,
%      , '       |       ' ,
%    ,           |           ,
%   ,            |            ,
%  ,             |             ,
%  , ___________ . ___________ ,
%  ,             |             ,
%   ,            |            ,
%    ,           |           ,
%      ,         |        ,'
%        ' - , _ |_ _ , '
%         
%         MCAI_lat          - Lateral " "
%         MCAI_med          - Medial " "
%         MCAI_ant          - Anterior " "
%         MCAI_post         - Posterior " "
%         MCAI_antlat       - AnteriorLateral " "
%         MCAI_latpost      - LateralPosterior " "
%         MCAI_postmed      - PosteriorMedial " "
%         MCAI_medant       - MedialAnterior " "
% -----------------------------------------------
% 8 orientations
%          , - ~ ~ ~ - ,
%      , '       |       ' ,
%    ,    \      |      /    ,
%   ,       \    |    /       ,
%  ,          \  |  /          ,
%  , ___________\./___________ ,
%  ,            /|\            ,
%   ,         /  |  \         ,
%    ,      /    |    \      ,
%      ,  /      |      \ ,'
%        ' - , _ |_ _ , '
%         MCAI_8_antlat     - Lateral " "
%         MCAI_8_latant     - Lateral " "
%         MCAI_8_latpost    - Lateral " "
%         MCAI_8_postlat    - Lateral " "
%         MCAI_8_postmed    - Lateral " "
%         MCAI_8_medpost    - Lateral " "
%         MCAI_8_medant     - Lateral " "
%         MCAI_8_antmed     - Lateral " "


[L_clusters, N_clusters] = bwlabeln(im_ROI);
if N_clusters>1
    S_clusters = histc(L_clusters(:),1:N_clusters);
    [~, indexC] = sort(S_clusters,'ascend');
    for ii = 1:length(indexC)-1
        im_ROI(L_clusters==indexC(ii)) = 0;
    end
end

trace=bwboundaries(im_ROI);
im_ROI=zeros(size(im_ROI,1),size(im_ROI,2));
bound=trace{1,1};
for i=1:size(bound,1)
    im_ROI(bound(i,1),bound(i,2))=200;
end

x=[];
y=[];
for i=1:size(bound,1)
    if im_ROI(bound(i,1),bound(i,2))==200
        x=[x bound(i,1)];
        y=[y bound(i,2)];
    end
end
[k, ~] = convhull(x,y,'simplify',true);
h_concave=zeros(1,size(k,1)-1);
h_concave_lat=zeros(1,size(k,1)-1);
h_concave_med=zeros(1,size(k,1)-1);
h_concave_ant=zeros(1,size(k,1)-1);
h_concave_post=zeros(1,size(k,1)-1);
h_concave_obli_antlat=zeros(1,size(k,1)-1);
h_concave_obli_latpost=zeros(1,size(k,1)-1);
h_concave_obli_postmed=zeros(1,size(k,1)-1);
h_concave_obli_medant=zeros(1,size(k,1)-1);
h_concave_8_antlat=zeros(1,size(k,1)-1);
h_concave_8_latant=zeros(1,size(k,1)-1);
h_concave_8_latpost=zeros(1,size(k,1)-1);
h_concave_8_postlat=zeros(1,size(k,1)-1);
h_concave_8_postmed=zeros(1,size(k,1)-1);
h_concave_8_medpost=zeros(1,size(k,1)-1);
h_concave_8_medant=zeros(1,size(k,1)-1);
h_concave_8_antmed=zeros(1,size(k,1)-1);
h_total=0;

for i=1:size(k,1)-1
    ini=k(i+1)+1;
    if k(i)==1
        final=size(x,2)-1;
    else
        final=k(i)-1;
    end
    
    
    for ii=ini:final
        area_triangle_c=0;
        try
            [~, area_triangle_c] = convhull([x(k(i)) x(k(i+1)) x(ii)],[y(k(i)) y(k(i+1)) y(ii)]);
            h_concave_local = 2*area_triangle_c ./ (( (x(k(i+1))-x(k(i)))^2 + (y(k(i+1))-y(k(i)))^2 ) ^.5);
            if h_concave_local > h_concave(i)
                h_concave(i) = h_concave_local;
                direction=-displacement(1)./displacement(2);
                if isnan(direction)
                    if displacement(1)<0
                        direction=99999999;
                    else
                        direction=-99999999;
                    end
                end
                %angle(i)=atand(direction);
                %if displacement(2)<0
                %    angle(i)=angle(i)+180;
                %end
            end
            if h_concave(i) <= 1
                h_concave(i) = 0;
            end
        catch
        end
    end
    
    
    displacement=[round(mean(x(ini:final))) round(mean(y(ini:final)))];
    %base_1=[x(k(i)) y(k(i))];
    %base_2=[x(k(i+1)) y(k(i+1))];
    base=[round(mean([x(k(i)) x(k(i+1))])) round(mean([y(k(i)) y(k(i+1))]))]; %mean(base_1,base_2);
    displacement=displacement-base;
    base_size=[abs(x(k(i))-x(k(i+1))) abs(y(k(i))-y(k(i+1)))];
    
    if strcmp(side,'lh')
        if base_size(2)>=base_size(1)
            if displacement(1)<=0
                h_concave_lat(i)=h_concave(i);
                %angle_lat(i)=atand(-displacement(1)./displacement(2));
            else
                h_concave_med(i)=h_concave(i);
                %angle_med(i)=atand(-displacement(1)./displacement(2));
            end
        else
            if displacement(2)>=0
                h_concave_ant(i)=h_concave(i);
                %angle_lat(i)=atand(-displacement(1)./displacement(2));
            else
                h_concave_post(i)=h_concave(i);
                %angle_med(i)=atand(-displacement(1)./displacement(2));
            end
        end
        if displacement(1)<=0 && displacement(2)<0
            h_concave_obli_latpost(i)=h_concave(i);
        elseif displacement(1)<0 && displacement(2)>=0
            h_concave_obli_antlat(i)=h_concave(i);
        elseif displacement(1)>0 && displacement(2)<=0
            h_concave_obli_postmed(i)=h_concave(i);
        elseif displacement(1)>=0 && displacement(2)>0
            h_concave_obli_medant(i)=h_concave(i);
        end
        if displacement(1)<=0 && displacement(2)<0
            if base_size(2)>=base_size(1)
                h_concave_8_latpost(i)=h_concave(i);
            else
                h_concave_8_postlat(i)=h_concave(i);
            end
        elseif displacement(1)<0 && displacement(2)>=0
            if base_size(2)>=base_size(1)
                h_concave_8_latant(i)=h_concave(i);
            else
                h_concave_8_antlat(i)=h_concave(i);
            end
        elseif displacement(1)>0 && displacement(2)<=0
            if base_size(2)>=base_size(1)
                h_concave_8_medpost(i)=h_concave(i);
            else
                h_concave_8_postmed(i)=h_concave(i);
            end
        elseif displacement(1)>=0 && displacement(2)>0
            if base_size(2)>=base_size(1)
                h_concave_8_medant(i)=h_concave(i);
            else
                h_concave_8_antmed(i)=h_concave(i);
            end
        end
    end
    
    if strcmp(side,'rh')
        if base_size(2)>=base_size(1)
            if displacement(1)<=0
                h_concave_lat(i)=h_concave(i);
                %angle_lat(i)=atand(-displacement(1)./displacement(2));
            else
                h_concave_med(i)=h_concave(i);
                %angle_med(i)=atand(-displacement(1)./displacement(2));
            end
        else
            if displacement(2)<=0
                h_concave_ant(i)=h_concave(i);
                %angle_ant(i)=atand(-displacement(1)./displacement(2));
            else
                h_concave_post(i)=h_concave(i);
                %angle_post(i)=atand(-displacement(1)./displacement(2));
            end
        end
        if displacement(1)<=0 && displacement(2)>0
            h_concave_obli_latpost(i)=h_concave(i);
        elseif displacement(1)<0 && displacement(2)<=0
            h_concave_obli_antlat(i)=h_concave(i);
        elseif displacement(1)>0 && displacement(2)>=0
            h_concave_obli_postmed(i)=h_concave(i);
        elseif displacement(1)>=0 && displacement(2)<0
            h_concave_obli_medant(i)=h_concave(i);
        end
        if displacement(1)<=0 && displacement(2)>0
            if base_size(2)>=base_size(1)
                h_concave_8_latpost(i)=h_concave(i);
            else
                h_concave_8_postlat(i)=h_concave(i);
            end
        elseif displacement(1)<0 && displacement(2)<=0
            if base_size(2)>=base_size(1)
                h_concave_8_latant(i)=h_concave(i);
            else
                h_concave_8_antlat(i)=h_concave(i);
            end
        elseif displacement(1)>0 && displacement(2)>=0
            if base_size(2)>=base_size(1)
                h_concave_8_medpost(i)=h_concave(i);
            else
                h_concave_8_postmed(i)=h_concave(i);
            end
        elseif displacement(1)>=0 && displacement(2)<0
            if base_size(2)>=base_size(1)
                h_concave_8_medant(i)=h_concave(i);
            else
                h_concave_8_antmed(i)=h_concave(i);
            end
        end
    end
    
    
    for ii=1:size(x,2)-1
        try
            [~, area_triangle_t] = convhull([x(k(i)) x(k(i+1)) x(ii)],[y(k(i)) y(k(i+1)) y(ii)]);
            h_total = max(h_total , 2*area_triangle_t ./ (( (x(k(i+1))-x(k(i)))^2 + (y(k(i+1))-y(k(i)))^2 ) ^.5) );
        catch
        end
    end
end
[h_concave_sorted,~]=sort(h_concave,'descend');
h_concave_ant_sorted=sort(h_concave_ant,'descend');
h_concave_med_sorted=sort(h_concave_med,'descend');
h_concave_lat_sorted=sort(h_concave_lat,'descend');
h_concave_post_sorted=sort(h_concave_post,'descend');
h_concave_obli_antlat_sorted=sort(h_concave_obli_antlat,'descend');
h_concave_obli_medant_sorted=sort(h_concave_obli_medant,'descend');
h_concave_obli_latpost_sorted=sort(h_concave_obli_latpost,'descend');
h_concave_obli_postmed_sorted=sort(h_concave_obli_postmed,'descend');
h_concave_8_antlat_sorted=sort(h_concave_8_antlat,'descend');
h_concave_8_latant_sorted=sort(h_concave_8_latant,'descend');
h_concave_8_latpost_sorted=sort(h_concave_8_latpost,'descend');
h_concave_8_postlat_sorted=sort(h_concave_8_postlat,'descend');
h_concave_8_postmed_sorted=sort(h_concave_8_postmed,'descend');
h_concave_8_medpost_sorted=sort(h_concave_8_medpost,'descend');
h_concave_8_medant_sorted=sort(h_concave_8_medant,'descend');
h_concave_8_antmed_sorted=sort(h_concave_8_antmed,'descend');

MCAI_total = h_concave_sorted(1:4) ./ h_total;
MCAI_ant = h_concave_ant_sorted(1:4) ./ h_total;
MCAI_med = h_concave_med_sorted(1:4) ./ h_total;
MCAI_lat = h_concave_lat_sorted(1:4) ./ h_total;
MCAI_post = h_concave_post_sorted(1:4) ./ h_total;

MCAI_antlat = h_concave_obli_antlat_sorted(1:4) ./ h_total;
MCAI_medant = h_concave_obli_medant_sorted(1:4) ./ h_total;
MCAI_latpost = h_concave_obli_latpost_sorted(1:4) ./ h_total;
MCAI_postmed = h_concave_obli_postmed_sorted(1:4) ./ h_total;
MCAI_8_antlat = h_concave_8_antlat_sorted(1:4) ./ h_total;
MCAI_8_latant = h_concave_8_latant_sorted(1:4) ./ h_total;
MCAI_8_latpost = h_concave_8_latpost_sorted(1:4) ./ h_total;
MCAI_8_postlat = h_concave_8_postlat_sorted(1:4) ./ h_total;
MCAI_8_postmed = h_concave_8_postmed_sorted(1:4) ./ h_total;
MCAI_8_medpost = h_concave_8_medpost_sorted(1:4) ./ h_total;
MCAI_8_medant = h_concave_8_medant_sorted(1:4) ./ h_total;
MCAI_8_antmed = h_concave_8_antmed_sorted(1:4) ./ h_total;
end

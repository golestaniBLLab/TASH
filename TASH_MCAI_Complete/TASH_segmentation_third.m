clear all
[sub, Dir, Dsave] = TASH_DefineSubjects;
side='lh';
% TASH_curv(side,Dir);
% TASH_opening(side,Dir);
% TASH_threshold(side,Dir);
% TASH_grow(side,Dir);
parfor id=1:length(sub)
TASH_cluster_third(side,Dir,sub(id));
end
side='rh';
% TASH_curv(side,Dir);
% TASH_opening(side,Dir);
% TASH_threshold(side,Dir);
% TASH_grow(side,Dir);
parfor id=1:length(sub)
TASH_cluster_third(side,Dir,sub(id));
end

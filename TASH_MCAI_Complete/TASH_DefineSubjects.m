function [sub, Dload, Dsave] = TASH_DefineSubjects


Dload = getenv('SUBJECTS_DIR');
listing = dir(Dload);
sub = {listing(3:end).name};
Index = find(contains(sub,'fsaverage'));
sub(Index)=[];

Dsave = getenv('TASH_DIR');

end
function [sub, Dload, Dsave] = TASH_DefineSubjects


Dload = getenv('SUBJECTS_DIR');
listing = dir(Dload);

 

% Get a logical vector that tells which is a directory.
dirFlags = [listing.isdir];
% Extract only those that are directories.
subFolders = listing(dirFlags); % A structure with extra info.

 

sub = {subFolders(3:end).name};
Index = find(contains(sub,'fsaverage'));
sub(Index)=[];

 

Dsave = getenv('TASH_DIR');

end

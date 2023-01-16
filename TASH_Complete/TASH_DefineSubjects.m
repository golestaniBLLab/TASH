function [sub, Dload, Dsave] = TASH_DefineSubjects


Dload = getenv('SUBJECTS_DIR');
listing = dir(Dload);
sub = {listing(3:end).name};

Dsave = getenv('TASH_DIR');

end
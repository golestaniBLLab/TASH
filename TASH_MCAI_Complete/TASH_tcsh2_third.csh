#!/bin/csh

#Define list of subjects
source TASH_DefineSubjects
foreach subj ($SUBJECTS)
  echo $subj

  set outD = $SUBJECTS_DIR/$subj/Volume
  mkdir -p $outD
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7_label $subj rh

  setenv outD "$SUBJECTS_DIR/$subj/RestrictedFlatPatches/"
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g_all.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h1.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g1.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h1.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h2.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g2.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h2.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h3.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g3.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h3.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h4.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g4.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h4.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h5.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g5.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h5.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h6.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g6.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h6.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_h7.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_1thirds_g7.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_h7.tcl

end


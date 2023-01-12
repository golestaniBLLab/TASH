#!/bin/csh

#Define list of subjects
source TASH_DefineSubjects
foreach subj ($SUBJECTS)
  echo $subj

  set outD = $SUBJECTS_DIR/$subj/Volume
  mkdir -p $outD
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4_label $subj rh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5_label $subj lh
  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9_label $subj rh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10.label -f $outD/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10_label $subj lh
#  mris_anatomical_stats -l $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10.label -f $outD/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10_label $subj rh

  setenv outD "$SUBJECTS_DIR/$subj/RestrictedFlatPatches/"
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g_all.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c1.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g1.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c1.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c2.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g2.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c2.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c3.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g3.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c3.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c4.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g4.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c4.tcl
  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c5.tcl
  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g5.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c5.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c6.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g6.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c6.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c7.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g7.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c7.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c8.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g8.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c8.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c9.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g9.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c9.tcl
#  tksurfer $subj lh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/lh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10.w -fminmax 0.00001 30 -tcl TASH_SaveImage_lh_c10.tcl
#  tksurfer $subj rh inflated -curv -overlay $SUBJECTS_DIR/$subj/RestrictedFlatPatches/rh_masked_thr01_Complete_expandedLT_Complete_erosion_dilatation_2_complete_g10.w -fminmax 0.00001 30 -tcl TASH_SaveImage_rh_c10.tcl
end


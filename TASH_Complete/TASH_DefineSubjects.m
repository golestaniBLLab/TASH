function [sub, Dload, Dsave] = TASH_DefineSubjects
%sub = {'abad_A', 'abe_N', 'ac_N', 'adh_N', 'ang_N', 'arfken_cello_P', 'bbu_saxophone_A', 'bekor_voice_A', 'blu_conductor_P', 'bru_trumpet_P', 'cmc_piano_P', 'cs_viola_P', 'de_organ_A', 'deg_trumpet_P', 'eng_N', 'fn_timpani_P', 'fu_N', 'GL_A', 'goe_organ_P', 'ham_violin_P', 'hold_viola_P', 'huk_A', 'jak_N', 'jmi_violin_P', 'jmo_N', 'juehe_N', 'kager_N', 'kamm_N', 'kuhn_N', 'lale_A', 'llue_N', 'lore_N', 'mar_A', 'mbr_N', 'md_violin_P', 'men_N', 'mey_piano_A', 'mpc_piano_P', 'mre_N', 'mv_cello_P', 'palm_flute_P', 'rbs_violon_P', 'rsw_N', 'rud_tuba_P', 'sg_doublebass_P', 'skn_N', 'sloe_A', 'stras_cello_P', 'stro_N', 'becra_A', 'benzi_A', 'beser_piano_A', 'davlec_tuba_P', 'come_conductor_P', 'dorlee_organ_P', 'fabdre_tuba_P', 'flodi_drums_A', 'jenki_N', 'jofan_organ_P', 'jokas_cello_P', 'juesch_N', 'kobo_piano_P', 'koger_trumpet_A', 'moste_cello_P', 'nicmei_voice_P', 'phipo_organ_P', 'raimbo_piano_A', 'stesei_git_A', 'stiki_N', 'valber_conductor_P', 'vicsch_piano_P', 'wogro_git_A', 'wolsa_voice_P', 'wolst_geige_A', 'Aina_P', 'Alelu_A', 'Anag_P', 'Anbin_A', 'Ancso_P', 'Andro_A', 'Andsch_A', 'Angenem_A', 'Ankick_N', 'Anmand_A', 'Audro_A', 'Axwet_A', 'Beeng_A', 'Benkle_A', 'Besch_P', 'Bezei_A', 'Chriju_P', 'Chrisa_N', 'Ckoe_A', 'Cmar_P', 'Cmgrab_P', 'Cohoe_A', 'Coroe_A', 'Coroes_P', 'Davtre_A', 'Dogel_P', 'Dommu_A', 'Ejak_A', 'Ejele_P', 'Eldef_P', 'Elho_P', 'Ells_N', 'Este_P', 'Fabzi_A', 'Felbra_A', 'Floha_P', 'Frawoe_A', 'Frefa_P', 'Frima_A', 'Frizi_A', 'Gemu_P', 'Habot_N', 'Hanwa_A', 'Hdud_N', 'Heila_A', 'Hjrot_N', 'Irand_A', 'Isolv_P', 'Jaetan_P', 'Janad_N', 'Janoe_A', 'Janpo_A', 'Jgeh_A', 'Jobo_N', 'Joesch_A', 'Joli_A', 'Joma_P', 'Josch_A', 'Juham_N', 'Kamja_A', 'Karwe_A', 'Katlu_A', 'Katre_N', 'Kdrot_A', 'Kifre_A', 'Klazwe_N', 'Kyras_A', 'Lengo_A', 'Lenpra_P', 'Lusch_A', 'Machri_A', 'Maham_A', 'Maisi_N', 'Mame_P', 'Masch_P', 'Matkoe_A', 'Mawahe_P', 'Mawe_A', 'Maxba_A', 'Megbe_A', 'Olsch_N', 'Peru_A', 'Pesch_P', 'Phise_A', 'Phiwo_P', 'Phue_P', 'Resch_P', 'Rlov_P', 'Robeu_A', 'Sikoe_P', 'Skh_A', 'Sobre_P', 'Stebu_P', 'Steha_A', 'Svet_A', 'Thess_A', 'Thlang_P', 'Tigro_A', 'Tilau_N', 'Ulter_P', 'Vanslu_A', 'Vasch_A', 'Visch_A', 'Wdeg_P', 'Wiwood_P', 'Wosch_P', 'Yaesz_P'};
sub = {'bbu_saxophone_A'};%, 'mni_icbm_00202_t1','mni_icbm_00205_t1','mni_icbm_00209_t1','mni_icbm_00216_t1','mni_icbm_00224_t1','mni_icbm_00227_t1','mni_icbm_00229_t1','mni_icbm_00243_t1','mni_icbm_00246_t1','mni_icbm_00259_t1','mni_icbm_00260_t1','mni_icbm_00302_t1','mni_icbm_00303_t1','mni_icbm_00318_t1','mni_icbm_00321_t1','mni_icbm_00325_t1','mni_icbm_00330_t1','mni_icbm_00339_t1','mni_icbm_00340_t1','mni_icbm_00350_t1','Orsay_9319','Orsay_9324','Orsay_9335','Orsay_9340','Orsay_9341','Orsay_9344','Orsay_9355','Orsay_9356','Orsay_9362','Orsay_9376','Orsay_9378','Orsay_9380','Orsay_9381','Orsay_9383','Orsay_9396','Orsay_9398','Orsay_9399','Orsay_9400','Orsay_9405','Orsay_9407','Orsay_9430'};
Dload = '/home/test_fs_7p2/freesurfer/subjects';
Dsave = '/home/test_fs_7p2/TASH_results_francesco/';
end
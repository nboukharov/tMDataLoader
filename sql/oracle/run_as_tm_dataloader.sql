------------------------------------------------------------------------------
-- Run this script as user TM_DATALOADER
------------------------------------------------------------------------------
@@procedures/STRING_TABLE_T.sql
@@procedures/ANALYZE_TABLE.sql
@@procedures/I2B2_ADD_LV_PARTITION.sql
@@procedures/I2B2_DELETE_LV_PARTITION.sql
@@procedures/I2B2_REBUILD_GLOBAL_INDEXES.sql
@@procedures/I2B2_UNUSABLE_GLOBAL_INDEXES.sql
@@procedures/I2B2_BUILD_METADATA_XML.sql
@@procedures/I2B2_ADD_NODE.sql
@@procedures/I2B2_ADD_NODES.sql
@@procedures/I2B2_ADD_PLATFORM.sql
@@procedures/I2B2_ADD_ROOT_NODE.sql
@@procedures/I2B2_BACKOUT_TRIAL.sql
@@procedures/I2B2_CREATE_FULL_TREE.sql
@@procedures/I2B2_CREATE_CONCEPT_COUNTS.sql
@@procedures/I2B2_REMOVE_EMPTY_PARENT_NODES.sql
@@procedures/I2B2_DELETE_ALL_NODES.sql
@@procedures/I2B2_DELETE_ALL_DATA.sql
@@procedures/I2B2_FILL_IN_TREE.sql
@@procedures/I2B2_LOAD_CLINICAL_DATA.sql
@@procedures/I2B2_LOAD_PROTEOMICS_ANNOT.sql
@@procedures/I2B2_LOAD_SECURITY_DATA.sql
@@procedures/I2B2_LOAD_STUDY_METADATA.sql
@@procedures/I2B2_MOVE_STUDY_BY_PATH.sql
@@procedures/i2b2_mrna_index_maint.sql
@@procedures/I2B2_PROCESS_MRNA_DATA.sql
@@procedures/I2B2_PROCESS_SNP_DATA.sql
@@procedures/I2B2_PROCESS_VCF_DATA.sql
@@procedures/I2B2_PROCESS_RNA_SEQ_DATA.sql
@@procedures/I2B2_RBM_ZSCORE_CALC.sql
@@procedures/I2B2_RNA_SEQ_ANNOTATION.sql
@@procedures/I2B2_PROCESS_PROTEOMICS_DATA.sql
@@procedures/I2B2_PROCESS_ACGH_DATA.sql
@@procedures/I2B2_LOAD_CHROM_REGION.sql
@@procedures/I2B2_PROCESS_QPCR_MIRNA_DATA.sql
@@procedures/I2B2_MIRNA_ZSCORE_CALC.sql
@@procedures/I2B2_PROCESS_GENERIC_SERIAL_HDDDATA.sql
@@procedures/I2B2_PROCESS_GWAS_PLINK_DATA
@@procedures/parse_nth_value.sql
@@procedures/cz_start_audit.sql
@@procedures/cz_end_audit.sql
@@procedures/cz_write_audit.sql
@@procedures/cz_write_error.sql
@@procedures/cz_error_handler.sql
@@procedures/czx_start_audit.sql
@@procedures/czx_write_audit.sql
@@procedures/czx_write_error.sql
@@procedures/czx_end_audit.sql
@@procedures/czx_error_handler.sql
@@procedures/is_date.sql
@@procedures/is_number.sql
@@procedures/i2b2_proteomics_zscore_calc.sql
@@procedures/i2b2_rna_seq_zscore_calc.sql
@@procedures/i2b2_mrna_zscore_calc.sql
@@procedures/i2b2_mrna_index_maint.sql
@@procedures/i2b2_create_security_for_trial.sql
@@procedures/i2b2_delete_1_node.sql
@@procedures/i2b2_load_annotation_deapp.sql
@@procedures/i2b2_load_mirna_annot_deapp.sql
@@procedures/i2b2_metabolomics_zscore_calc.sql
@@procedures/i2b2_process_metabolomic_data.sql
@@procedures/i2b2_load_metabolomics_annot.sql
@@procedures/I2B2_PROCESS_SERIAL_HDD_DATA.sql
@@procedures/i2b2_rbm_inc_sub_zscore.sql
@@procedures/i2b2_rbm_inc_zscore_calc.sql
@@procedures/i2b2_load_rbm_data.sql
@@procedures/i2b2_load_rbm_annotation.sql
@@procedures/i2b2_load_rbm_inc_data.sql
@@procedures/COPY_SECURITY_FROM_DIFF_STUDY.sql

@show_invalid.sql -- compiles invalids, resolving them or highlighting problems

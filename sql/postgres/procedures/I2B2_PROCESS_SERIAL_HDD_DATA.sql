CREATE OR REPLACE FUNCTION i2b2_process_serial_hdd_data(studyid character varying, currentjobid numeric DEFAULT NULL::numeric) RETURNS numeric
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path FROM CURRENT
    AS $$
Declare
	--Audit variables
	newJobFlag NUMERIC(1);
	databaseName character varying(100);
	procedureName character varying(100);
	jobID numeric(18,0); 
	stepCt numeric(18,0); 
	gplId	character varying(100);
	rtnCd integer;
	pCount		integer;
	errorNumber character varying;
	errorMessage character varying;
	rowCt integer;

BEGIN
	stepCt := 0;
	--Set Audit Parameters
	newJobFlag := 0; -- False (Default)
	jobID := currentJobID;

	databaseName := current_schema();
	procedureName := 'I2B2_PROCESS_SERIAL_HDD_DATA';

	--Audit JOB Initialization
	--If Job ID does not exist, then this is a single procedure run and we need to create it
	IF(jobID IS NULL or jobID < 1)
	THEN
		newJobFlag := 1; -- True
		select cz_start_audit (procedureName, databaseName) into jobID;
	END IF;

	stepCt := stepCt + 1;
	select cz_write_audit(jobId,databaseName,procedureName,'Starting I2B2_PROCESS_SERIAL_HDD_DATA',0,stepCt,'Done') into rtnCd;

	begin

		update i2b2metadata.i2b2 ib set c_metadataxml = mxd.c_metadataxml
		from (select study_id, category_cd, c_metadataxml from lt_src_mrna_xml_data) mxd
		where ib.c_name = mxd.category_cd and ib.sourcesystem_cd = mxd.study_id;

		exception
		when others then
			errorNumber := SQLSTATE;
			errorMessage := SQLERRM;
			perform cz_error_handler (jobID, procedureName, errorNumber, errorMessage);
			perform cz_end_audit (jobID, 'FAIL');
			return -16;
	end;

	get diagnostics rowCt := ROW_COUNT;
	pCount := rowCt;

	stepCt := stepCt + 1; get diagnostics rowCt := ROW_COUNT;
	perform cz_write_audit(jobId,databaseName,procedureName,'Update records in i2b2metadata.i2b2',pCount,stepCt,'Done');
	
	stepCt := stepCt + 1;
	perform cz_write_audit(jobId,databaseName,procedureName,'End i2b2_process_serial_hdd_data',0,stepCt,'Done');
	
   ---Cleanup OVERALL JOB if this proc is being run standalone
  if newJobFlag = 1
	then
		perform cz_end_audit (jobID, 'SUCCESS');
	end if;

	return 0;

	exception
	when others then
		--Handle errors.
		perform cz_error_handler (jobID, procedureName, SQLSTATE, SQLERRM);
		--End Proc
		perform cz_end_audit (jobID, 'FAIL');
		return 16;

END;
$$;

package me.vectorx.spring.templates.bo.config.mapping;

import me.vectorx.spring.data.mapping.VxTableMapping;
import me.vectorx.spring.data.mapping.VxTableMappingModel;
import me.vectorx.spring.management.data.mapping.processor.UseFileCryptoTableMappingPostProcessor;
import me.vectorx.spring.management.data.mapping.processor.UseFileTemporaryUploadTableMappingPostProcessor;

@VxTableMapping(value = "file_g", tableName = "VECTORX_FILE_GRP", postProcessors = {
		UseFileCryptoTableMappingPostProcessor.class, UseFileTemporaryUploadTableMappingPostProcessor.class })
public class CustomFileGroupTableMappingModel extends VxTableMappingModel {
	public String fileGrpId = "FILE_GRP_ID";
	public String fileGrpNm = "FILE_GRP_NM";
	public String svPath = "SV_PATH";
	public String maxSz = "MAX_SZ";
	public String extenLmt = "EXTEN_LMT";
	public String dirStructCd = "DIR_STRUCT_CD";
	public String useYn = "USE_YN";
	public String delYn = "DEL_YN";
	public String fileNmSvMethCd = "FILE_NM_SV_METH_CD";
	public String fileCrytMethCd = "FILE_CRYT_METH_CD";
	public String webDefUrl = "WEB_DEF_URL";
	public String tmpUplUseYn = "TMP_UPL_USE_YN";
}

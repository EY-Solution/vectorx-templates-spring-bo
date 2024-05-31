package me.vectorx.spring.templates.bo.samples.temp;

import java.util.List;

import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.vectorx.spring.management.models.base.VxManagementBaseEntity;
import me.vectorx.spring.templates.bo.samples.code.VxSampleCodeEntity;

@Data
@EqualsAndHashCode(callSuper = false)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "sample용 Temp Entity")
public class VxTempEntity {

	private String plantCd;
	private String plantNm;
	private String companyNm;
	private String companyCd;
	private String plantNmAbbr;
	private String plantType;
	private String locationCd;
	private String plantCdNm;
	private String plantSectionCd;
	private String plantSectionNm;
	private String plantLocCd;
	private String plantLocNm;
	
	/**
	 * 검색
	 */
	private String[] plantCds;
	private String[] plantSectionCds;
	
	private List<VxTempEntity> VxTempEntityList;	 
}

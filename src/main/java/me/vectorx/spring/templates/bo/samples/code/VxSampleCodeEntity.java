package me.vectorx.spring.templates.bo.samples.code;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.vectorx.spring.data.validation.CrudGroups;
import me.vectorx.spring.data.validation.validators.TextValues;
import me.vectorx.spring.management.models.base.VxManagementBaseEntity;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.PositiveOrZero;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Data
@EqualsAndHashCode(callSuper = false)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "회원 정보 Entity")
public class VxSampleCodeEntity extends VxManagementBaseEntity {
	/**
	 * 그룹 코드
	 */
	@NotEmpty(message = "그룹코드는 필수 값입니다.", groups = {
			CrudGroups.Detail.class,
			CrudGroups.Add.class,
			CrudGroups.Edit.class,
			CrudGroups.Remove.class
	})
	@ApiModelProperty(value = "그룹 코드")
	private String grpCd;

	/**
	 * 상세 코드
	 */
	@NotEmpty(message = "상세코드는 필수 값입니다.", groups = {
			CrudGroups.Detail.class,
			CrudGroups.Add.class,
			CrudGroups.Edit.class,
			CrudGroups.Remove.class
	})
	@ApiModelProperty(value = "상세 코드")
	private String dtlCd;

	/**
	 * 코드 명
	 */
	@NotEmpty(message = "코드명은 필수 값입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "코드 명")
	private String cdNm;

	/**
	 * 코드 상세 내용
	 */
	@ApiModelProperty(value = "코드 상세 내용")
	private String cdDesc;

	/**
	 * 사용 여부
	 */
	@TextValues(message = "허용되지 않는 입력 값입니다.", textValues = {"Y", "N"}, groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "사용 여부", allowableValues = "Y, N")
	private String useYn;


	/**
	 * 정렬 순번
	 */
	@PositiveOrZero( groups = { CrudGroups.Add.class, CrudGroups.Edit.class })
	@ApiModelProperty(value = "정렬 순번")
	private Integer srtNo;

	/**
	 * 비고
	 */
	@ApiModelProperty(value = "비고")
	private String rmk;
}

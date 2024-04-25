package me.vectorx.spring.templates.bo.samples.code.dto;

import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import me.vectorx.spring.templates.bo.samples.code.VxSampleCodeEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "회원 추가 Request")
public class VxSampleAddReqDto {
	
	/**
	 * 코드 정보
	 */
	@NotNull
	@ApiModelProperty(value = "코드 정보", required = true)
	private VxSampleCodeEntity code;
}

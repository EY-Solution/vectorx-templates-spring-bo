package me.vectorx.spring.templates.bo.samples.temp.dto;

import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import me.vectorx.spring.templates.bo.samples.temp.VxTempEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "Tmp")
public class VxTempDto {

	@NotNull
	@ApiModelProperty(value = "tmp", required = true)
	
	private VxTempEntity code;
}

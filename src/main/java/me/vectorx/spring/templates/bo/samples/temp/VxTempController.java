package me.vectorx.spring.templates.bo.samples.temp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import me.vectorx.spring.data.mybatis.utils.VxCamelCaseMap;
import me.vectorx.spring.templates.bo.samples.temp.dto.VxTempDto;

@Api(tags = "VectorX Temp API", produces = "application/json")
@RestController
@RequestMapping("/api/samples/temp")
public class VxTempController {

	@Autowired
	private VxTempService vxTempService;
	
	@ApiOperation("공장 목록 조회")
	@GetMapping("/plant")
	public List<VxTempEntity> selectTmpPlantList(VxTempEntity vxTempEntity) {
		return this.vxTempService.selectTmpPlantList(vxTempEntity);
	}
	
	@ApiOperation("섹션 목록 조회")
	@PostMapping("/section")
	public List<VxTempEntity> selectTmpSectionList(@RequestBody VxTempEntity vxTempEntity) {
		return this.vxTempService.selectTmpSectionList(vxTempEntity);
	}
	
	@ApiOperation("로케이션 목록 조회")
	@PostMapping("/location")
	public List<VxTempEntity> selectTmpPlantLocList(@RequestBody VxTempEntity vxTempEntity) {
		return this.vxTempService.selectTmpPlantLocList(vxTempEntity);
	}
	
	@ApiOperation("그리드 목록 조회")
	@PostMapping("/gridList")
	public List<VxCamelCaseMap> selectTmpGridList(@RequestBody VxTempEntity vxTempEntity) {
		return this.vxTempService.selectTmpGridList(vxTempEntity);
	}
	
}

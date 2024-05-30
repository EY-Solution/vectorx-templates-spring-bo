package me.vectorx.spring.templates.bo.samples.code;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import me.vectorx.spring.templates.bo.samples.code.dto.VxSampleAddReqDto;

@Api(tags = "VectorX 샘플 코드 API", produces = "application/json")
@RestController
@RequestMapping("/api/samples/code")
public class VxSampleCodeController {
	@Autowired
	private VxSampleCodeService vxSampleCodeService;
	
	@ApiOperation("코드 목록 조회")
	@GetMapping
	public List<VxSampleCodeEntity> getCodes() {
		return this.vxSampleCodeService.getCodes();
	}
	
	@ApiOperation("코드 상세 정보 조회")
	@GetMapping("/{grpCd}/{dtlCd}")
	public VxSampleCodeEntity getCode(
			@ApiParam("그룹 코드")
			@PathVariable
			String grpCd, 
			
			@ApiParam("상세 코드")
			@PathVariable
			String dtlCd) 
	{
		return this.vxSampleCodeService.getCode(grpCd, dtlCd);
	}
	
	@ApiOperation("코드 추가")
	@PostMapping
	public void addCode(@ApiParam @Valid @RequestBody VxSampleAddReqDto req) {
		this.vxSampleCodeService.add(req.getCode());
	}
	
	@ApiOperation("코드 수정")
	@PutMapping
	public void editCode(@ApiParam @Valid @RequestBody VxSampleAddReqDto req) {
		this.vxSampleCodeService.edit(req.getCode());
	}
		
	@ApiOperation("코드 삭제")
	@DeleteMapping("/{grpCd}/{dtlCd}")
	public void removeCode(
			@ApiParam("그룹 코드")
			@PathVariable
			String grpCd, 
			
			@ApiParam("상세 코드")
			@PathVariable
			String dtlCd
	) {
		this.vxSampleCodeService.remove(grpCd, dtlCd);
	}
}

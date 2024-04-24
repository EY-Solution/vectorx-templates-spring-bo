package me.vectorx.spring.templates.bo.samples.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class VxSampleCodeController {
	@Autowired
	private VxSampleCodeService vxSampleCodeService;

	@GetMapping
	public List<VxSampleCodeEntity> getCodes() {
		return this.vxSampleCodeService.getCodes();
	}
}

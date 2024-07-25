package me.vectorx.spring.templates.bo.samples;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import me.vectorx.spring.core.exception.VxCoreResponseCodes;

@RestController
public class ExceptionSampleController {
	
	/**
	 * custom 오류 메시지를 리턴
	 * @return
	 */
	@GetMapping("/api/test/exception/custom-message")
	public void customMessage() {
		throw VxCoreResponseCodes.INVALID_REQUEST_VALUE.exception("잘못된 입력 파라메터입니다. 입력 정보를 확인해주세요.");
	}
}

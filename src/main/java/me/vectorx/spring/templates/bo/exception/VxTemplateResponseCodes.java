package me.vectorx.spring.templates.bo.exception;

import me.vectorx.spring.core.exception.VxException;
import me.vectorx.spring.core.exception.VxResponseCode;

public enum VxTemplateResponseCodes implements VxResponseCode<Object> {
	
	NOT_FOUND_POST("1001", "게시 데이터를 찾을 수 없습니다.");
	
	private String code;
	private String message;

	VxTemplateResponseCodes(String code, String message) {

		this.code = code;
		this.message = message;
	}

	@Override
	public String getCode() {

		return this.code;
	}

	@Override
	public String getMessage() {

		return this.message;
	}

	public VxException exception() {
		return new VxTemplateException(this);
	}
	
}

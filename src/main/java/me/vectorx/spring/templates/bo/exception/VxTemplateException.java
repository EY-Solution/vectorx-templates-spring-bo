package me.vectorx.spring.templates.bo.exception;

import me.vectorx.spring.core.exception.VxResponseCode;
import me.vectorx.spring.core.exception.VxException;

public class VxTemplateException extends VxException {

	private static final long serialVersionUID = 1L;

	public VxTemplateException(VxResponseCode<?> code) {
		super(code);
	}

	public VxTemplateException(VxResponseCode<?> code, String message) {
		super(code, message);
	}
}

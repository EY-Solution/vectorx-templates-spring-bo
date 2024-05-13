package me.vectorx.spring.templates.bo.config;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.stereotype.Component;

import me.vectorx.spring.security.config.VxSecurityConfigure;

@Component
public class SecurityConfiguration implements VxSecurityConfigure {
	@Override
	public void postConfigure(HttpSecurity http) throws Exception {
		http.sessionManagement().disable()
			.headers()
			.frameOptions().disable();
	}
}


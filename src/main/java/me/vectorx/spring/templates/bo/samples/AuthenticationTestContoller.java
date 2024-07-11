package me.vectorx.spring.templates.bo.samples;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import me.vectorx.spring.security.authentication.user.VxUser;
import me.vectorx.spring.templates.bo.utils.AuthenticationSupport;

@RestController
public class AuthenticationTestContoller {
	
	@GetMapping("/api/test/authentication/current-user")
	public VxUser getCurrentUser() {
		return AuthenticationSupport.getAutheticatedUser();
	}
	
}

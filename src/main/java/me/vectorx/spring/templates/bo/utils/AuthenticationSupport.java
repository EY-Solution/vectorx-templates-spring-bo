package me.vectorx.spring.templates.bo.utils;

import javax.annotation.Nullable;

import lombok.experimental.UtilityClass;
import me.vectorx.spring.core.utils.spring.VxApplicationContextProvider;
import me.vectorx.spring.security.authentication.VxAuthenticationManager;
import me.vectorx.spring.security.authentication.authentication.VxAuthentication;
import me.vectorx.spring.security.authentication.user.VxUser;

/**
 * 인증 정보 지원 객체
 */
@UtilityClass
public class AuthenticationSupport {
	
	/**
	 * 현재 로그인 된 사용자 정보를 조회
	 * @return
	 */
	@Nullable
	public VxUser getAutheticatedUser() {
		final VxAuthenticationManager authenticationManager = VxApplicationContextProvider.getBean(VxAuthenticationManager.class);
		final VxAuthentication authentication = authenticationManager.getAuthentication();

		if (authentication == null || authentication.getUser() == null || authentication.isAnonymous() ||
				!(authentication.getUser() instanceof VxUser)) {
			return null;
		}

		return (VxUser)authentication.getUser();
	}
	
}

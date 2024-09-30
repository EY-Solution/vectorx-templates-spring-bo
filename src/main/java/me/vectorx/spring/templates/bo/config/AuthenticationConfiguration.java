package me.vectorx.spring.templates.bo.config;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.cache.Cache;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseCookie;

import me.vectorx.spring.management.bo.authentication.listener.VxManagementAuthenticationListener;
import me.vectorx.spring.management.bo.authentication.processor.VxManagementBoJwtAuthenticationProcessor;
import me.vectorx.spring.management.bo.authentication.user.VxCachedJwtManagementUserDetailProvider;
import me.vectorx.spring.management.bo.authentication.user.VxManagmentUser;
import me.vectorx.spring.management.properties.VxManagementBoProperties;
import me.vectorx.spring.management.services.VxManagementRefreshTokenService;
import me.vectorx.spring.mvc.utils.VxCookieUtils;
import me.vectorx.spring.mvc.utils.VxWebUtils;
import me.vectorx.spring.security.authentication.authentication.VxAuthentication;
import me.vectorx.spring.security.authentication.cache.VxSecurityCacheSupport;
import me.vectorx.spring.security.authentication.processor.VxAuthenticationProcessor;
import me.vectorx.spring.security.authentication.request.token.VxAuthenticationRequestToken;
import me.vectorx.spring.security.authentication.user.VxUser;
import me.vectorx.spring.security.jwt.authentication.authentication.VxJwtAuthentication;
import me.vectorx.spring.security.jwt.authentication.processor.VxJwtAuthenticationProcessor;

/**
 * 인증 커스토마이징 설정
 */
@Configuration
public class AuthenticationConfiguration {
	
	@Bean
	VxJwtAuthenticationProcessor<?, ?> authenticationProcessor(VxManagementBoProperties properties,
			VxManagementRefreshTokenService vxRefreshTokenService) {
		return new VxManagementBoJwtAuthenticationProcessor(properties, vxRefreshTokenService, (processor) -> {
			processor.setAuthenticationListener(new AuthenticationListener());
			processor.setUserDetailProvider(new UserDetailProvider());
		});
	}
	
	/**
	 * 사용자 정보 구현체
	 */
	public static class UserDetailProvider extends VxCachedJwtManagementUserDetailProvider<VxManagmentUser> {
		
		@Override
		protected VxUser getInternalUserDetails(VxAuthenticationRequestToken authenticationRequestToken) {
			// TODO 여기에 사용자 조회 로직 구현 
			return super.getInternalUserDetails(authenticationRequestToken);
		}
		
		@Override
		protected VxUser getInternalUserDetails(VxJwtAuthentication authentication) {
			// TODO 여기에 사용자 조회 로직 구현 
			return super.getInternalUserDetails(authentication);
		}
		
		@Override
		protected Cache getCache() {
			return VxSecurityCacheSupport.getDefaultUserCache();
		}
		
	}
	
	/**
	 * VxManagementAuthenticationListener 구현
	 */
	public static class AuthenticationListener extends VxManagementAuthenticationListener<VxAuthenticationRequestToken, VxJwtAuthentication> {
		@Override
		public void onAuthenticateSuccess(
				VxAuthenticationProcessor<VxAuthenticationRequestToken, VxJwtAuthentication> processor,
				VxAuthenticationRequestToken authenticationToken, VxJwtAuthentication authentication, String resCode) {
			super.onAuthenticateSuccess(processor, authenticationToken, authentication, resCode);
			
			// 인증 성공 시, 쿠키 추가
			VxCookieUtils.addCookie(
					VxWebUtils.getCurrentResponse(), 
					ResponseCookie.from("vx-auth-cookie", LocalDateTime.now().format(DateTimeFormatter.ISO_DATE_TIME))
						.maxAge(-1)
						.httpOnly(false)
						.path("/")
						.build()
			);
			
		}
		
		@Override
		public void onUnauthenticateSuccess(
				VxAuthenticationProcessor<VxAuthenticationRequestToken, VxJwtAuthentication> processor,
				VxJwtAuthentication authentication, String resCode) {
			super.onUnauthenticateSuccess(processor, authentication, resCode);
			
			// 인증 해제 시, 쿠키 제거
			VxCookieUtils.deleteCookie(
					VxWebUtils.getCurrentRequest(), 
					VxWebUtils.getCurrentResponse(), "vx-auth-cookie", "/");
		}
		
		@Override
		public void onUnauthenticateFailure(
				VxAuthenticationProcessor<VxAuthenticationRequestToken, VxJwtAuthentication> processor,
				VxJwtAuthentication authentication, String resCode) {
			super.onUnauthenticateFailure(processor, authentication, resCode);
			
			// 인증 해제 시, 쿠키 제거
			VxCookieUtils.deleteCookie(
					VxWebUtils.getCurrentRequest(), 
					VxWebUtils.getCurrentResponse(), "vx-auth-cookie", "/");
		}
	}
	
	
}


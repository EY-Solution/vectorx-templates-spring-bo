package me.vectorx.spring.templates.bo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Configuration
public class SwaggerConfiguration {
	
	@Bean
	Docket swaggerApi() {
		return new Docket(DocumentationType.OAS_30)
                .useDefaultResponseMessages(false)
                .select()
			    .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build()
                .apiInfo(swaggerInfo());
	}
	
	private ApiInfo swaggerInfo() {
        return new ApiInfoBuilder()
                .title("Vectorx Framework Swagger")
                .version("1.0.0")
                .build();
    }
	
}

package me.vectorx.spring.templates.bo;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import me.vectorx.spring.mvc.app.VxServletApplicationRunner;
import org.springframework.boot.builder.SpringApplicationBuilder;

import java.io.IOException;

@SpringBootApplication
public class ApplicationRunner extends VxServletApplicationRunner {
	public static void main(String[] args) throws IOException {
		final SpringApplicationBuilder builder = new SpringApplicationBuilder(ApplicationRunner.class);
		VxServletApplicationRunner.run(ApplicationRunner.class, builder, args);
	}
}

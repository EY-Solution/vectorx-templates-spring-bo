package me.vectorx.spring.templates.bo;

import java.io.IOException;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import me.vectorx.spring.mvc.app.VxServletApplicationRunner;

@SpringBootApplication
public class ApplicationRunner extends VxServletApplicationRunner {
	public static void main(String[] args) throws IOException {
		final SpringApplicationBuilder builder = new SpringApplicationBuilder(ApplicationRunner.class);
		VxServletApplicationRunner.run(ApplicationRunner.class, builder, args);
	}
}

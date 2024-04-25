# vectorx-templates-bo-spring
VectorX 프로젝트의 Back Office Spring App 템플릿

로컬 서버 구동 (http://localhost:21002/)
```bash
# gradle
./gradlew build --refresh-dependencies
./gradlew bootRun

# maven
./mvnw clean install -U
./mvnw spring-boot:run
```

어플리케이션 빌드
```bash
# gradle
./gradlew clean bootJar

# maven
./mvnw clean package
```

어플리케이션 실행 (nuxt 어플리케이션 generate 후 실행)
```bash
# file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist 경로는 nuxt application dist 경로로 설정

# gradle
java -jar "-Dspring.web.resources.static-locations[0]=file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist/" "-Dvx.mvc.view.thymeleaf.prefix=file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist/" ./build/libs/vectorx-templates-spring-bo-1.0.0.jar

# maven
java -jar "-Dspring.profiles.active=dev" ./target/vectorx-templates-spring-bo-1.0.0.jar
```

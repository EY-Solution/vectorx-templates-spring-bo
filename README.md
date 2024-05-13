# vectorx-templates-bo-spring
VectorX 프로젝트의 Back Office Spring App 템플릿

1. H2 데이터 베이스 설정 변경
BootDash board 설정 창에서 H2 데이터베이스 경로를 원하는 위치로 변경한다.

```bash
# 아래 경로는 예시
-Dvx.data.datasource.datasources.vx.url="jdbc:log4jdbc:h2:file:C:\workspaces\ey-solutions\templates\data\vx-h2;Mode=Oracle"
```

로컬 서버 구동 후, http://localhost:21002/h2-console 로 접속하여 sql/data-h2.sql 스크립트를 실행



2. 로컬 서버 구동 (http://localhost:21002/)
```bash
# gradle
./gradlew build --refresh-dependencies
./gradlew bootRun

# maven
./mvnw clean install -U
./mvnw spring-boot:run
```

3. 어플리케이션 빌드
```bash
# gradle
./gradlew clean bootJar

# maven
./mvnw clean package
```

4. 어플리케이션 실행 (nuxt 어플리케이션 generate 후 실행)
```bash
# file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist 경로는 nuxt application dist 경로로 설정

# gradle
java -jar "-Dspring.web.resources.static-locations[0]=file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist/" "-Dvx.mvc.view.thymeleaf.prefix=file:/workspaces/ey-solutions/templates/vectorx-templates-nuxt-bo/dist/" ./build/libs/vectorx-templates-spring-bo-1.0.0.jar

# maven
java -jar "-Dspring.profiles.active=dev" ./target/vectorx-templates-spring-bo-1.0.0.jar
```

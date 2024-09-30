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

## Sample

- code
me.vectorx.spring.templates.bo.samples.code 패키지에 있으며, VECTORX_SAMPLE_CMM_CD 테이블을 대상으로 기본 CRUD 기반의 샘플

- post
me.vectorx.spring.templates.bo.samples.code 패키지에 있으며, VECTORX_SAMPLE_POST 테이블에 CRUD를 수행하는 API 샘플

## Configurations

### Swagger
`SwaggerConfiguration.java` 설정으로 Swagger 설정이 import 되어 있으며, 어플리케이션 구동 후 다음 URL로 접속 가능하다.
- http://localhost:21002/swagger-ui/index.html

### 프레임워크 테이블 매핑 변경
`CustomFileGroupTableMappingModel.java`를 통해 프레임워크 테이블 매핑 설정을 변경한다.
매핑 설정은 테이블명, 필드명을 변경할 수 있다.

기본 테이블 매핑을 제거하기 위해 `applicaton.yml`에는 다음과 같은 설정이 추가되었다.
```yaml
vx:
  data:
    table-mapping:
      exclude-classes:
      - me.vectorx.spring.management.data.mapping.VxFileGroupTableMappingModel
```


- 참고 가이드 : https://vectorx.notion.site/VxTableEntityMapper-1f400926465544e996af6b3dcc114a42

### 인증설정
`AuthenticationConfiguration.java` 세팅으로 인증 설정이 변경되었다.
AuthenticationConfiguration$AuthenticationListener 클래스는 인증과 인증해제 시, 특정한 쿠키 값을 작성 및 삭제하는 로직이 구현되어 있다.

- 참고 가이드 : https://vectorx.notion.site/Security-d4a1c28c365b472889dab842c890af41#1193128721f44802b3d4b4cba2c9711a

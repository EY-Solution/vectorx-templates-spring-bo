package me.vectorx.spring.templates.bo.samples.code;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Sample Code 작성 MybatisMapper
 */
@Mapper
public interface VxSampleCodeMapper {

	/**
	 * 코드 목록 조회
	 * @return List<VxSampleCodeEntity>
	 */
	List<VxSampleCodeEntity> selectList();

	/**
	 *
	 * @param grpCd 그룹 코드
	 * @param dtlCd 상세 코드
	 * @return VxSampleCodeEntity
	 */
	VxSampleCodeEntity select(@Param("grpCd") String grpCd, @Param("dtlCd") String dtlCd);

	/**
	 * 코드 추가
	 * @param entity VxSampleCodeEntity
	 * @return number of affected count
	 */
	int insert(VxSampleCodeEntity entity);

	/**
	 * 코드 수정
	 * @param entity VxSampleCodeEntity
	 * @return number of affected count
	 */
	int update(VxSampleCodeEntity entity);

	/**
	 * 코드 제거
	 * @param grpCd 그룹 코드
	 * @param dtlCd 상세 코드
	 * @return number of affected count
	 */
	int delete(@Param("grpCd") String grpCd, @Param("dtlCd") String dtlCd);

}

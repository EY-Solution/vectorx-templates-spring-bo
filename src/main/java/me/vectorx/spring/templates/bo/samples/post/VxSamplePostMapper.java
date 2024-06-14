package me.vectorx.spring.templates.bo.samples.post;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import me.vectorx.spring.data.domains.VxPaginationList;
import me.vectorx.spring.data.domains.VxPaginationRequest;

@Mapper
public interface VxSamplePostMapper {
	
	/**
	 * 게시 목록 조회
	 * @param pagination 페이징 조건
	 * @param condition 검색 조건
	 * @return
	 */
	VxPaginationList<VxSamplePostEntity> selectList(
			VxPaginationRequest pagination, 
			@Param("condition") VxSamplePostEntity.Condition condition);
	
	/**
	 * 게시 상세 조회
	 * @param postId 게시 아이디
	 * @return
	 */
	VxSamplePostEntity select(@Param("postId") Integer postId);
	
	/**
	 * 게시 신규 입력
	 * @param entity
	 * @return
	 */
	int insert(VxSamplePostEntity entity);
	
	
	/**
	 * 게시 수정
	 * @param entity
	 * @return
	 */
	int update(VxSamplePostEntity entity);
	
	/**
	 * 조회 수 증가
	 * @param postId
	 * @return
	 */
	int updateViewCnt(@Param("postId") Integer postId);
	
	/**
	 * 게시 삭제
	 * @param postId
	 * @return
	 */
	int delete(@Param("postId") Integer postId);
	
}

package me.vectorx.spring.templates.bo.samples.post;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.vectorx.spring.data.validation.CrudGroups;
import me.vectorx.spring.management.models.base.VxManagementBaseEntity;

@Data
@EqualsAndHashCode(callSuper = false)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "샘플 게시판 Entity")
public class VxSamplePostEntity extends VxManagementBaseEntity {
	
	/**
	 * 게시 아이디
	 */
	@NotNull(message = "게시 아이디는 필수 값입니다.", groups = {
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "게시 아이디")
	private Integer postId;
	
	/**
	 * 작성자 명
	 */
	@NotEmpty(message = "작성자 명은 필수 값입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "작성자 명")
	private String authNm;
	
	/**
	 * 작성자 이메일
	 */
	@NotEmpty(message = "작성자 이메일은 필수 값입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@Email(message = "유효하지 않은 이메일 포맷입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "작성자 이메일")
	private String authEml;
	
	/**
	 * 제목
	 */
	@NotEmpty(message = "제목은 필수 입력 값입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "제목")
	private String postTtl;
	
	/**
	 * 내용
	 */
	@NotEmpty(message = "내용은 필수 입력 값입니다.", groups = {
			CrudGroups.Add.class,
			CrudGroups.Edit.class
	})
	@ApiModelProperty(value = "내용")
	private String postCont;
	
	
	@ApiModelProperty(value = "조회 수")
	private Integer viewCnt;
	
	/**
	 * 검색 필터 조건
	 */
	@Data
	public static class Condition {
		
		/**
		 * 제목
		 */
		private String postTtl;
		
		/**
		 * 작성자 명
		 */
		private String authNm;
		
		/**
		 * 시작일자 (yyyyMMdd)
		 */
		private String stRegYyyyMMdd;
		
		/**
		 * 종료일자 (yyyyMMdd)
		 */
		private String edRegYyyyMMdd;
	}
	
}

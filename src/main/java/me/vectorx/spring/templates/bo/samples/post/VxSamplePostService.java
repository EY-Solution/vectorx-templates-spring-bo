package me.vectorx.spring.templates.bo.samples.post;

import javax.validation.Valid;
import javax.validation.groups.ConvertGroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import me.vectorx.spring.data.domains.VxPaginationList;
import me.vectorx.spring.data.domains.VxPaginationRequest;
import me.vectorx.spring.data.domains.VxPaginationRequest.OrderDirection;
import me.vectorx.spring.data.validation.CrudGroups;
import me.vectorx.spring.templates.bo.exception.VxTemplateResponseCodes;

@Service
@Transactional
@Validated
public class VxSamplePostService {
	
	@Autowired
	private VxSamplePostMapper vxSamplePostMapper;
	
	/**
	 * 게시 목록 조회
	 * @param pagination
	 * @param condition
	 * @return
	 */
	public VxPaginationList<VxSamplePostEntity> getPosts(VxPaginationRequest pagination, VxSamplePostEntity.Condition condition) {
		pagination.defaultOrder("REG_DTTM", OrderDirection.DESC);		
		return this.vxSamplePostMapper.selectList(pagination, condition);
	}
	
	/**
	 * 게시 정보 조회
	 * @param postId 게시 아이디
	 * @return
	 */
	public VxSamplePostEntity getPost(Integer postId) {
		final VxSamplePostEntity post = this.vxSamplePostMapper.select(postId);
		if (post != null) {
			this.vxSamplePostMapper.updateViewCnt(postId);
		}
		
		return post;
	}
	
	/**
	 * 게시 추가
	 * @param entity
	 */
	public void add(@ConvertGroup(to=CrudGroups.Add.class) @Valid VxSamplePostEntity entity) {
		
		entity.setViewCnt(0);
		
		this.vxSamplePostMapper.insert(entity);
	}
	
	/**
	 * 게시 수정
	 * @param entity
	 */
	public void edit(@ConvertGroup(to=CrudGroups.Edit.class) @Valid VxSamplePostEntity entity) {
		
		final VxSamplePostEntity postInfo = this.getPost(entity.getPostId());
		if (postInfo == null) {
			throw VxTemplateResponseCodes.NOT_FOUND_POST.exception();
		}
		
		this.vxSamplePostMapper.update(entity);
	}
	
	/**
	 * 제거
	 * @param postId
	 */
	public void remove(Integer postId) {
		final VxSamplePostEntity postInfo = this.getPost(postId);
		if (postInfo == null) {
			throw VxTemplateResponseCodes.NOT_FOUND_POST.exception();
		}
		
		this.vxSamplePostMapper.delete(postId);
	}
	
}

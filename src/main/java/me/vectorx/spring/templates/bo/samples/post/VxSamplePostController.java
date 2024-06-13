package me.vectorx.spring.templates.bo.samples.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.vectorx.spring.data.domains.VxPaginationList;
import me.vectorx.spring.mvc.rest.utils.VxRestUtils;
import me.vectorx.spring.security.authority.permission.VxPermission;
import me.vectorx.spring.templates.bo.config.VxTemplateProgramIds;

@Api(tags = "VectorX 샘플 게시판 API", produces = "application/json")
@RestController
@RequestMapping("/api/samples/post")
@VxPermission(roles= {VxTemplateProgramIds.SAMPLE_POSTS})
public class VxSamplePostController {
	
	@Autowired
	private VxSamplePostService vxSamplePostService;
	
	@ApiOperation("게시 목록 조회")
	@PostMapping("/posts")
	public VxPaginationList<VxSamplePostEntity> getCodes(@RequestBody VxSamplePostEntity.Condition condition) {
		return this.vxSamplePostService.getPosts(VxRestUtils.getCurrentApiHeader(), condition);
	}
	
	@ApiOperation("게시 상세 조회")
	@GetMapping("/{postId}")
	public VxSamplePostEntity getCode(@PathVariable Integer postId) {
		return this.vxSamplePostService.getPost(postId);
	}
	
	@ApiOperation("게시 입력")
	@PostMapping
	public void addPost(@RequestBody VxSamplePostEntity post) {
		this.vxSamplePostService.add(post);
	}
	
	@ApiOperation("게시 수정")
	@PatchMapping
	public void editPost(@RequestBody VxSamplePostEntity post) {
		this.vxSamplePostService.edit(post);
	}
	
	@ApiOperation("게시 삭제")
	@DeleteMapping("/{postId}")
	public void removePost(@PathVariable Integer postId) {
		this.vxSamplePostService.remove(postId);
	}
	
	
}

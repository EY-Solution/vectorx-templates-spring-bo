package me.vectorx.spring.templates.bo.samples.code;

import me.vectorx.spring.data.exception.VxDataResponseCodes;
import me.vectorx.spring.data.validation.CrudGroups;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.groups.ConvertGroup;
import java.util.List;

@Service
@Transactional
public class VxSampleCodeService {

	@Autowired
	private VxSampleCodeMapper vxSampleCodeMapper;

	/**
	 * 코드 목록 조회
	 * @return 코드 목록
	 */
	public List<VxSampleCodeEntity> getCodes() {
		return vxSampleCodeMapper.select();
	}

	/**
	 * 코드 정보 조회
	 * @param grpCd 그룹코드
	 * @param dtlCd 상세코드
	 * @return 조회된 코드 정보
	 */
	@Nullable
	public VxSampleCodeEntity getCode(@NotNull @NotBlank String grpCd, @NotNull @NotBlank String dtlCd) {
		return vxSampleCodeMapper.detail(grpCd, dtlCd);
	}

	/**
	 * 코드 추가
	 * @param entity 코드 정보
	 */
	public void add(@ConvertGroup(to=CrudGroups.Add.class)
					@Valid
					VxSampleCodeEntity entity) {

		final int affected = this.vxSampleCodeMapper.insert(entity);
		if (affected != 1) {
			throw VxDataResponseCodes.CANNOT_SAVE_RECORD.exception();
		}
	}

	/**
	 * 코드 수정
	 * @param entity 코드 정보
	 */
	public void edit(@ConvertGroup(to=CrudGroups.Edit.class)
					 @Valid
					 VxSampleCodeEntity entity) {
		final int affected = this.vxSampleCodeMapper.update(entity);
		if (affected != 1) {
			throw VxDataResponseCodes.CANNOT_SAVE_RECORD.exception();
		}
	}

	/**
	 * 코드 제거
	 * @param grpCd 그룹 코드
	 * @param dtlCd 상세 코드
	 */
	public void remove(@NotNull @NotBlank String grpCd, @NotNull @NotBlank String dtlCd) {
		final int affected = this.vxSampleCodeMapper.delete(grpCd, dtlCd);
		if (affected != 1) {
			throw VxDataResponseCodes.CANNOT_DELETE_RECORD.exception();
		}
	}


}

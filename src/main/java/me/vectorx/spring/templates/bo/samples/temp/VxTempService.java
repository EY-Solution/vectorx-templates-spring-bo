package me.vectorx.spring.templates.bo.samples.temp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.vectorx.spring.data.mybatis.utils.VxCamelCaseMap;

@Service
@Transactional
public class VxTempService {

	@Autowired
	private VxTempMapper vxTempMapper;
	
	public List<VxTempEntity> selectTmpPlantList(VxTempEntity vxTempEntity) {
		return vxTempMapper.selectTmpPlantList(vxTempEntity);
	}
	
	public List<VxTempEntity> selectTmpSectionList(VxTempEntity vxTempEntity) {
		return vxTempMapper.selectTmpSectionList(vxTempEntity);
	}
	
	public List<VxTempEntity> selectTmpPlantLocList(VxTempEntity vxTempEntity) {
		return vxTempMapper.selectTmpPlantLocList(vxTempEntity);
	}

	public List<VxCamelCaseMap> selectTmpGridList(VxTempEntity vxTempEntity) {
		return vxTempMapper.selectTmpGridList(vxTempEntity);
	}
		
}

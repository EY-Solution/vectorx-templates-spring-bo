package me.vectorx.spring.templates.bo.samples.temp;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import me.vectorx.spring.data.mybatis.utils.VxCamelCaseMap;

@Mapper
public interface VxTempMapper {	
	List<VxTempEntity> selectTmpPlantList(VxTempEntity vxTempEntity);
	List<VxTempEntity> selectTmpSectionList(VxTempEntity vxTempEntity);
	List<VxTempEntity> selectTmpPlantLocList(VxTempEntity vxTempEntity);
	
	List<VxCamelCaseMap> selectTmpGridList(VxTempEntity vxTempEntity);
}

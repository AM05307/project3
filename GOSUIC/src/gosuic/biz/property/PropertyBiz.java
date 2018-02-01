package gosuic.biz.property;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gosuic.dao.property.PropertyDao;
import gosuic.entity.AptInfo;

@Service
public class PropertyBiz {
	
	@Autowired
	private PropertyDao propertyDao;

	//�Ź� ��� ���
	public List<AptInfo> listApt(){
		return propertyDao.listApt();
	}

}

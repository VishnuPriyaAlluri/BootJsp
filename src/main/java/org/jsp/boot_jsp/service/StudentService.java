package org.jsp.boot_jsp.service;




import java.util.List;
import java.util.Optional;

import org.jsp.boot_jsp.dao.StudentDao;
import org.jsp.boot_jsp.dto.StudentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

@Component
public class StudentService {
  @Autowired
  StudentDao dao;

public String insert(StudentDto dto, ModelMap map) {
	
	
    dto.setPercentage((dto.getEnglish()+dto.getMaths()+dto.getScience())/3.0);
    if(dto.getEnglish()<35 || dto.getMaths()<35 || dto.getScience()<35) {
    	dto.setResult("fail");
    }else {
    	if(dto.getPercentage()>=85) {
    		dto.setResult("Distinction");
    	}else if(dto.getPercentage()>=70) {
    		dto.setResult("First Class");
    	}else if(dto.getPercentage()>=55) {
    		dto.setResult("Second Class");
    	}else {
    		dto.setResult("Third Class");
    	}
    }
    dao.save(dto);
    map.put("pass", "Record Saved Successfully");
    return "Main";
}

    public String fetchAll(ModelMap map) {
    	List<StudentDto> list=dao.fetchAll();
	     if(list.isEmpty()) {
	    	 map.put("fail","No Records Present");
	    	 return "Main";
	     }else {
	    	 map.put("list", list);
	    	 return "Fetch"; 
	     }
	     
    }


	public String delete(int id, ModelMap map) {
		dao.delete(id);
//		map.put("list", dao.fetchAll());
		map.put("pass", "Record Deleted Success");
		return fetchAll(map);
	}

	public String loadedit(int id, ModelMap map) {
		StudentDto dto = dao.findById(id);
		map.put("student",dto);
		return "Edit";

				
	}

	public String update(StudentDto dto, ModelMap map) {
		 dto.setPercentage((dto.getEnglish()+dto.getMaths()+dto.getScience())/3.0);
		    if(dto.getEnglish()<35 || dto.getMaths()<35 || dto.getScience()<35) {
		    	dto.setResult("fail");
		    }else {
		    	if(dto.getPercentage()>=85) {
		    		dto.setResult("Distinction");
		    	}else if(dto.getPercentage()>=70) {
		    		dto.setResult("First Class");
		    	}else if(dto.getPercentage()>=55) {
		    		dto.setResult("Second Class");
		    	}else {
		    		dto.setResult("Third Class");
		    	}
		    }
		    dao.save(dto);
		    map.put("pass","Record Edited Successfully");
		    return fetchAll(map);
	}


  
}

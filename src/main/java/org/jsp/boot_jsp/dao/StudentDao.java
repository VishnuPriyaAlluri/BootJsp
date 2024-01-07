package org.jsp.boot_jsp.dao;


import java.util.List;


import org.jsp.boot_jsp.dto.StudentDto;
import org.jsp.boot_jsp.repository.MyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class StudentDao {
	@Autowired
     MyRepository repository;
	//if id is already present ,it will update. otherwise it will create new record  (for save and update the record we have to use save() it is present in jpa repository
	public void save(StudentDto dto) {
		repository.save(dto);
	}
	public List<StudentDto> fetchAll() {
		return repository.findAll();
		
	}
	public void delete(int id) {
		 repository.deleteById(id);
	}
	public StudentDto findById(int id) {
	return	repository.findById(id).get();	
	}
	
	

	

}

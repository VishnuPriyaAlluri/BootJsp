package org.jsp.boot_jsp.controller;

import org.jsp.boot_jsp.dto.StudentDto;
import org.jsp.boot_jsp.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;




@Controller
public class MyController {
	@Autowired
	StudentService service;
	
	
	@GetMapping("/")
	 public String main() {
    	  return "Main";
      }
	
	
	@GetMapping("/insert")
	public String insertData() {
		return "Insert";
	}
	@PostMapping("/insert")
	public String addingData(StudentDto dto,ModelMap map) {
		return service.insert(dto, map);
	}
	@GetMapping("fetch")
	public String fetchAll(ModelMap map) {
		return service.fetchAll(map);
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id,ModelMap map) {
		return service.delete(id,map);
	}
	@GetMapping("edit")
	public String loadedit(@RequestParam int id,ModelMap map) {
		return service.loadedit(id,map);
	}
	@PostMapping("update")
	public String update(StudentDto dto,ModelMap map) {
		return service.update(dto,map);
	}
	
	
}

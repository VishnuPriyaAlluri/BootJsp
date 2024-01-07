package org.jsp.boot_jsp.repository;

import org.jsp.boot_jsp.dto.StudentDto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MyRepository extends JpaRepository<StudentDto, Integer> {
     
}

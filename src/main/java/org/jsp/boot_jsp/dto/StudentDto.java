package org.jsp.boot_jsp.dto;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class StudentDto {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    int id;
	String name;
	long mobile;
	int english;
	int science;
	int maths;
	double percentage;
	String result;
	LocalDate dob;
	

	
}

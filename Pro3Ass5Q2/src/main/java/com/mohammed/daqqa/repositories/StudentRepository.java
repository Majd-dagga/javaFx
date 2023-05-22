package com.mohammed.daqqa.repositories;

import com.mohammed.daqqa.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer>{
    
}

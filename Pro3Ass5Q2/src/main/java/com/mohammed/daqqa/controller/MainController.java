package com.mohammed.daqqa.controller;

import com.mohammed.daqqa.models.Student;
import com.mohammed.daqqa.repositories.StudentRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @Autowired
    StudentRepository studentRepository;
    
    @RequestMapping("/")
    public String index(){
        return String.format("%s", "Welcome In Student System");
    }
    
    @RequestMapping("/showAll")
    public String showAll(){
        Student student = new Student();
        student.setId(120204000);
        student.setName("Alaa");
        student.setMajor("English");
        student.setGrade(88);
        studentRepository.save(student);
        
        List<Student> students = studentRepository.findAll();
        String str = "";
        for(Student s: students)
            str += s + "<br>";
        return String.format("%s", str);
    }
    
    @RequestMapping("/show/{id}")
    public String show(@PathVariable Integer id){
        Student student = studentRepository.findById(id).get();
        return String.format("%s", student);
    }
}


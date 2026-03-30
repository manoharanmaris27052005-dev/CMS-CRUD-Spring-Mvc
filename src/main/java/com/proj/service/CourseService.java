package com.proj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.CourseDao;
import com.proj.entity.Course;

@Service
public class CourseService {

    @Autowired
    CourseDao dao;

    public void addCourse(Course c) {
        dao.addCourse(c);
    }

    public List<Course> getCourses() {
        return dao.getAll();
    }

    public void deleteCourse(int id) {
        dao.deleteCourse(id);
    }

    public void updateCourse(Course c) {
        dao.updateCourse(c);
    }

    public Course getCourse(int id) {
        return dao.getById(id);
    }
}
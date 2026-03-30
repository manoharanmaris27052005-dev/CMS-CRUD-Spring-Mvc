package com.proj.dao;

import java.util.*;
import org.springframework.stereotype.Repository;
import com.proj.entity.Course;

@Repository
public class CourseDao {

    List<Course> list = new ArrayList<>();

    public void addCourse(Course c) {
        list.add(c);
    }

    public List<Course> getAll() {
        return list;
    }

    public void deleteCourse(int id) {
        list.removeIf(c -> c.getId() == id);
    }

    public void updateCourse(Course course) {
        for (Course c : list) {
            if (c.getId() == course.getId()) {
                c.setName(course.getName());
                c.setInstructor(course.getInstructor());
            }
        }
    }

    public Course getById(int id) {
        for (Course c : list) {
            if (c.getId() == id) return c;
        }
        return null;
    }
}
package service;

import map.Mapper;
import org.apache.ibatis.session.SqlSession;
import pojoc.Student;
import utiktool.SqlSessionFactoryUtil;

public class LoginService {
    public  boolean login(Student student){
        SqlSession sqlSession= SqlSessionFactoryUtil.openSqlSession();
        Mapper mapper=sqlSession.getMapper(Mapper.class);
        Student student1=mapper.findInfo(student);
        System.out.println(student1);
        if(student1!=null){
            return true;
        }else {
            return false;
        }
    }
    public static void main(String args[]){
        LoginService loginService=new LoginService();
        Student student=new Student();
        student.setUsername("ss1");
        student.setPassword("123");
        System.out.println(loginService.login(student));
    }
}

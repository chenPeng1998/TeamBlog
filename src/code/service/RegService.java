package service;

import map.Mapper;
import org.apache.ibatis.session.SqlSession;
import pojoc.Student;
import utiktool.SqlSessionFactoryUtil;

public class RegService {
    public boolean checkUsername(String username){
        SqlSession sqlSession= SqlSessionFactoryUtil.openSqlSession();
        Mapper mapper=sqlSession.getMapper(Mapper.class);
        Student student=mapper.checkUsername(username);
        if(student==null){
            return true;
        }else {
            return false;
        }
    }
    public void regUser(Student student){
        SqlSession sqlSession= SqlSessionFactoryUtil.openSqlSession();
        Mapper mapper=sqlSession.getMapper(Mapper.class);
         try{
            mapper.addStuInfo(student);
             sqlSession.commit();
         }catch (Exception e){
             e.printStackTrace();
             sqlSession.rollback();
         }

    }

    public static void main(String args[]){
        RegService regService=new RegService();

        Student student=new Student();
        student.setUsername("ss1");
        student.setPassword("123");
        System.out.println(student);
        regService.regUser(student);

    }
}

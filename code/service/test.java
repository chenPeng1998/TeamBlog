package service;

import map.Mapper;
import org.apache.ibatis.session.SqlSession;
import pojo.Role;
import util.SqlSessionFactoryUtil;

public class test {
    public static void main(String args[]){
        SqlSession sqlSession=null;
        SqlSessionFactoryUtil.initSqlSessionFactory();
        sqlSession=SqlSessionFactoryUtil.openSqlSession();
        Mapper mapper=sqlSession.getMapper(Mapper.class);
        Role role=mapper.getRole(7);
        System.out.println(role);
    }
}

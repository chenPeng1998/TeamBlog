package util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SqlSessionFactoryUtil {
    //sqlSessionFactory
    private static SqlSessionFactory sqlSessionFactory=null;
    //锁对象
    private static final Class CLASS_LOCK= SqlSessionFactoryUtil.class;
    //单例
    private SqlSessionFactoryUtil(){

    }
    public  static SqlSessionFactory initSqlSessionFactory(){
        String resource= "mybatis-config.xml";
        InputStream inputStream=null;
        try {
            inputStream= Resources.getResourceAsStream(resource);
            System.out.println("初始化成功");
        }catch (Exception e){
            //日志文件
            Logger.getLogger(SqlSessionFactoryUtil.class.getName()).log(Level
            .SEVERE,null,e);
        }
        synchronized (CLASS_LOCK){
            if(sqlSessionFactory==null){
                //创建sqlSessionFactory
                sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
            }
        }
        return sqlSessionFactory;
    }
    /**
     * 打开sqlsession
     *
     */
    public static SqlSession openSqlSession(){
        if(sqlSessionFactory==null){
            initSqlSessionFactory();
        }
        System.out.println("开启成功");
        return sqlSessionFactory.openSession();
    }
}

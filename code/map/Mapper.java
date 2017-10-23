package map;

import pojo.Role;
import pojo.Student;
import pojo.UserInfo;

import java.util.List;

public interface Mapper {
    /**
     * 英射器
     *
     */
    public Role getRole(int id);
    public int deleteRole(int id);
    public int insertRole(Role role);
    public int updateRole(Role role);
        //查询返回一个list
    public List<Role> queryrole();
    public List<UserInfo> queryUserInfo();
    public List<Student> queryStudent();
    public  int addStuInfo(Student student);
    public int findStuInfo(Student student);
    public int deleteStudent(int id);
    public  int updateStudent(Student student);






}

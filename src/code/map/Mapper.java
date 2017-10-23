package map;

import pojoc.Student;

public interface Mapper {
    public Student findInfo(Student stu);
    public Student checkUsername(String username);
    public void regStudent(Student stu);
    public int addStuInfo(Student stu);

}

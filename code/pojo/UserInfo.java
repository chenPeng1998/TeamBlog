package pojo;

public class UserInfo {
    private  String name;
    private  double salary;
    private  int age;
    private  int id;

    public UserInfo() {
    }

    public UserInfo(String name, double salary, int age, int id) {
        this.name = name;
        this.salary = salary;
        this.age = age;
        this.id = id;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "name='" + name + '\'' +
                ", salary=" + salary +
                ", age=" + age +
                ", id=" + id +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserInfo(String name, double salary, int age) {
        this.name = name;
        this.salary = salary;
        this.age = age;
    }
}

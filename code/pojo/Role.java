package pojo;

public class Role {

    private String userName;
    private  String passWord;
    private int id;

    public Role() {
    }

    public Role(String userName, String passWord, int id) {
        this.userName = userName;
        this.passWord = passWord;
        this.id = id;
    }

    @Override
    public String toString() {
        return "Role{" +
                "userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", id=" + id +
                '}';
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

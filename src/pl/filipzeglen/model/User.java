package pl.filipzeglen.model;

public class User {

    private int uid;
    private String img;
    private String firstName;
    private String roleName;
    private String password;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User() {
    }

    public User(int uid, String img, String firstName, String roleName, String password) {
        this.uid = uid;
        this.img = img;
        this.firstName = firstName;
        this.roleName = roleName;
        this.password = password;
    }
}
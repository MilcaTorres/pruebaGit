package mx.edu.utez.pruebagit.model;

import java.io.Serializable;

//Been es una sentencia de datos
public class User implements Serializable {
    private String user_name;
    private String email;
    private String pass;
    private String cody;

    // Siempre debe contener los métodos de constructores al menos el vacío y los getters y setters

    //Constructor vacio
    public User(){

    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCody() {
        return cody;
    }

    public void setCody(String cody) {
        this.cody = cody;
    }
}

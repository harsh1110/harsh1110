package net.javaguidens.login.bean;

import java.io.Serializable;

public class LoginBean implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L ;
    private String email;
    private String pass;

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getpass() {
        return pass;
    }

    public void setpass(String pass) {
        this.pass = pass;
    }
}


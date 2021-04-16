package net.javaguidens.login.web;

import java.io.IOException;


import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.javaguidens.login.bean.LoginBean;
import net.javaguidens.login.database.LoginDao;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        LoginBean loginBean = new LoginBean();
        loginBean.setemail(email);
        loginBean.setpass(pass);
        
        try {
            if (loginDao.validate(loginBean)) {
                response.sendRedirect("home.jsp");
            } else {
            	response.sendRedirect("Login_err.jsp");
                HttpSession session = request.getSession();
            }
        } catch (Exception e) {
        	
        	System.out.println(e);
        }

        
    }
}

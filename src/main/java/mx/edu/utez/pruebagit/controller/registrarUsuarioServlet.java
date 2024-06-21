package mx.edu.utez.pruebagit.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.pruebagit.dao.UserDao;
import mx.edu.utez.pruebagit.model.User;

import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/sign_in")
public class registrarUsuarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String user_name = req.getParameter("user_name");
        String pass1 = req.getParameter("pass1");
        String pass2 = req.getParameter("pass2");
        String email = req.getParameter("email");
        User u = new User();
        u.setUser_name(user_name);
        if(pass1.equals(pass2)){
            u.setPass(pass1);
        }else{
            resp.sendRedirect("registroUsuario.jsp");
        }
        u.setEmail(email);
        UserDao dao = new UserDao();
        if(dao.insert(u)){
            //Sí se insertó
        }else{
            //No se insertó
        }
        resp.sendRedirect("verUsuarios.jsp");
    }

    public void destroy() {

    }

    public void init() throws ServletException {

    }
}

package Servlets;

import DB.DBConnection;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("/login.jsp").forward(req,resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String email=req.getParameter("email");
    String password=req.getParameter("password");
    String name=req.getParameter("password");
    Users user=DBConnection.getUsers(email);
    if(user!=null && user.getPassword().equals(password)){
      resp.sendRedirect("/profile");
    }else{
      resp.sendRedirect("/login?passwordError");
    }
  }
}

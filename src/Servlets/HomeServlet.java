package Servlets;

import DB.DBConnection;
import Models.Items;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ArrayList<Items> items= DBConnection.getItems();
    request.setAttribute("tovary",items);
    request.getRequestDispatcher("/home.jsp").forward(request,response);
  }
}

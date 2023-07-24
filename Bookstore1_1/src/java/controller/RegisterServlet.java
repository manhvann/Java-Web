/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dal.DAO;
import java.io.IOException;
import model.Admin;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DAO dao;

    @Override
    public void init() throws ServletException {
        super.init();
        dao = new DAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String confirmPassword = request.getParameter("repass");

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("index.jsp");
            return;
        }

        int role = 2; // Default role

        Admin admin = new Admin(username, password, role);

        
        boolean success = dao.saveAdmin(admin);

        if (success) {
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("errorRegister", "Nhập lại thông tin!!");
            response.sendRedirect("index.jsp");
        }
    }
}
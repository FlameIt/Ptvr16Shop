/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.Role;
import entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import securitylogic.RoleLogic;
import utils.PagePathLoader;

/**
 *
 * @author
 */
@WebServlet(name = "SessionContextServlet", urlPatterns = {
    "/SessionContextServlet",
    "/index",})
public class SessionContextServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        RoleLogic rl = new RoleLogic();
        HttpSession session = request.getSession(false);
        if (session == null) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("index")).forward(request, response);
            return;
        }
        User regUser = (User) session.getAttribute("regUser");
        if (regUser == null) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("index")).forward(request, response);
            return;
        }
        Role role = rl.getRole(regUser);
        request.setAttribute("role", role);
        if (role.getName().equals(RoleLogic.ROLE.ADMINISTRATOR.toString())) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("adminIndex")).forward(request, response);
            return;
        }
        if (role.getName().equals(RoleLogic.ROLE.DIRECTOR.toString())) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("directorIndex")).forward(request, response);
            return;
        }
        if (role.getName().equals(RoleLogic.ROLE.MANAGER.toString())) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("managerIndex")).forward(request, response);
            return;
        }
        if (role.getName().equals(RoleLogic.ROLE.SELLER.toString())) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("sellerIndex")).forward(request, response);
            return;
        }
        if (role.getName().equals(RoleLogic.ROLE.USER.toString())) {
            request.getRequestDispatcher(PagePathLoader.getPagePath("userIndex")).forward(request, response);
            return;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

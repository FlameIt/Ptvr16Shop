/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.Customer;
import entity.Role;
import entity.User;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import securitylogic.RoleLogic;
import session.CustomerFacade;
import session.RoleFacade;
import session.UserFacade;
import session.UserRolesFacade;
import utils.Encription;
import utils.PagePathLoader;

/**
 *
 * @author 
 */
@WebServlet(name = "AdminController", loadOnStartup = 1, urlPatterns = {
     "/changePassword",

})
public class AdminController extends HttpServlet {
    @EJB private UserFacade userFacade;
    @EJB private RoleFacade roleFacade;
    @EJB private CustomerFacade customerFacade;
    @EJB private UserRolesFacade userRolesFacade;
    
    @Override
    public void init() throws ServletException {
        List<User> listUsers = userFacade.findAll();
        if(!listUsers.isEmpty()){
            return;
        }
         Customer customer = new Customer("anastassia","golovanova@gmail.com","golovanova","Johvi",500);
        customerFacade.create(customer);
        Encription encription = new Encription();
        String password = encription.getEncriptionPass("admin");
        User user = new User("admin", password, true, customer);
        userFacade.create(user);
        Role role = new Role(RoleLogic.ROLE.ADMINISTRATOR.toString());
        roleFacade.create(role);
        role.setName(RoleLogic.ROLE.DIRECTOR.toString());
        roleFacade.create(role);
        role.setName(RoleLogic.ROLE.MANAGER.toString());
        roleFacade.create(role);
        role.setName(RoleLogic.ROLE.SELLER.toString());
        roleFacade.create(role);
        role.setName(RoleLogic.ROLE.USER.toString());
        roleFacade.create(role);
        RoleLogic rl = new RoleLogic();
        role = rl.getRole(RoleLogic.ROLE.ADMINISTRATOR.toString());
        rl.setRole(role, user);
    }
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
         Encription encription = new Encription();
        RoleLogic rl = new RoleLogic();
        HttpSession session = request.getSession(false);
        if(session == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        User regUser = (User) session.getAttribute("regUser");
        if(regUser == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
            return;
        }
        if(!rl.isRole(RoleLogic.ROLE.ADMINISTRATOR.toString(), regUser)){
            request.setAttribute("info", "Вы должны быть администратором!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
            return;
        }
        request.setAttribute("role", rl.getRole(regUser));
        
        String path = request.getServletPath();
        if(null != path) switch (path) {
            case "/changePassword":
                String username = regUser.getCustomer().getName()+" "+regUser.getCustomer().getSurname();
                request.setAttribute("username", username);
                String login = regUser.getLogin();
                request.setAttribute("login", login);
                request.getRequestDispatcher(PagePathLoader.getPagePath("changePassword")).forward(request, response);
                
                String oldPassword = request.getParameter("oldPassword");
                String encriptOldPassword = encription.getEncriptionPass(oldPassword);
                if(!encriptOldPassword.equals(regUser.getPassword())){
                    request.setAttribute("info", "Вы должны войти");
                    request.getRequestDispatcher("/showLogin").forward(request, response);
                    break;
                }
                String newPassword1 = request.getParameter("newPassword1");
                String newPassword2 = request.getParameter("newPassword2");
                if(newPassword1.equals(newPassword2)){
                    regUser.setPassword(encription.getEncriptionPass(newPassword1));
                    userFacade.edit(regUser);
                }
                request.setAttribute("info", "Вы успешно изменили пароль");
                request.getRequestDispatcher("/logout");
                request.getRequestDispatcher("/showLogin").forward(request, response);
                break;  
        
        
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
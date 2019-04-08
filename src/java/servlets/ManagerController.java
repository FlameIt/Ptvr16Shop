/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.Product;
import entity.Cover;
import entity.CoverProduct;
import entity.History;
import entity.Customer;
import entity.User;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import securitylogic.RoleLogic;
import session.ProductFacade;
import session.CoverProductFacade;
import session.CoverFacade;
import session.HistoryFacade;
import session.CustomerFacade;
import session.UserRolesFacade;
import utils.PagePathLoader;

/**
 *
 * @author 
 */
@WebServlet(name = "ManagerController", urlPatterns = {
    "/showListCustomers",
    "/showPageForReturnProduct",
    "/showAddNewProduct",
    "/addNewProduct",
    "/showAddNewCustomer",
    "/showUploadFile",
    
})
public class ManagerController extends HttpServlet {
    @EJB private ProductFacade productFacade;
    @EJB private CustomerFacade customerFacade;
    @EJB private HistoryFacade historyFacade;
    @EJB private UserRolesFacade userRolesFacade;
    @EJB private CoverFacade coverFacade;
    @EJB private CoverProductFacade coverProductFacade;
    
    
    
    
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
        Calendar c = new GregorianCalendar();
        
        HttpSession session = request.getSession(false);
        if(session == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        User regUser = (User) session.getAttribute("regUser");
        if(regUser == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        Boolean isRole = rl.isRole(RoleLogic.ROLE.MANAGER.toString(), regUser);
        if(!isRole){
            request.setAttribute("info", "Вы должны быть менеджером!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        
        request.setAttribute("role", rl.getRole(regUser));
        
        String path = request.getServletPath();
        
        switch (path) {
            case "/showListCustomers":
                List<Customer> listCustomers = customerFacade.findAll();
                request.setAttribute("listCustomers", listCustomers);
                request.setAttribute("info", "showListCustomers,привет из сервлета!");
                request.getRequestDispatcher(PagePathLoader.getPagePath("showListCustomers")).forward(request, response);
                break;
            
            case "/showAddNewProduct":
                List<Cover> listCovers = coverFacade.findAll();
                request.setAttribute("listCovers", listCovers);
                request.getRequestDispatcher(PagePathLoader.getPagePath("showAddNewProduct")).forward(request, response);
                break;
            case "/addNewProduct":
                String name = request.getParameter("name");
                String price = request.getParameter("price");             
                String count = request.getParameter("count");
                Product product = new Product(name,new Integer(price),  new Integer(count));
                productFacade.create(product);
                String coverId = request.getParameter("coverId");
                Cover cover = coverFacade.find(new Long(coverId));
                CoverProduct coverProduct = new CoverProduct(product, cover);
                coverProductFacade.create(coverProduct);
                request.setAttribute("info", "product \""+product.getName()+"\"добавлена");
                request.getRequestDispatcher(PagePathLoader.getPagePath("index")).forward(request, response);
                break;
            case "/showAddNewCustomer":
                request.getRequestDispatcher(PagePathLoader.getPagePath("showAddNewCustomer")).forward(request, response);
                break;

            case "/showUploadFile":
                request.getRequestDispatcher(PagePathLoader.getPagePath("showUploadFile")).forward(request, response);
                break;
            default:   
                request.setAttribute("info", "Нет такой странички");
                request.getRequestDispatcher(PagePathLoader.getPagePath("managerIndex")).forward(request, response);
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

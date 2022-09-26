package control;

import DAO.AccountDao;
import DAO.AccountDaoImpl;
import DAO.UserDAO;
import entity.Account;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Long
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private AccountDao accountDao;

    public LoginController() {
        this.accountDao = new AccountDaoImpl();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDAO userdao = new UserDAO();
        String mess = "Username or password incorrect";
        Account a = accountDao.findByUserNameAndPassword(username, password);
        if (a == null) {
            mess = "Username or password incorrect";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("view/Login.jsp").forward(request, response);
        } else {
//            TODO need to implement later
//            HttpSession session = request.getSession();
//            session.setAttribute("acc", a);
//            if(a.getIsUser() == 1){
//                response.sendRedirect("userhome");
//            }else if(a.getIsManager()==1) {
//                response.sendRedirect("managerhome");
//            }else if(a.getIsDoctor()==1){
//                response.sendRedirect("doctorhome");
//            }
        }
        request.setAttribute(mess, "mess");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            request.getRequestDispatcher("view/Login.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

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

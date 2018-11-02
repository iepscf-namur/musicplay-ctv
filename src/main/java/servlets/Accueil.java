//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Accueil extends HttpServlet {
    public Accueil() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = "Home";
        int servletInfo = this.getServletContext().getMajorVersion();
        request.setAttribute("title", title);
        request.setAttribute("servletInfo", servletInfo);
        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
    }

    //System.out.println(login+" "+pass);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String login = request.getParameter("login");
        String pass = request.getParameter("id");
        HttpSession session = request.getSession();

        session.setAttribute("login", "");
        session.setAttribute("id", "");


    }

}
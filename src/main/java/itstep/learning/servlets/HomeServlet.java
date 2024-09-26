package itstep.learning.servlets;

import itstep.learning.services.hash.HashService;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Singleton
public class HomeServlet extends HttpServlet {
    private final HashService hashService;

    @Inject
    public HomeServlet(@Named("digest") HashService hashService) {
        this.hashService = hashService;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Object controlAttribute = req.getAttribute("control");
        String controlStatus = (controlAttribute != null && "passed".equals(controlAttribute)) ? "Пройдений" : "Не пройдений";

        String hash = hashService.digest("123");

        req.setAttribute("controlStatus", controlStatus);
        req.setAttribute("hash", hash + "<br/>" + hashService.hashCode() + "<br/>" + this.hashCode());

        req.setAttribute("page", "home");
        req.getRequestDispatcher("WEB-INF/views/_layout.jsp").forward(req, resp);
    }

}
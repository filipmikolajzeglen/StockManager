package pl.filipzeglen.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.filipzeglen.dao.BikeDao;
import pl.filipzeglen.dao.DaoFactory;
import pl.filipzeglen.model.Bike;
import pl.filipzeglen.util.DbOperationException;

@WebServlet("/BikeServlet")
public class BikeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        String description = request.getParameter("description");
        String option = request.getParameter("option");
        try {
            DaoFactory factory = DaoFactory.getDAOFactory(DaoFactory.MYSQL_DAO);
            BikeDao dao = factory.getBikeDao();
            Bike bike = null;
            String operation = null;
            if ("search".equals(option)) {
                bike = dao.read(name);
                operation = "search";
            } else if ("add".equals(option)) {
                bike = new Bike(name, size, description);
                dao.create(bike);
                operation = "add";
            } else if ("update".equals(option)) {
                bike = new Bike(name, size, description);
                dao.update(bike);
                operation = "update";
            } else if ("delete".equals(option)) {
                bike = dao.read(name);
                dao.delete(bike);
                operation = "delete";
            }
            request.setAttribute("option", operation);
            request.setAttribute("bike", bike);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (DbOperationException e) {
            e.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

}
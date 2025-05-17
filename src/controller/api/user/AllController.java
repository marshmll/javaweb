package controller.api.user;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/api/user/all")
public class AllController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        ArrayList<User> users = userDao.getUsers();
        ObjectMapper mapper = new ObjectMapper();

        try {
            String json = mapper.writeValueAsString(users);
            resp.setContentType("application/json");
            resp.getWriter().print(json);   
        } catch (JsonProcessingException e) {
            resp.setStatus(500);
        }
    }
}

package controller.api.user;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/api/user/by_username")
public class ByUsernameController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ObjectMapper mapper = new ObjectMapper();

            String body = req.getReader().lines().reduce(System.lineSeparator(), String::concat);
            JsonNode jsonNode = mapper.readTree(body);
            String username = jsonNode.get("username").asText();

            UserDao userDao = new UserDao();
            User user = userDao.getUserByUsername(username);

            String json = mapper.writeValueAsString(user);

            resp.setContentType("application/json");
            resp.getWriter().print(json);
        } catch (JsonProcessingException e) {
            resp.setStatus(500);
        }
    }
}

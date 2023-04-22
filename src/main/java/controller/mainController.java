package controller;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet(name = "mainController")
public class mainController extends HttpServlet {
    List<Player> players = new ArrayList<>();
    Random random = new Random();
    int numberRandom = random.nextInt(1001);
    int number = 0;
    String message = "";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Player player = new Player();
        System.out.println("check");

        if (number < numberRandom) {
            message = ("Số của bạn vừa nhập nhỏ hơn kết quả.");
        } else if (number > numberRandom) {
            message = ("Số của bạn vừa nhập lớn hơn kết quả.");

        }

        if (number == numberRandom) {
            player.setName("Player " + number);
            player.setScore(100 - number);
            message = ("CHÚC MỪNG BẠN ĐÃ ĐOÁN ĐÚNG!");
            players.add(player);

        }

        req.setAttribute("players", players);
        req.setAttribute("message", message);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

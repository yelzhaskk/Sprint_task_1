package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task6-process")
public class Task6Process extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String name = request.getParameter("full_name");
        int exam = Integer.parseInt(request.getParameter("exam"));

        PrintWriter out = response.getWriter();

        String mark = "F";

        if(exam>=90){
            mark = "A";
        }else if(exam>=75){
            mark = "B";
        }else if(exam>=60){
            mark = "C";
        }else if(exam>=50){
            mark = "D";
        }

        out.print("<h1>" + name + " GOT '" + mark + "' FOR EXAM</h1>");

    }
}

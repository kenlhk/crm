package com.kenlhk.testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {

    protected  void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException {

        // setup connection variables
        String user = "crmadmin";
        String pw = "crmadmin";
        String jdbcurl = "jdbc:postgresql://localhost:5432/crm";
        String driver = "org.postgresql.Driver";

        // get connection to database
        try{
            PrintWriter out = response.getWriter();
            out.println("Connecting to database: " + jdbcurl);
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(jdbcurl, user, pw);
            out.println("Connection success!");
            connection.close();

        }catch (Exception e){
            e.printStackTrace();
            throw new ServletException(e);
        }

    }
}

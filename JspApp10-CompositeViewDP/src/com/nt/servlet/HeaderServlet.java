package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/headerurl")
public class HeaderServlet extends HttpServlet {
	
    
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       PrintWriter pw=null;
		//general settings
       pw=res.getWriter();
       res.setContentType("text/html");
       pw.println("<marquee><h1 style='color:red'>THE  HINDU </h1> </marquee>");
		//do not close stream
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	   doGet(req,res);
	}

}

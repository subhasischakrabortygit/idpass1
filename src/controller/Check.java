package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import database.*;
import java.math.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import java.util.Date;
import database.Dbconnect;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{	
		  	String id=request.getParameter("id");
		  	String pwd=request.getParameter("pwd");
		  	int id1=Integer.parseInt(id);
		  	int pwd1=Integer.parseInt(pwd);
		  	if(id1==pwd1)
		  	{
				  	PrintWriter out=response.getWriter();
				  	String sql="select id,name,atnd,tdate,Enstat from faculty where ID=?";
				  	Connection cn=Dbconnect.getCon();
				  	PreparedStatement ps=cn.prepareStatement(sql);
				  	ps.setInt(1,id1);
				  	ResultSet rs=ps.executeQuery();
				  	
				  	
				  	//-----------------Attendance-----'
				  	Date dateNow= new Date();
					DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				  	String fromdb=""; 	String nowdate = "";  	String nowdat = ""; String stat="";
				  	if(rs.next())
					{
						fromdb= rs.getString(4);
						stat=rs.getString(5);
					}
					nowdat=dateFormat.format(dateNow);
					nowdate=(String)dateFormat.format(dateNow); // convert today date to string
					System.out.println(id1);
					//System.out.println(nowdate); 
				  	//if((!(fromdb.equals(nowdate))) && stat=="on")
				  	if(!(fromdb.equals(nowdate)))
				  	{
					  	String sql1="UPDATE faculty set atnd = atnd+1, tdate='"+nowdate+"' where ID = ?";
					  	PreparedStatement ps1=cn.prepareStatement(sql1);
					  	ps1.setInt(1,id1);
					  	//System.out.println(sql1);
					  	ps1.executeUpdate();  	
				  	}
				  	//-----------------Attendance over---
				  	
				  	String sql2="select id,name,atnd from faculty where ID=?";
				  	
				  	PreparedStatement ps2=cn.prepareStatement(sql2);
				  	ps2.setInt(1,id1);
				  	ResultSet rs2=ps2.executeQuery();
				  	
				  	if(rs2.next())
				  	{	
				  		System.out.println("hi");
				  		HttpSession session=request.getSession();
				  		session.setAttribute("id", rs2.getInt(1));
					    session.setAttribute("name", rs2.getString(2));
					    session.setAttribute("atnd", rs2.getInt(3));
					    out.println("record found");
				  		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
				  		rd.forward(request,response);
				  	}
				  	else{
				  		out.println("record not found... Please register");
				  		RequestDispatcher rd=request.getRequestDispatcher("newreg.jsp");
				  		rd.forward(request,response);
				  	}
		  	}
		  	else
		  	{
		  		System.out.println("Id not valid or password does not match with id");
		  		RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		  		rd.forward(request,response);
		  	}
		  
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}

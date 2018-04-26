
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.Dbconnect;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
/**
 * Servlet implementation class Doorstats
 */
@WebServlet("/Doorstats")
public class Doorstats extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			System.out.println("toPost");  
			String name = request.getParameter("but");
			System.out.println(name);
			  char first=name.charAt(0);
			  String doorstatus="";
			  if(first=='0')
			  {
				  doorstatus="off";
			  }
			  else if(first=='1')
			  {
				  doorstatus="on";
			  }
			  System.out.println(doorstatus);
			  String idi="";
			  for(int i=1;i<=(name.length())-1;i++)
			  {
				  idi+=name.charAt(i);
			  }
			  
			  int id=Integer.parseInt(idi);
			  System.out.println(id);
			String sql="UPDATE faculty set doorstatus=? where id=?";
			Connection con=Dbconnect.getCon();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,doorstatus);
			ps.setInt(2, id);
			ps.executeUpdate();
       			
		    RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
	  		rd.forward(request,response);
		}
			  catch(Exception e)
			  {
					e.printStackTrace();
			  }
	}

}

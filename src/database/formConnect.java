package database;
import java.sql.*;
import java.util.*;
import java.util.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
//import org.json.JSONObject;
import org.json.JSONException;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;

//import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * Servlet implementation class formConnect
 */
@WebServlet("/formConnect")
public class formConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i;
		try {
			PrintWriter out=response.getWriter();

			int id=Integer.parseInt(request.getParameter("id1"));
			
			String name=request.getParameter("name");
			String tmp="";
			String tmpy="";
			String tmps="";
			String tmpc="";
			//--------MONDAY--------
			String m[] = new String[11];
			String my[] = new String[11];
			String ms[] = new String[11];
			String mc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("m"+i);
				tmpy = request.getParameter("my"+i);
				tmps = request.getParameter("ms"+i);
				tmpc = request.getParameter("mc"+i);
				if (tmp == "")
				{
					m[i-1] = "free";
					my[i-1] = "free";
					ms[i-1] = "free";
					mc[i-1] = "free";
				}
				else
				{
					m[i-1]=tmp;
					my[i-1] = tmpy;
					ms[i-1] = tmps;
					mc[i-1] = tmpc;
				}
			}
			tmp="";
			tmpy="";
			tmps="";
			tmpc="";
			//--------TUESDAY--------
			String tu[] = new String[11];
			String tuy[] = new String[11];
			String tus[] = new String[11];
			String tuc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("tu"+i);
				tmpy = request.getParameter("tuy"+i);
				tmps = request.getParameter("tus"+i);
				tmpc = request.getParameter("tuc"+i);
				if (tmp == "")
				{
					tu[i-1] = "free";
					tuy[i-1] = "free";
					tus[i-1] = "free";
					tuc[i-1] = "free";
				}
				else
				{
					tu[i-1]=tmp;
					tuy[i-1] = tmpy;
					tus[i-1] = tmps;
					tuc[i-1] = tmpc;
				}
			}
			
			tmp="";
			tmpy="";
			tmps="";
			tmpc="";
			//--------WEDNESDAY--------
			String w[] = new String[11];
			String wy[] = new String[11];
			String ws[] = new String[11];
			String wc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("w"+i);
				tmpy = request.getParameter("wy"+i);
				tmps = request.getParameter("ws"+i);
				tmpc = request.getParameter("wc"+i);
				if (tmp == "")
				{
					w[i-1] = "free";
					wy[i-1] = "free";
					ws[i-1] = "free";
					wc[i-1] = "free";
				}
				else
				{
					w[i-1]=tmp;
					wy[i-1] = tmpy;
					ws[i-1] = tmps;
					wc[i-1] = tmpc;
				}
			}
			
			tmp="";
			tmpy="";
			tmps="";
			tmpc="";
			//--------THURSDAY--------
			String th[] = new String[11];
			String thy[] = new String[11];
			String ths[] = new String[11];
			String thc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("th"+i);
				tmpy = request.getParameter("thy"+i);
				tmps = request.getParameter("ths"+i);
				tmpc = request.getParameter("thc"+i);
				if (tmp == "")
				{
					th[i-1] = "free";
					thy[i-1] = "free";
					ths[i-1] = "free";
					thc[i-1] = "free";
				}
				else
				{
					th[i-1]=tmp;
					thy[i-1] = tmpy;
					ths[i-1] = tmps;
					thc[i-1] = tmpc;
				}
			}
			
			tmp="";
			tmpy="";
			tmps="";
			tmpc="";
			//--------FRIDAY--------
			String f[] = new String[11];
			String fy[] = new String[11];
			String fs[] = new String[11];
			String fc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("f"+i);
				tmpy = request.getParameter("fy"+i);
				tmps = request.getParameter("fs"+i);
				tmpc = request.getParameter("fc"+i);
				if (tmp == "")
				{
					f[i-1] = "free";
					fy[i-1] = "free";
					fs[i-1] = "free";
					fc[i-1] = "free";
				}
				else
				{
					f[i-1]=tmp;
					fy[i-1] = tmpy;
					fs[i-1] = tmps;
					fc[i-1] = tmpc;
				}
			}
			tmp="";
			tmpy="";
			tmps="";
			tmpc="";
			
			//--------SATURDAY--------
			String s[] = new String[11];
			String sy[] = new String[11];
			String ss[] = new String[11];
			String sc[] = new String[11];
			for(i=1;i<=11;i++)
			{
				tmp = request.getParameter("s"+i);
				tmpy = request.getParameter("sy"+i);
				tmps = request.getParameter("ss"+i);
				tmpc = request.getParameter("sc"+i);
				if (tmp == "")
				{
					s[i-1] = "free";
					sy[i-1] = "free";
					ss[i-1] = "free";
					sc[i-1] = "free";
				}
				else
				{
					s[i-1]=tmp;
					sy[i-1] = tmpy;
					ss[i-1] = tmps;
					sc[i-1] = tmpc;
				}
			}
			
	// ---------------------------------------------------------
	//----------------------------------------------------------
			
			
			//--------MONDAY-------		
			JSONArray mon = new JSONArray();
		    JSONObject json_m = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
				json_m.put("sub"+i,m[i-1]);
				json_m.put("yr"+i, my[i-1]);
				json_m.put("sec"+i, ms[i-1]);
				json_m.put("camp"+i, mc[i-1]);
			}
		    
		    mon.put(json_m);
		    
		    //---------TUESDAY------
		    JSONArray tue = new JSONArray();
		    JSONObject json_tu = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
		    	json_tu.put("sub"+i,tu[i-1]);
				json_tu.put("yr"+i, tuy[i-1]);
				json_tu.put("sec"+i, tus[i-1]);
				json_tu.put("camp"+i, tuc[i-1]);
			}
		    tue.put(json_tu);
		    
		  //--------WEDNESDAY-------		
			JSONArray wed = new JSONArray();
		    JSONObject json_w = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
		    	json_w.put("sub"+i,w[i-1]);
				json_w.put("yr"+i, wy[i-1]);
				json_w.put("sec"+i, ws[i-1]);
				json_w.put("camp"+i, wc[i-1]);
			}
		    wed.put(json_w);
		    
		    //---------THURSDAY------
		    JSONArray thr = new JSONArray();
		    JSONObject json_th = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
		    	json_th.put("sub"+i,th[i-1]);
				json_th.put("yr"+i, thy[i-1]);
				json_th.put("sec"+i, ths[i-1]);
				json_th.put("camp"+i, thc[i-1]);
			}
		    thr.put(json_th);
		    
		  //--------FRIDAY-------		
			JSONArray fri = new JSONArray();
		    JSONObject json_f = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
		    	json_f.put("sub"+i,f[i-1]);
				json_f.put("yr"+i, fy[i-1]);
				json_f.put("sec"+i, fs[i-1]);
				json_f.put("camp"+i, fc[i-1]);
			}
		    fri.put(json_f);
		    
		  //--------SATURDAY-------		
			JSONArray sat = new JSONArray();
		    JSONObject json_s = new JSONObject();
		    for(i=1;i<=11;i++)
		    {
		    	json_s.put("sub"+i,s[i-1]);
				json_s.put("yr"+i, sy[i-1]);
				json_s.put("sec"+i, ss[i-1]);
				json_s.put("camp"+i, sc[i-1]);
			}
		    sat.put(json_s);
		    
		    
		    
			//Prints out to HTML page
			out.println(mon);
			out.println(tue);
			out.println(wed);
			out.println(thr);
			out.println(fri);
			out.println(sat);
			
			
			System.out.println(name);
			System.out.println(mon);
			Date dateNow= new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		  	String fromdb=""; 	String nowdate = "";  	String nowdat = "";
			nowdat=dateFormat.format(dateNow);
			nowdate=(String)dateFormat.format(dateNow); // c
			String sql="insert into faculty values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			Connection con=Dbconnect.getCon();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			ps.setString(2, name);
			ps.setString(3, mon.toString());
			ps.setString(4, tue.toString());
			ps.setString(5, wed.toString());
			ps.setString(6, thr.toString());
			ps.setString(7, fri.toString());
			ps.setString(8, sat.toString());
			ps.setInt(9, 28);
			ps.setString(10,nowdate );
			ps.setString(11,"out");
			ps.setString(12,"off");
			ps.setString(13,"esp1d7");   //as no other pins left
			ps.execute();
			
			System.out.println("Database Connected Successfully... ");
			out.println("record saved...");
									
			RequestDispatcher rd=request.getRequestDispatcher("thanks.html");
			
			rd.include(request, response);
		}


		catch(Exception e){
			e.printStackTrace();	
					
		} 
	}
}



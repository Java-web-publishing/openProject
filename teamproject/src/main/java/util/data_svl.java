package util;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.userDAO;

/**
 * Servlet implementation class data_svl
 */
@WebServlet("/data_svl")
public class data_svl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public data_svl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public String getJSON(String search_data) {
	      if(search_data == null) {search_data = "";}    
	      StringBuffer result = new StringBuffer(""); 
	      
	      
	      result.append("{\"result\":[");
	      
	      userDAO userDao = new userDAO();
	      ArrayList<userDAO> datalist = userDAO.getdata(search_data);   
	      
	      
	         for(int i = 0; i < datalist.size(); i++) {
	        	 if (  datalist.size() == 1){
	        		 result.append("[{\"value\": \"" + datalist.get(i).getDTOno() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOid() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOpw() + "\"}]");
	        	 } else if(i < datalist.size() -1 ) {
	        		 result.append("[{\"value\": \"" + datalist.get(i).getDTOno() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOid() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOpw() + "\"}],");
	        	 } else {
	        		 result.append("[{\"value\": \"" + datalist.get(i).getDTOno() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOid() + "\"},");
	                 result.append("{\"value\": \"" + datalist.get(i).getDTOpw() + "\"}]");
	        	 }
	        	 
	             
	          }
	         result.append("]}");
	   
	      return result.toString();      
	   }

}

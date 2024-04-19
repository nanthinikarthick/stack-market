/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.stockmarket.analysis;

import com.nhefner.main.StockFetcher;
import com.stockmarket.dbconnection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Math.random;
import java.math.BigDecimal;
import java.sql.Statement;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import yahoofinance.Stock;
import yahoofinance.YahooFinance;

/**
 *
 * @author Purushot
 */
public class GetPrice extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            
            HttpSession session = request.getSession();
            String ticker = request.getParameter("ticker");
            String username = (String) session.getAttribute("username");
            
            
            
  com.nhefner.main.Stock facebook;
            facebook = StockFetcher.getStock(ticker);
		System.out.println("Price: " + facebook.getPrice());
		System.out.println("Volume: " + facebook.getVolume()); 
		System.out.println("P/E: " + facebook.getPe());
		System.out.println("EPS: " + facebook.getEps());
		System.out.println("Year Low: " + facebook.getWeek52low());
		System.out.println("Year High: " + facebook.getWeek52high());
		System.out.println("Day Low: " + facebook.getDaylow());
		System.out.println("Day High: " + facebook.getDayhigh());
		System.out.println("50 Day Moving Av: " + facebook.getMovingav50day());
		System.out.println("Market Cap: " + facebook.getMarketcap());
		System.out.println("The full name is: " + facebook.getName());
		System.out.println("The currency is: " + facebook.getCurrency());
		System.out.println("The short ratio is: " + facebook.getShortRatio());
		System.out.println("The previous close was: " + facebook.getPreviousClose());
		System.out.println("The open for today was: " + facebook.getOpen());
		System.out.println("The exchange is " + facebook.getExchange());
		
            
            //Stock stock = YahooFinance.get(ticker);
            //BigDecimal price = stock.getQuote().getPrice();
            
            
           
            
//            Random randomGenerator = new Random();            
//            int randomInt = randomGenerator.nextInt();
//            int max=10000;
//            int min=1;
//            int number = random.nextInt(max + 1 -min) + min; 
            
            
            int i=0;
            try{
            DBConnection con = new DBConnection();
            Statement st = con.getStatement();
          
            i = st.executeUpdate("insert into viewprice(ticker,username,price)values('"+facebook.getSymbol()+"','"+username+"','"+ facebook.getPrice()+"');");
            }
            catch(Exception e){
                e.printStackTrace();
            }
            if(i>0){               
                request.setAttribute("msg",facebook.getSymbol()+" Ticker Price = "+ facebook.getPrice());               
            }else{
                request.setAttribute("msg","Sorry Try Again!!! ");
                System.out.println( facebook.getPrice());
                        
            }
            if(username.equalsIgnoreCase("admin"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("adminhome.jsp");
                rd.forward(request, response);
            }
            else
            {
                RequestDispatcher rd = request.getRequestDispatcher("userhome.jsp");
                rd.forward(request, response);
            }
 
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

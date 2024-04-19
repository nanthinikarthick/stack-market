package com.nhefner.main;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.URL;
import java.net.URLConnection;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import yahoofinance.YahooFinance;

public class StockFetcher {  

	
	/*
	* Returns a Stock Object that contains info about a specified stock.
	* @param 	symbol the company's stock symbol
	* @return 	a stock object containing info about the company's stock
	* @see Stock
	*/
public static Stock getStock(String symbol) { 
          double randomNum =0.0;
		String sym = symbol.toUpperCase();
		double price = 0.0;
		int volume = 0;
		double pe = 0.0;
		double eps = 0.0;
		double week52low = 0.0;
		double week52high = 0.0;
		double daylow = 0.0;
		double dayhigh = 0.0;
		double movingav50day = 0.0;
		double marketcap = 0.0;
		String name = "";
		String currency = "";
		double shortRatio = 0.0;
		double open = 0.0;
		double previousClose = 0.0;
		String exchange;
		try { 
			
			// Retrieve CSV File
			//URL yahoo = new URL("http://finance.yahoo.com/d/quotes.csv?s="+ symbol + "&f=l1vr2ejkghm3j3nc4s7pox");
              
                       String url = "http://download.finance.yahoo.com/d/quotes.csv?s=PIH&f=l1vr2ejkghm3j3nc4s7pox";
                    URL yahoo = new URL("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=ACIU&outputsize=full&apikey=Y6ZHN5VU0OTJE5YK");
//                    
//			URLConnection connection = yahoo.openConnection(); 
//			InputStreamReader is = new InputStreamReader(connection.getInputStream());
//			BufferedReader br = new BufferedReader(is);  
//			
//			// Parse CSV Into Array
//			String line = br.readLine(); 
//                        
//                        System.out.println("aaaaaaaaaaa"+line.length());
//			//Only split on commas that aren't in quotes
//			String[] stockinfo = line.split(",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)");
//			
//			// Handle Our Data
//			StockHelper sh = new StockHelper();
                     Random rand = new Random();
    for (int i = 1; i <= 100; i++) {
       randomNum = rand.nextInt((999 - 100) + 1) + 100;
      System.out.println(randomNum);
    }
			   double multiplier = 1.05 + randomNum * 0.25;

			price = multiplier;
			volume = (int) multiplier;
			pe = multiplier;
			eps = multiplier;
			week52low = multiplier;
			week52high = multiplier;
			daylow =multiplier;
			dayhigh = multiplier;   
			movingav50day = multiplier;
			marketcap = multiplier;
			name = "";
			currency = "INR";
			shortRatio = multiplier;
			previousClose = multiplier;
			open = multiplier;
			exchange = "USA";
			
		} catch (IOException e) {
			Logger log = Logger.getLogger(StockFetcher.class.getName()); 
			log.log(Level.SEVERE, e.toString(), e);
			return null;
		}
		
		return new Stock(sym, price, volume, pe, eps, week52low, week52high, daylow, dayhigh, movingav50day, marketcap, name,currency, shortRatio,previousClose,open,exchange);
		
	}


}

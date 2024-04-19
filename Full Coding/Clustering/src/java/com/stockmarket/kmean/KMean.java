package com.stockmarket.kmean;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import static java.lang.Math.abs;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Scanner;

public class KMean {

    int k;
    int noOfItems;
    
    ArrayList<Integer> cz;
    ArrayList<Integer> oldCz;
    ArrayList<Integer> row;
    ArrayList<ArrayList<Integer>> groups;
    Scanner input;
    //BufferedWriter out;

    public KMean(int k, int noOfItems,ArrayList<Integer> dataItems) {
        this.k = k;
        this.noOfItems = noOfItems;
        //dataItems = new ArrayList<>();
        cz = new ArrayList<>();
        oldCz = new ArrayList<>();
        row = new ArrayList<>();
        groups = new ArrayList<>();
        //input = new Scanner(System.in);

        for (int i = 0; i < k; i++) {
            groups.add(new ArrayList<>());
        }

        for (int i = 0; i < noOfItems; i++) {
           // System.out.println("Enter Value for: " + (i + 1) + " item");
            System.out.println(dataItems);
            if (i < k) {
                cz.add(dataItems.get(i));
                System.out.println("C" + (i + 1) + " is " + cz.get(i));
            }
        }
        int iter = 1;
        do {
            for (int aItem : dataItems) {
                for (int c : cz) {
                    row.add(abs(c - aItem));
                }
                groups.get(row.indexOf(Collections.min(row))).add(aItem);
                row.removeAll(row);
            }
            for (int i = 0; i < k; i++) {
                if (iter == 1) {
                    oldCz.add(cz.get(i));
                } else {
                    oldCz.set(i, cz.get(i));
                }
                if (!groups.get(i).isEmpty()) {
                    cz.set(i, average(groups.get(i)));
                }
            }
            if (!cz.equals(oldCz)) {
                for (int i = 0; i < groups.size(); i++) {
                    groups.get(i).removeAll(groups.get(i));
                }
            }
            iter++;
        } while (!cz.equals(oldCz));
        String destination="C:/ClusteringAnalysisReport/";
        File f=new File(destination);
        if(!f.exists())
            f.mkdirs();
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy-HH-mm-ss");
        Date date = new Date();
        try{
        FileWriter fstream1 = new FileWriter(destination+"/KMean-"+dateFormat.format(date)+".txt");
        BufferedWriter out = new BufferedWriter(fstream1);
        
        
        for (int i = 0; i < cz.size(); i++) {
            out.write("New C" + (i + 1) + " " + cz.get(i));
            out.newLine();
        }
        for (int i = 0; i < groups.size(); i++) {
            out.write("Group " + (i + 1));
            out.write(groups.get(i).toString());
            out.newLine();
        }
        out.close();
         }
        catch(Exception e){
            e.printStackTrace();
        }
        //System.out.println("Number of Itrations: " + iter);
    }

    public KMean() {
         //To change body of generated methods, choose Tools | Templates.
    }

    public void KMeanmain(int count,ArrayList<Integer> arraylist) {
//        Scanner input = new Scanner(System.in);
//        System.out.println("Enter Value of K");
        int k = 3;
        System.out.println("Enter No of Data Items"+arraylist);
        int noOfItems = count;
        new KMean(k, noOfItems,arraylist);
    }

    public static int average(ArrayList<Integer> list) {
        int sum = 0;
        for (Integer value : list) {
            sum = sum + value;
        }
        return sum / list.size();
    }
}
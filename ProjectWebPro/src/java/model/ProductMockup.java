package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.StringTokenizer;

/**
 *
 * @author Khaitong
 */
public class ProductMockup {

    private static Map<String, Product> products;
    private static List<Product> productList;
    private static String fileLocation;

    public static String getFileLocation() {
        return fileLocation;
    }

    public static void setFileLocation(String fileLocation) {
        ProductMockup.fileLocation = fileLocation;
    }

    public static List<Product> getProducts() {
        if (products == null || productList == null) {
            readProduct();
        }
        return Collections.unmodifiableList(productList);
    }

    public static Product getProduct(String productCode) {
        if (products == null || productList == null) {
            readProduct();
        }
        return products.get(productCode);
    }

    public static void readProduct() {
        try {
            File file = new File(fileLocation);
            Scanner sc = new Scanner(file);
            products = new HashMap(144);
            Product p = null;
            List<String> fields = new ArrayList(7);
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                StringTokenizer stknz = new StringTokenizer(line, "\t\"");
                p = new Product();
                fields.clear();;
                while (stknz.hasMoreElements()) {
                    fields.add(stknz.nextToken().trim());
                }
                System.out.println(fields.get(0));
                System.out.println(fields.get(1));
                System.out.println(fields.get(2));
                System.out.println(fields.get(3));
                System.out.println(fields.get(4));
                System.out.println(fields.get(5));
                System.out.println("-----------");

                p.setProductcode((String) fields.get(0));
                p.setProductname((String) fields.get(1));
                p.setProductdescription((String) fields.get(2));
                p.setProductcolor((String) fields.get(3));
//                p.setQuantityinstock((Double) fields.get(4));
                p.setProducttype((String) fields.get(4));
                p.setSex((String) fields.get(5));
                p.setSize((String) fields.get(6));
                p.setWarrenty((String) fields.get(7));
                products.put(p.getProductcode(), p);
            }
            productList = new ArrayList(products.values());
        } catch (FileNotFoundException ex) {
            System.out.println(ex);
        }
    }
}
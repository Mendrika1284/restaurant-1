/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import connexion.Connexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author Jupiter
 */
public class Ingredient {
    int id;
    String nomIngredient;
    int prix;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomIngredient() {
        return nomIngredient;
    }

    public void setNomIngredient(String nomIngredient) {
        this.nomIngredient = nomIngredient;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public Ingredient(int id, String nomIngredient, int prix) {
        this.id = id;
        this.nomIngredient = nomIngredient;
        this.prix = prix;
    }

    public Ingredient() {
    }
    
    public void insertIntoIngredient( String nomIngredient, int prix )throws Exception{
        String req="INSERT INTO Ingredient(nomIngredient, prix) VALUES ('"+nomIngredient+"',"+prix+")";
        System.out.println(req);
        Connexion con = new Connexion();
        Connection c = con.getCon();
        Statement s = c.createStatement();
        s.executeUpdate(req);   
        c.commit();
    }
    
    
public Ingredient[] findAllIngredient()throws Exception{
Vector<Ingredient> v = new Vector();
        
        Connexion oracle = new Connexion();
        Connection con = oracle.getCon();
        java.sql.Statement stm = con.createStatement();
        String req = "SELECT * FROM Ingredient order by nomIngredient";
        ResultSet res = stm.executeQuery(req);
        while(res.next()){
              Ingredient a = new Ingredient(res.getInt("id"),res.getString("nomIngredient"),res.getInt("prix"));
              v.add(a);
        }
        Ingredient[] ct = new Ingredient[0];
        Ingredient[] cat = (Ingredient[]) v.toArray(ct);
        stm.close();
        con.close();
        res.close();
         return cat;    
    }

}

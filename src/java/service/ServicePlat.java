/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.Plat;

/**
 *
 * @author Jupiter
 */
public class ServicePlat {
    public Plat[] findAllPlatDAO()throws Exception{
        Plat p = new Plat();
        Plat[] pl = p.findAllPlat();
        return pl;
    }
      
    public Plat[] findPlatCategorieDAO(int n) throws Exception{
        Plat p = new Plat();
        Plat[] pl = p.findPlatByCategorie(n);
        return pl;
    }

    public void insertPlatDAO(String nomIngredient,int prix, int idCategorie)throws Exception{
        Plat cat = new Plat();
        cat.insertIntoPlat(nomIngredient, prix,idCategorie);
    }
}

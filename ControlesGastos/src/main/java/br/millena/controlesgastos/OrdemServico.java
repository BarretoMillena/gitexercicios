/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.millena.controlesgastos;

import java.util.Date;

/**
 *
 * @author aluno
 */
public class OrdemServico {

    /**
     * @return the data
     */
    public Date getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(Date data) {
        this.data = data;
    }

    /**
     * @return the valortotal
     */
    public double getValortotal() {
        return valortotal;
    }

    /**
     * @param valortotal the valortotal to set
     */
    public void setValortotal(double valortotal) {
        this.valortotal = valortotal;
    }
    
    private Date data; 
    private double valortotal; 
    
    
    
}

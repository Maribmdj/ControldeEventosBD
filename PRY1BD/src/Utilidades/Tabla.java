/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 * @author Nakisha Dixon
 */

public class Tabla {
    
    public void ver_tabla(JTable tabla){
        
            DefaultTableModel deftable = new DefaultTableModel(
            new Object[][]{{"1","Maria"},{"2","Pedro"},{"3","Jesus"},{"4","Juan"}},
            new Object[]{"Codigo","Nombre"}
    );
    
    tabla.setModel(deftable);
    }
    
}

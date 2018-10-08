/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;


public class Tabla{
    private DefaultTableModel d;
    static int cont =0;
    
    
    public void ver_eventos(JTable tabla){
        
        tabla.setDefaultRenderer(Object.class, new Render());
        
        JButton btn1 = new JButton("Modificar");
        btn1.setName("m");
        JButton btn2 = new JButton("Eliminar");
        btn2.setName("e");
        JButton btn3 = new JButton("Ver");
        btn2.setName("a");
        
        d = new DefaultTableModel
        (
                new Object[][]{},
                new Object[]{"Nombre","Lugar","Fecha Inicio","Fecha Fin","Eliminar", "Modificar","Ver Actividades"}
        )
        {
            public boolean isCellEditable(int row, int column){
                return false;
            }
        };
        
        tabla.setModel(d);
        
        tabla.setPreferredScrollableViewportSize(tabla.getPreferredSize());
 
    }
    
    //Actividades por evento
    public void ver_actividades(JTable tabla){
        
        tabla.setDefaultRenderer(Object.class, new Render());
        
        JButton btn1 = new JButton("Modificar");
        btn1.setName("m");
        JButton btn2 = new JButton("Eliminar");
        btn2.setName("e");
        JButton btn3 = new JButton("Ver");
        btn2.setName("a");
        
        d = new DefaultTableModel
        (
                new Object[][]{},
                new Object[]{"Nombre","Lugar","Fecha","Fecha Inicio","Fecha Fin","Eliminar", "Modificar","Ver Actividades"}
        )
        {
            public boolean isCellEditable(int row, int column){
                return false;
            }
        };
        
        tabla.setModel(d);
        
        tabla.setPreferredScrollableViewportSize(tabla.getPreferredSize());
 
    }
    
    public void ingresar_actividad(){
        ArrayList<String> names = new ArrayList<String>();
        names.add("Amy");
        names.add("Bob");
        names.add("Cindy");
        d.insertRow(cont,new Object[9]());
        d.setValueAt(names.get(1), cont, 0);
        d.setValueAt(names.get(2), cont, 1);
        d.setValueAt(names.get(3), cont, 2);
        cont++;
        
        
    }
}

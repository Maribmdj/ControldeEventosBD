/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pry1bd;

import Utilidades.*;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.Vector;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ScrollPaneConstants;
import javax.swing.table.DefaultTableModel;
import static pry1bd.Conexion.*;



/**
 *
 * @author Nakisha Dixon
 */
public class FormularioAdmin extends javax.swing.JFrame {
       Tabla t = new Tabla();
       Conexion conectarse = new Conexion();
       
       public String nombre = "";
       public String apellido = "";
       public String identificacion = "";
       public String usuario = "";
       public String evento = "";
       public String actividad = "";
       public String fehca1 = "";
       public String fecha2 = "";     
       

    /**
     * Creates new form FormularioAdmin
     */
    public FormularioAdmin() {
        initComponents();
        setResizable(false);
        conectarse.Conectar();
        InvisiblesComp();
    }
    
   
    public void InvisiblesComp()
    {
        lblParam1.setVisible(false); //lblParam1.setText(" ");
        lblParam2.setVisible(false); //lblParam2.setText(" ");
        lblParam3.setVisible(false); //lblParam3.setText(" ");
        lblParam4.setVisible(false); //lblParam4.setText(" ");        
        lblParam5.setVisible(false); //lblParam5.setText(" ");
        lblParam6.setVisible(false); //lblParam6.setText(" ");
        
        txtParam1.setVisible(false);
        txtParam2.setVisible(false);
        txtParam3.setVisible(false);
        txtParam4.setVisible(false);
        cbParam1.setVisible(false);
        cbParam2.setVisible(false);      
        
        btnAdmin1.setVisible(false);        
        btnAdmin2.setVisible(false);        
        btnAdmin3.setVisible(false);
        btnAdmin4.setVisible(false);
        btnAdmin5.setVisible(false);        
        btnAdmin6.setVisible(false);
        btnAdmin7.setVisible(false);
        btnAdmin8.setVisible(false);
        btnAdmin9.setVisible(false);        
        btn.setVisible(false); //Opcional
    }
    
    public void LimpiarcbEvento(){
        int ItemCount  = cbParam1.getItemCount();
        for(int i=0; i<ItemCount; i++){
            cbParam1.remove(0);
        }
    }
    public void llenarCBEvento(){
        LimpiarcbEvento();
        try{           
            ResultSet r;
            r = conectarse.MostrarEventos();
            
            cbParam1.addItem("Seleccione:");
            while (r.next()){
                cbParam1.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    public void LimpiarcbAct(){
        int ItemCount  = cbParam2.getItemCount();
        for(int i=0; i<ItemCount; i++){
            cbParam2.remove(0);
        }
    }
    public void llenarCBAct(){
        LimpiarcbEvento();
        try{           
            ResultSet r;
            r = conectarse.MostrarActividades();
            
            cbParam2.addItem("Seleccione:");
            while (r.next()){
                cbParam2.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }

    public void llenarCBtpublico(){
        LimpiarcbEvento();
        try{           
            ResultSet r;
            r = conectarse.MostrarTpublico();
            
            cbParam2.addItem("SELECCIONE:");
            while (r.next()){
                cbParam2.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenuItem17 = new javax.swing.JMenuItem();
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        lblTitulo = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        panelEventos = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tabla = new javax.swing.JTable();
        btnAdmin1 = new javax.swing.JButton();
        txtParam1 = new javax.swing.JTextField();
        txtParam2 = new javax.swing.JTextField();
        txtParam3 = new javax.swing.JTextField();
        txtParam4 = new javax.swing.JTextField();
        lblParam4 = new javax.swing.JLabel();
        lblParam3 = new javax.swing.JLabel();
        lblParam1 = new javax.swing.JLabel();
        lblParam2 = new javax.swing.JLabel();
        lblParam5 = new javax.swing.JLabel();
        lblParam6 = new javax.swing.JLabel();
        cbParam2 = new javax.swing.JComboBox<>();
        cbParam1 = new javax.swing.JComboBox<>();
        btnAdmin2 = new javax.swing.JButton();
        btnAdmin3 = new javax.swing.JButton();
        btnAdmin4 = new javax.swing.JButton();
        btnAdmin5 = new javax.swing.JButton();
        btnAdmin6 = new javax.swing.JButton();
        btnAdmin7 = new javax.swing.JButton();
        btnAdmin8 = new javax.swing.JButton();
        btnAdmin9 = new javax.swing.JButton();
        btn = new javax.swing.JButton();
        jMenuBar2 = new javax.swing.JMenuBar();
        jMenu3 = new javax.swing.JMenu();
        jMenuItem6 = new javax.swing.JMenuItem();
        jMenuItem7 = new javax.swing.JMenuItem();
        jMenuItem8 = new javax.swing.JMenuItem();
        jMenuItem9 = new javax.swing.JMenuItem();
        jMenuItem10 = new javax.swing.JMenuItem();
        jMenuItem11 = new javax.swing.JMenuItem();
        jMenuItem12 = new javax.swing.JMenuItem();
        jMenuItem13 = new javax.swing.JMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenu4 = new javax.swing.JMenu();
        jMenuItem18 = new javax.swing.JMenuItem();
        jMenuItem16 = new javax.swing.JMenuItem();
        jMenuItem4 = new javax.swing.JMenuItem();
        jMenuItem14 = new javax.swing.JMenuItem();
        jMenuItem15 = new javax.swing.JMenuItem();
        jMenu5 = new javax.swing.JMenu();
        jMenuItem2 = new javax.swing.JMenuItem();
        jMenuItem5 = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();

        jMenuItem17.setText("jMenuItem17");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setMaximumSize(new java.awt.Dimension(32767, 33000));
        jPanel1.setPreferredSize(new java.awt.Dimension(700, 530));
        jPanel1.setLayout(null);

        jPanel3.setBackground(new java.awt.Color(0, 102, 153));
        jPanel3.setLayout(null);

        lblTitulo.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        lblTitulo.setForeground(new java.awt.Color(255, 255, 255));
        lblTitulo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblTitulo.setText("CONTROL");
        jPanel3.add(lblTitulo);
        lblTitulo.setBounds(0, 10, 750, 50);

        jPanel1.add(jPanel3);
        jPanel3.setBounds(0, 0, 750, 60);

        jPanel2.setBackground(new java.awt.Color(102, 153, 0));
        jPanel2.setLayout(null);

        jLabel6.setText("jLabel6");
        jPanel2.add(jLabel6);
        jLabel6.setBounds(340, 20, 34, 14);

        jPanel1.add(jPanel2);
        jPanel2.setBounds(756, 34, 750, 0);

        jPanel5.setLayout(new java.awt.GridLayout(1, 0));
        jPanel1.add(jPanel5);
        jPanel5.setBounds(297, 230, 0, 0);

        panelEventos.setLayout(new java.awt.GridLayout(1, 0));

        tabla.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(tabla);

        panelEventos.add(jScrollPane2);

        jPanel1.add(panelEventos);
        panelEventos.setBounds(10, 130, 730, 380);

        btnAdmin1.setText("Buscar ");
        btnAdmin1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin1ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin1);
        btnAdmin1.setBounds(650, 80, 80, 30);

        txtParam1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtParam1.setName("txtParam1"); // NOI18N
        txtParam1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtParam1ActionPerformed(evt);
            }
        });
        jPanel1.add(txtParam1);
        txtParam1.setBounds(60, 70, 100, 21);

        txtParam2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtParam2.setName("txtParam2"); // NOI18N
        jPanel1.add(txtParam2);
        txtParam2.setBounds(60, 100, 100, 21);

        txtParam3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtParam3.setName("txtParam3"); // NOI18N
        txtParam3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtParam3ActionPerformed(evt);
            }
        });
        jPanel1.add(txtParam3);
        txtParam3.setBounds(280, 70, 110, 21);

        txtParam4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtParam4.setName("txtParam4"); // NOI18N
        jPanel1.add(txtParam4);
        txtParam4.setBounds(280, 100, 110, 21);

        lblParam4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam4.setText("Usuario");
        jPanel1.add(lblParam4);
        lblParam4.setBounds(230, 100, 50, 15);

        lblParam3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam3.setText("Identificacion");
        jPanel1.add(lblParam3);
        lblParam3.setBounds(200, 70, 80, 15);

        lblParam1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam1.setText("Nombre");
        lblParam1.setName("lblnombre"); // NOI18N
        jPanel1.add(lblParam1);
        lblParam1.setBounds(10, 70, 50, 14);

        lblParam2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam2.setText("Apellido");
        jPanel1.add(lblParam2);
        lblParam2.setBounds(10, 100, 50, 15);

        lblParam5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam5.setText("Evento");
        jPanel1.add(lblParam5);
        lblParam5.setBounds(430, 70, 80, 15);

        lblParam6.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblParam6.setText("Actividad");
        jPanel1.add(lblParam6);
        lblParam6.setBounds(430, 100, 50, 15);

        jPanel1.add(cbParam2);
        cbParam2.setBounds(490, 100, 150, 20);

        jPanel1.add(cbParam1);
        cbParam1.setBounds(490, 70, 150, 20);

        btnAdmin2.setText("Buscar ");
        btnAdmin2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin2ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin2);
        btnAdmin2.setBounds(650, 80, 80, 30);

        btnAdmin3.setText("Buscar ");
        btnAdmin3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin3ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin3);
        btnAdmin3.setBounds(650, 80, 80, 30);

        btnAdmin4.setText("Buscar ");
        btnAdmin4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin4ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin4);
        btnAdmin4.setBounds(650, 80, 80, 30);

        btnAdmin5.setText("Buscar ");
        btnAdmin5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin5ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin5);
        btnAdmin5.setBounds(650, 80, 80, 30);

        btnAdmin6.setText("Buscar ");
        btnAdmin6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin6ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin6);
        btnAdmin6.setBounds(650, 80, 80, 30);

        btnAdmin7.setText("Buscar ");
        btnAdmin7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin7ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin7);
        btnAdmin7.setBounds(650, 80, 80, 30);

        btnAdmin8.setText("Buscar ");
        btnAdmin8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin8ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin8);
        btnAdmin8.setBounds(650, 80, 80, 30);

        btnAdmin9.setText("Buscar ");
        btnAdmin9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdmin9ActionPerformed(evt);
            }
        });
        jPanel1.add(btnAdmin9);
        btnAdmin9.setBounds(650, 80, 80, 30);

        btn.setText("Buscar ");
        btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnActionPerformed(evt);
            }
        });
        jPanel1.add(btn);
        btn.setBounds(650, 80, 80, 30);

        jMenu3.setText("Consultas");
        jMenu3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenu3ActionPerformed(evt);
            }
        });

        jMenuItem6.setText("Administradores");
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem6);

        jMenuItem7.setText("Personas por Evento");
        jMenuItem7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem7ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem7);

        jMenuItem8.setText("Usuarios sin claves modificadas");
        jMenuItem8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem8ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem8);

        jMenuItem9.setText("Agenda");
        jMenuItem9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem9ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem9);

        jMenuItem10.setText("Top 3");
        jMenuItem10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem10ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem10);

        jMenuItem11.setText("Eventos Cancelados");
        jMenuItem11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem11ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem11);

        jMenuItem12.setText("Actividades con sobrepaso de cupo");
        jMenu3.add(jMenuItem12);

        jMenuItem13.setText("Actividades sin cupo en tiempo");
        jMenuItem13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem13ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem13);

        jMenuItem1.setText("Actividades Sin Inscripciones");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem1);

        jMenuBar2.add(jMenu3);

        jMenu4.setText("Estadisticas");
        jMenu4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenu4ActionPerformed(evt);
            }
        });

        jMenuItem18.setText("Total Usuario por edad");
        jMenuItem18.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem18ActionPerformed(evt);
            }
        });
        jMenu4.add(jMenuItem18);

        jMenuItem16.setText("Total Actividades por Evento");
        jMenuItem16.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem16ActionPerformed(evt);
            }
        });
        jMenu4.add(jMenuItem16);

        jMenuItem4.setText("Total Cambios de Actividades");
        jMenu4.add(jMenuItem4);

        jMenuItem14.setText("Top Actividades mayor asistencia");
        jMenuItem14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem14ActionPerformed(evt);
            }
        });
        jMenu4.add(jMenuItem14);

        jMenuItem15.setText("Top Usuarios mayor asistencia");
        jMenu4.add(jMenuItem15);

        jMenuBar2.add(jMenu4);

        jMenu5.setText("Operaciones");
        jMenu5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenu5ActionPerformed(evt);
            }
        });

        jMenuItem2.setText("Agregar Evento");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem2);

        jMenuItem5.setText("Inactivar Registro");
        jMenu5.add(jMenuItem5);

        jMenuItem3.setText("Registrar Persona");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem3);

        jMenuBar2.add(jMenu5);

        setJMenuBar(jMenuBar2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 750, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 540, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        Evento event = new Evento();
        event.setVisible(true);
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem7ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem7ActionPerformed

    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
        InvisiblesComp();
        
        txtParam1.setVisible(true);
        txtParam2.setVisible(true);
        txtParam3.setVisible(true);
        txtParam4.setVisible(true);
        btnAdmin1.setVisible(true);
        lblParam1.setVisible(true); lblParam1.setText("Nombre");
        lblParam2.setVisible(true); lblParam2.setText("Apellido");
        lblParam3.setVisible(true); lblParam3.setText("Identificacion");
        lblParam4.setVisible(true); lblParam4.setText("Usuario"); 
        lblTitulo.setText("ADMINISTRADORES"); 
   
    }//GEN-LAST:event_jMenuItem6ActionPerformed

    private void btnAdmin1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin1ActionPerformed
        //Muestra administradores
         t.ver_eventos(tabla);
         nombre = txtParam1.getText(); 
         apellido  = txtParam2.getText();
         identificacion  = txtParam3.getText();
         usuario  = txtParam4.getText();
         
         try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.consultaAdmins(nombre, apellido, identificacion, usuario);
            System.out.println("entra n " + nombre + " " + apellido + " " + identificacion + " " + usuario);            
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();       
            //System.out.println('Columnas: ' + cntddColumnas);
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
                
            }        
        }catch (Exception e) {e.printStackTrace();}
         
    }//GEN-LAST:event_btnAdmin1ActionPerformed

    private void jMenu5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenu5ActionPerformed

        InvisiblesComp();
        LimpiarcbEvento();
        LimpiarcbAct();
    }//GEN-LAST:event_jMenu5ActionPerformed

    private void txtParam3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtParam3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtParam3ActionPerformed

    private void txtParam1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtParam1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtParam1ActionPerformed

    private void btnAdmin2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin2ActionPerformed
        //Estadistica: TOTAL ACTIVIDADES POR EVENTO POR TIPO
        evento = cbParam1.getSelectedItem().toString();        
        System.out.println("Evento " + evento);
         
         try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.TotalActXPublico(evento);
            System.out.println("entra n " + evento);
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();   
            
            System.out.println("Columnas: " + cntddColumnas);            
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_btnAdmin2ActionPerformed

    private void btnAdmin3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin3ActionPerformed
        //Actividades Vacias 
        evento = cbParam1.getSelectedItem().toString();
        System.out.println("Evento " + evento);
         
         try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.consultaActVacias(evento);
            System.out.println("entra n " + evento);
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();   
            
            System.out.println("Columnas: " + cntddColumnas);            
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_btnAdmin3ActionPerformed

    private void btnAdmin4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin4ActionPerformed
        //Estadistica: TOP ACTIVIDADES MAS ASISTIDAS POR EVENTO
        evento = cbParam1.getSelectedItem().toString();        
        System.out.println("Evento " + evento);
         
         try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.TopActAsistidas(evento);
            System.out.println("entra n " + evento);
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();   
            
            System.out.println("Columnas: " + cntddColumnas);            
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_btnAdmin4ActionPerformed

    private void btnAdmin5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnAdmin5ActionPerformed

    private void btnAdmin6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin6ActionPerformed
        //AGENDA DE LOS EVENTOS
        evento = cbParam1.getSelectedItem().toString();
        System.out.println("Evento " + evento);
         
         try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.AgendaEventos(evento);
            System.out.println("entra n " + evento);
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();   
            
            System.out.println("Columnas: " + cntddColumnas);            
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_btnAdmin6ActionPerformed

    private void btnAdmin7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin7ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnAdmin7ActionPerformed

    private void btnAdmin8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin8ActionPerformed
        //EVENTOS CANCELADOS         
         
    }//GEN-LAST:event_btnAdmin8ActionPerformed

    private void btnAdmin9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdmin9ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnAdmin9ActionPerformed

    private void btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnActionPerformed

    private void jMenuItem8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem8ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem8ActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        //Actividades Vacias
        InvisiblesComp();
        lblParam5.setVisible(true); lblParam5.setText("Evento");
        cbParam1.setVisible(true);
        btnAdmin3.setVisible(true);
        llenarCBEvento();
        
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void jMenuItem9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem9ActionPerformed

        //Agenda de los evento
        InvisiblesComp();
        lblTitulo.setText("AGENDA DE EVENTOS");
        lblParam5.setVisible(true); lblParam5.setText("Evento");
        cbParam1.setVisible(true);
        btnAdmin6.setVisible(true);
        llenarCBEvento();
    }//GEN-LAST:event_jMenuItem9ActionPerformed

    private void jMenuItem11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem11ActionPerformed
        //EVENTOS CANCELADOS
        
        lblTitulo.setText("EVENTOS CANCELADOS");
        try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.EventosCancelados();
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();              
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_jMenuItem11ActionPerformed

    private void jMenu3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenu3ActionPerformed

        InvisiblesComp();
        LimpiarcbEvento();
        LimpiarcbAct();
    }//GEN-LAST:event_jMenu3ActionPerformed

    private void jMenu4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenu4ActionPerformed

        InvisiblesComp();
        LimpiarcbEvento();
        LimpiarcbAct();
    }//GEN-LAST:event_jMenu4ActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
 
        setVisible(false);
        Register rgt = new Register();
        rgt.setVisible(true);
        
    }//GEN-LAST:event_jMenuItem3ActionPerformed

    private void jMenuItem16ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem16ActionPerformed
        //Estadistica: TOTAL ACTIVIDADES POR EVENTO POR TIPO
        lblTitulo.setText("ACTIVIDADES SEGUN PUBLICO");
        InvisiblesComp();
        LimpiarcbEvento();
        LimpiarcbAct();
        
        lblParam5.setVisible(true); lblParam5.setText("Evento");
        cbParam1.setVisible(true);
        
        btnAdmin2.setVisible(true);
        llenarCBEvento();

        
    }//GEN-LAST:event_jMenuItem16ActionPerformed

    private void jMenuItem14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem14ActionPerformed
        //Estadistica: TOP ACTIVIDAD MAS ASISTIDAS POR EVENTO
        lblTitulo.setText("ACTIVIDADES MÁS ASISTIDAS");
        InvisiblesComp();
        LimpiarcbEvento();
        
        lblParam5.setVisible(true); lblParam5.setText("Evento");
        cbParam1.setVisible(true);
        
        btnAdmin4.setVisible(true);
        llenarCBEvento();
    }//GEN-LAST:event_jMenuItem14ActionPerformed

    private void jMenuItem18ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem18ActionPerformed
        //Estadistica: TOTAL DE USUARIO POR EDAD
        lblTitulo.setText("TOTAL DE USUARIO POR EDAD");
        InvisiblesComp();
        
        try{
            DefaultTableModel modelo = new DefaultTableModel();
            this.tabla.setModel(modelo);
            ResultSet r;
            r = conectarse.UsuariosEdades();
            ResultSetMetaData rsMd = r.getMetaData();
            int cntddColumnas = rsMd.getColumnCount();              
            for (int i=1; i<=cntddColumnas; i++){
                modelo.addColumn(rsMd.getColumnLabel(i));
            }
            while (rs.next()){
                Object[] fila = new Object[cntddColumnas];
                for(int i=0; i<cntddColumnas; i++){
                    fila[i]=rs.getObject(i+1);
                }
                modelo.addRow(fila);            
        }
        }catch (Exception e) {e.printStackTrace();}
    }//GEN-LAST:event_jMenuItem18ActionPerformed

    private void jMenuItem13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem13ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem13ActionPerformed

    private void jMenuItem10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem10ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem10ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FormularioAdmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FormularioAdmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FormularioAdmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FormularioAdmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FormularioAdmin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn;
    private javax.swing.JButton btnAdmin1;
    private javax.swing.JButton btnAdmin2;
    private javax.swing.JButton btnAdmin3;
    private javax.swing.JButton btnAdmin4;
    private javax.swing.JButton btnAdmin5;
    private javax.swing.JButton btnAdmin6;
    private javax.swing.JButton btnAdmin7;
    private javax.swing.JButton btnAdmin8;
    private javax.swing.JButton btnAdmin9;
    private javax.swing.JComboBox<String> cbParam1;
    private javax.swing.JComboBox<String> cbParam2;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem10;
    private javax.swing.JMenuItem jMenuItem11;
    private javax.swing.JMenuItem jMenuItem12;
    private javax.swing.JMenuItem jMenuItem13;
    private javax.swing.JMenuItem jMenuItem14;
    private javax.swing.JMenuItem jMenuItem15;
    private javax.swing.JMenuItem jMenuItem16;
    private javax.swing.JMenuItem jMenuItem17;
    private javax.swing.JMenuItem jMenuItem18;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem4;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem jMenuItem7;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JMenuItem jMenuItem9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblParam1;
    private javax.swing.JLabel lblParam2;
    private javax.swing.JLabel lblParam3;
    private javax.swing.JLabel lblParam4;
    private javax.swing.JLabel lblParam5;
    private javax.swing.JLabel lblParam6;
    private javax.swing.JLabel lblTitulo;
    private javax.swing.JPanel panelEventos;
    private javax.swing.JTable tabla;
    private javax.swing.JTextField txtParam1;
    private javax.swing.JTextField txtParam2;
    private javax.swing.JTextField txtParam3;
    private javax.swing.JTextField txtParam4;
    // End of variables declaration//GEN-END:variables
}

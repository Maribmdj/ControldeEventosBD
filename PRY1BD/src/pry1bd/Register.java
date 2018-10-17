/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pry1bd;

import java.io.File;
import java.sql.ResultSet;
import static javafx.beans.binding.Bindings.or;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import static pry1bd.Conexion.*;
import Utilidades.Encriptar;
import java.sql.Date;
import java.sql.ResultSetMetaData;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Nakisha Dixon
 */
public class Register extends javax.swing.JFrame {
    Conexion conectarse = new Conexion();
    Encriptar encripta = new Encriptar();
    
    public String puser;
    public String pcontras = "";
    public String pnombre = "";
    public String pap1 = "";
    public String pap2 = "";
    public String pfoto = "";
    public String pcorreo = "";
    public int pocupacion = 1;
    public int pnac = 1;
    public int pinstitucion = 1;
    public String pdir = "";
    public String pidentf = "";
    public int pdistrito = 1;
    public int ptparticipante =1;
    public int ptpersona = 2;
    public Date pfNac;
    
    /**
     * Creates new form Register
     */
    public Register() {
        initComponents();
        setSize(700,530);
        conectarse.Conectar();
        llenarCBNac();
        llenarCBOcupacion();
        llenarCBInstitucion();
        llenarCBPais();
        llenarCBProvincia();
        llenarCBCanton();
        llenarCBDistrito();
        
    }

    public void LimpiarcbNac(){
        int ItemCount  = nacionalidad.getItemCount();
        for(int i=0; i<ItemCount; i++){
            nacionalidad.remove(0);
        }
    }
    public void llenarCBNac(){
        LimpiarcbNac();
        try{           
            ResultSet r;
            r = conectarse.MostrarNacionalidad();            
            nacionalidad.addItem("Seleccione:");
            while (r.next()){
                nacionalidad.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    public void LimpiarcbOcupacion(){
        int ItemCount  = ocupacion.getItemCount();
        for(int i=0; i<ItemCount; i++){
            ocupacion.remove(0);
        }
    }
    public void llenarCBOcupacion(){
        LimpiarcbOcupacion();
        try{           
            ResultSet r;
            r = conectarse.MostrarOcupacion();            
            ocupacion.addItem("Seleccione:");
            while (r.next()){
                ocupacion.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    public void LimpiarcbInstitucion(){
        int ItemCount  = institucion.getItemCount();
        for(int i=0; i<ItemCount; i++){
            institucion.remove(0);
        }
    }
    public void llenarCBInstitucion(){
        LimpiarcbInstitucion();
        try{           
            ResultSet r;
            r = conectarse.MostrarInstitucion();
            
            institucion.addItem("Seleccione:");
            while (r.next()){
                institucion.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    public void LimpiarcbPais(){
        
        int ItemCount  = pais.getItemCount();
        for(int i=0; i<ItemCount; i++){
            pais.remove(0);
        }
    }
    public void llenarCBPais(){
        LimpiarcbPais();
        try{           
            ResultSet r;
            r = conectarse.MostrarPais();
            
            pais.addItem("Seleccione:");
            while (r.next()){
                pais.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    public void LimpiarcbProvincia(){
        int ItemCount  = provincia.getItemCount();
        for(int i=0; i<ItemCount; i++){
            provincia.remove(0);
        }
    }
    public void llenarCBProvincia(){
        LimpiarcbProvincia();
        //ppais = pais.getSelectedItem().toString();
        try{           
            ResultSet r;
            r = conectarse.MostrarProvincia();
            
            provincia.addItem("Seleccione:");
            while (r.next()){
                provincia.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    
    public void LimpiarcbCanton(){
        int ItemCount  = canton.getItemCount();
        for(int i=0; i<ItemCount; i++){
            canton.remove(0);
        }
    }
    public void llenarCBCanton(){
        LimpiarcbCanton();
        //pprov = provincia.getSelectedItem().toString();
        try{           
            ResultSet r;
            r = conectarse.MostrarCanton();
            
            canton.addItem("Seleccione:");
            while (r.next()){
                canton.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    public void LimpiarcbDistrito(){
        int ItemCount  = distrito.getItemCount();
        for(int i=0; i<ItemCount; i++){
            distrito.remove(0);
        }
    }
    public void llenarCBDistrito(){
        LimpiarcbDistrito();
        //ccanton = canton.getSelectedItem().toString();
        try{           
            ResultSet r;
            r = conectarse.MostrarDistrito();
            
            distrito.addItem("Seleccione:");
            while (r.next()){
                distrito.addItem(r.getString(1));                
            }        
        }catch (Exception e) {e.printStackTrace();}
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        usuario = new javax.swing.JTextField();
        contrasenia = new javax.swing.JPasswordField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        nombre = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        apellido1 = new javax.swing.JTextField();
        ocupacion = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        nacionalidad = new javax.swing.JComboBox<>();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        id = new javax.swing.JTextField();
        correo = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        tparticipante = new javax.swing.JComboBox<>();
        lblParticipante = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        lblAdvertencia = new javax.swing.JLabel();
        foto = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        apellido2 = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        distrito = new javax.swing.JComboBox<>();
        jLabel14 = new javax.swing.JLabel();
        canton = new javax.swing.JComboBox<>();
        jLabel17 = new javax.swing.JLabel();
        provincia = new javax.swing.JComboBox<>();
        jLabel18 = new javax.swing.JLabel();
        pais = new javax.swing.JComboBox<>();
        jLabel4 = new javax.swing.JLabel();
        institucion = new javax.swing.JComboBox<>();
        direccion = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        dcFNac = new com.toedter.calendar.JDateChooser();
        jLabel20 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(700, 530));
        jPanel1.setLayout(null);

        usuario.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        usuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                usuarioActionPerformed(evt);
            }
        });
        jPanel1.add(usuario);
        usuario.setBounds(20, 110, 140, 30);

        contrasenia.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jPanel1.add(contrasenia);
        contrasenia.setBounds(20, 170, 140, 30);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(153, 153, 153));
        jLabel2.setText("Usuario");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(30, 77, 130, 30);

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(153, 153, 153));
        jLabel3.setText("Contraseña");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(20, 140, 100, 30);

        jButton1.setBackground(new java.awt.Color(102, 102, 102));
        jButton1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("Registrarse");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(370, 410, 180, 30);

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(153, 153, 153));
        jLabel7.setText("Nombre");
        jPanel1.add(jLabel7);
        jLabel7.setBounds(180, 80, 80, 30);
        jPanel1.add(nombre);
        nombre.setBounds(180, 110, 150, 30);

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(153, 153, 153));
        jLabel8.setText("Primer Apellido");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(180, 140, 130, 30);
        jPanel1.add(apellido1);
        apellido1.setBounds(180, 170, 150, 30);

        ocupacion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        jPanel1.add(ocupacion);
        ocupacion.setBounds(20, 290, 150, 30);

        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(153, 153, 153));
        jLabel9.setText("Ocupación");
        jPanel1.add(jLabel9);
        jLabel9.setBounds(20, 260, 90, 30);

        jPanel1.add(nacionalidad);
        nacionalidad.setBounds(370, 110, 170, 30);

        jLabel10.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(153, 153, 153));
        jLabel10.setText("Nacionalidad");
        jPanel1.add(jLabel10);
        jLabel10.setBounds(370, 80, 110, 30);

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(153, 153, 153));
        jLabel11.setText("Identificación");
        jPanel1.add(jLabel11);
        jLabel11.setBounds(370, 200, 130, 30);

        id.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                idActionPerformed(evt);
            }
        });
        jPanel1.add(id);
        id.setBounds(370, 230, 170, 30);

        correo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                correoActionPerformed(evt);
            }
        });
        jPanel1.add(correo);
        correo.setBounds(20, 230, 140, 30);

        jLabel12.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(153, 153, 153));
        jLabel12.setText("Correo Electrónico");
        jPanel1.add(jLabel12);
        jLabel12.setBounds(20, 200, 150, 30);

        tparticipante.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tparticipante.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione:", "Administrador", "Patrocinador" }));
        tparticipante.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tparticipanteActionPerformed(evt);
            }
        });
        jPanel1.add(tparticipante);
        tparticipante.setBounds(180, 290, 150, 30);

        lblParticipante.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblParticipante.setForeground(new java.awt.Color(153, 153, 153));
        lblParticipante.setText("Participante");
        jPanel1.add(lblParticipante);
        lblParticipante.setBounds(180, 260, 100, 30);

        jPanel2.setBackground(new java.awt.Color(255, 153, 0));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Registro");
        jPanel2.add(jLabel6);

        jPanel1.add(jPanel2);
        jPanel2.setBounds(0, 11, 700, 60);

        lblAdvertencia.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        lblAdvertencia.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblAdvertencia.setText("Prueba");
        lblAdvertencia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblAdvertenciaMouseClicked(evt);
            }
        });
        jPanel1.add(lblAdvertencia);
        lblAdvertencia.setBounds(370, 450, 180, 15);

        foto.setBackground(new java.awt.Color(204, 204, 204));
        foto.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.add(foto);
        foto.setBounds(560, 90, 120, 130);

        jLabel5.setText("Agregar Imagen");
        jLabel5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel5MouseClicked(evt);
            }
        });
        jPanel1.add(jLabel5);
        jLabel5.setBounds(590, 220, 80, 20);
        jPanel1.add(jTextField6);
        jTextField6.setBounds(30, 41, 160, 30);
        jPanel1.add(apellido2);
        apellido2.setBounds(180, 230, 150, 30);

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(153, 153, 153));
        jLabel15.setText("Segundo Apellido");
        jPanel1.add(jLabel15);
        jLabel15.setBounds(180, 200, 150, 30);

        jLabel16.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(153, 153, 153));
        jLabel16.setText("Institución");
        jPanel1.add(jLabel16);
        jLabel16.setBounds(370, 140, 130, 30);

        jPanel1.add(distrito);
        distrito.setBounds(180, 410, 140, 30);

        jLabel14.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(153, 153, 153));
        jLabel14.setText("Distrito");
        jPanel1.add(jLabel14);
        jLabel14.setBounds(180, 390, 60, 22);

        canton.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                cantonMouseClicked(evt);
            }
        });
        jPanel1.add(canton);
        canton.setBounds(20, 410, 140, 30);

        jLabel17.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(153, 153, 153));
        jLabel17.setText("Canton");
        jPanel1.add(jLabel17);
        jLabel17.setBounds(20, 390, 80, 22);

        provincia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                provinciaMouseClicked(evt);
            }
        });
        jPanel1.add(provincia);
        provincia.setBounds(180, 350, 130, 30);

        jLabel18.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(153, 153, 153));
        jLabel18.setText("Fecha de Nacimiento");
        jPanel1.add(jLabel18);
        jLabel18.setBounds(370, 330, 220, 20);

        pais.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                paisMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                paisMousePressed(evt);
            }
        });
        pais.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                paisActionPerformed(evt);
            }
        });
        jPanel1.add(pais);
        pais.setBounds(20, 350, 130, 30);

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(153, 153, 153));
        jLabel4.setText("Pais");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(20, 330, 70, 22);

        jPanel1.add(institucion);
        institucion.setBounds(370, 170, 170, 30);
        jPanel1.add(direccion);
        direccion.setBounds(370, 290, 300, 30);

        jLabel19.setBackground(new java.awt.Color(204, 204, 204));
        jLabel19.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(153, 153, 153));
        jLabel19.setText("Direccion");
        jPanel1.add(jLabel19);
        jLabel19.setBounds(370, 260, 130, 30);

        dcFNac.setDate(dcFNac.getDate());
        dcFNac.setDateFormatString("DD/MM/YYYY");
        dcFNac.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jPanel1.add(dcFNac);
        dcFNac.setBounds(370, 350, 190, 30);

        jLabel20.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel20.setForeground(new java.awt.Color(153, 153, 153));
        jLabel20.setText("Provincia");
        jPanel1.add(jLabel20);
        jLabel20.setBounds(180, 330, 90, 20);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        if (nombre.getText().equals("") || usuario.getText().equals("") || contrasenia.getPassword().equals("")){
            String st = "Los campos de nombre, usuario o contraseña son requeridos";
            JOptionPane.showMessageDialog(null, st);    
        }
        else{
            puser = usuario.getText();
            pnombre = nombre.getText();
            pap1 = apellido1.getText();
            pap2 = apellido2.getText();
            pcorreo = correo.getText();
            pocupacion = ocupacion.getSelectedIndex();
            pnac = nacionalidad.getSelectedIndex()+1;
            pinstitucion = institucion.getSelectedIndex()+1;
            pdir = direccion.getText();
            pidentf = id.getText();
            pdistrito = distrito.getSelectedIndex()+1;
            if ((ocupacion.getSelectedIndex())==2){
                ptparticipante = 1;
            ptparticipante = 2;    
            }            
            pcontras = encripta.encriptarContrasenia(contrasenia.getText());
            System.out.println("Passw " +contrasenia.getText() +" PE "+ pcontras);
            
            dcFNac.setDateFormatString("DD/MM/YYYY");
            pfNac = (Date) dcFNac.getDate();
            System.out.println("partic "+pfNac);
            //INSERT BD
            try{
                System.out.println("try ");
                conectarse.InsertarPersona(pnombre, pap1, pap2, pidentf, pfoto, pdir, pdistrito, pnac, pocupacion, ptpersona, ptparticipante, pinstitucion, pfNac, puser, pcontras);
                                   
        }catch (Exception e) {e.printStackTrace();}

            lblAdvertencia.setText("Registrado Correctamente");
            JOptionPane.showMessageDialog(null, "Registrado Correctamente... Proceda a ingresar");    
            
            setVisible(false);
            Log login = new Log();
            login.setVisible(true);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void idActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_idActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_idActionPerformed

    private void correoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_correoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_correoActionPerformed

    private void lblAdvertenciaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblAdvertenciaMouseClicked
        setVisible(false);
        Log lg = new Log();
        lg.setVisible(true);
    }//GEN-LAST:event_lblAdvertenciaMouseClicked

    private void jLabel5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel5MouseClicked
        JFileChooser agregarImagen = new JFileChooser();
        agregarImagen.showOpenDialog(null);
        File archivo = agregarImagen.getSelectedFile();
        String nombreArchivo = archivo.getAbsolutePath();
        ImageIcon icon=new ImageIcon(nombreArchivo);
        foto.setIcon(icon);
    }//GEN-LAST:event_jLabel5MouseClicked

    private void usuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_usuarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_usuarioActionPerformed

    private void paisActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_paisActionPerformed
        
        
    }//GEN-LAST:event_paisActionPerformed

    private void paisMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_paisMouseClicked

        
                
    }//GEN-LAST:event_paisMouseClicked

    private void paisMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_paisMousePressed

        
    }//GEN-LAST:event_paisMousePressed

    private void provinciaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_provinciaMouseClicked

        
    }//GEN-LAST:event_provinciaMouseClicked

    private void cantonMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_cantonMouseClicked

        
    }//GEN-LAST:event_cantonMouseClicked

    private void tparticipanteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tparticipanteActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tparticipanteActionPerformed

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
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Register().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField apellido1;
    private javax.swing.JTextField apellido2;
    private javax.swing.JComboBox<String> canton;
    private javax.swing.JPasswordField contrasenia;
    private javax.swing.JTextField correo;
    private com.toedter.calendar.JDateChooser dcFNac;
    private javax.swing.JTextField direccion;
    private javax.swing.JComboBox<String> distrito;
    private javax.swing.JLabel foto;
    private javax.swing.JTextField id;
    private javax.swing.JComboBox<String> institucion;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JLabel lblAdvertencia;
    private javax.swing.JLabel lblParticipante;
    private javax.swing.JComboBox<String> nacionalidad;
    private javax.swing.JTextField nombre;
    private javax.swing.JComboBox<String> ocupacion;
    private javax.swing.JComboBox<String> pais;
    private javax.swing.JComboBox<String> provincia;
    private javax.swing.JComboBox<String> tparticipante;
    private javax.swing.JTextField usuario;
    // End of variables declaration//GEN-END:variables
}


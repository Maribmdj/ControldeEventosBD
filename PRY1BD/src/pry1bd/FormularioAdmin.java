/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pry1bd;

import java.util.ArrayList;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

/**
 *
 * @author Nakisha Dixon
 */
public class FormularioAdmin extends javax.swing.JFrame {

    /**
     * Creates new form FormularioAdmin
     */
    public FormularioAdmin() {
        initComponents();
    }
    
    public void llenarPaquetes(ArrayList<Actividades> actividades){

        panelEventos.removeAll();
        panelEventos.repaint();
        int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
        int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER; 
        JScrollPane scroll = new javax.swing.JScrollPane(panelEventos,v , h );
        scroll.setPreferredSize(new java.awt.Dimension(730,400));
        this.remove(scroll);
        if(actividades.size()>10){
            this.panelEventos.setPreferredSize(new java.awt.Dimension(730, 400+((actividades.size()-10)*45)));
        }else{
            this.panelEventos.setPreferredSize(new java.awt.Dimension(730, 400));
        }
        int x=50;
        int y=1;
        int cont = 0;
        jPanel1.add(scroll);
        scroll.setBounds(5, 230, 990, 290);
        scroll.repaint();
        scroll.revalidate();
        for(Actividades actDatos: actividades){
            javax.swing.JCheckBox check = new javax.swing.JCheckBox();
            javax.swing.JLabel labelActividad = new javax.swing.JLabel();
            javax.swing.JLabel labelLugar = new javax.swing.JLabel();
            javax.swing.JLabel labelFecha = new javax.swing.JLabel();
            javax.swing.JLabel labelHora = new javax.swing.JLabel();
            javax.swing.JLabel labelCupoDisponible = new javax.swing.JLabel();
            setLabelAtributes(labelActividad, cont, check);
            setLabelAtributes(labelLugar, cont, check);
            setLabelAtributes(labelHora, cont, check);
            setLabelAtributes(labelCuponDisponible, cont, check);
            labelCourier.setText(paquete.getCompania());
            labelDescripcion.setText(paquete.getDescripcion());
            labelRemitente.setText(paquete.getTienda());
            labelEstado.setText(paquete.getEstado().getDescripcion());
            labelUsuario.setText(paquete.getCliente().getNombre());
            labelRecibido.setText("No se ha aplicado");
            for(CambioDeEstado cambio: paquete.getCambios()){
                if(cambio.getEstadoActual().getDescripcion().equals((String)this.estadosCombo2.getSelectedItem())){
                    labelRecibido.setText(cambio.getFechaDeCambio());
                    break;
                }
            }
            this.panelEventos.add(labelActividad);
            this.panelEventos.add(labelLugar);
            this.panelEventos.add(labelFecha);
            this.panelEventos.add(labelHora);
            this.panelEventos.add(labelCupoDisponible);
            labelActividad.setBounds(50, y, 180, 40);
            labelLugar.setBounds(230, y, 170 ,40);
            labelFecha.setBounds(400, y, 150, 40);
            labelHora.setBounds(550, y, 160, 40);
             check.addActionListener(new java.awt.event.ActionListener() {
            @Override
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                        revisarChecks(evt, check);
                }
            });
            checkList.add(check);
            check.setBounds(0, y, 50, 40);
            y+=40;
            cont++;
           
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenuItem17 = new javax.swing.JMenuItem();
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        panelEventos = new javax.swing.JPanel();
        comboevento = new javax.swing.JComboBox<>();
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
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
        jMenu4 = new javax.swing.JMenu();
        jMenu1 = new javax.swing.JMenu();
        jMenu2 = new javax.swing.JMenu();
        jMenu6 = new javax.swing.JMenu();
        jMenu5 = new javax.swing.JMenu();
        jMenuItem2 = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenuItem4 = new javax.swing.JMenuItem();
        jMenuItem5 = new javax.swing.JMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();

        jMenuItem17.setText("jMenuItem17");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(700, 530));
        jPanel1.setLayout(null);

        jPanel3.setBackground(new java.awt.Color(0, 102, 153));
        jPanel3.setLayout(null);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setText("Control");
        jPanel3.add(jLabel5);
        jLabel5.setBounds(290, 0, 340, 70);

        jPanel1.add(jPanel3);
        jPanel3.setBounds(0, 11, 750, 60);

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
        jPanel1.add(panelEventos);
        panelEventos.setBounds(10, 180, 730, 340);

        comboevento.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        comboevento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboeventoActionPerformed(evt);
            }
        });
        jPanel1.add(comboevento);
        comboevento.setBounds(150, 80, 150, 30);

        jButton1.setText("Buscar Evento ");
        jPanel1.add(jButton1);
        jButton1.setBounds(30, 80, 110, 30);

        jLabel1.setText("Actividad");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(40, 160, 70, 14);

        jLabel2.setText("Lugar");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(140, 160, 27, 14);

        jLabel3.setText("Fecha");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(260, 160, 34, 14);

        jLabel4.setText("Hora");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(350, 160, 23, 14);

        jLabel7.setText("Cupo Disponible");
        jPanel1.add(jLabel7);
        jLabel7.setBounds(420, 160, 90, 14);

        jMenu3.setText("Consultas");

        jMenuItem6.setText("Administradores");
        jMenu3.add(jMenuItem6);

        jMenuItem7.setText("Personas por Evento");
        jMenuItem7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem7ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem7);

        jMenuItem8.setText("Usuarios sin claves modificadas");
        jMenu3.add(jMenuItem8);

        jMenuItem9.setText("Agenda");
        jMenu3.add(jMenuItem9);

        jMenuItem10.setText("Top 3");
        jMenu3.add(jMenuItem10);

        jMenuItem11.setText("Eventos Cancelados");
        jMenu3.add(jMenuItem11);

        jMenuItem12.setText("Actividades con sobrepaso de cupo");
        jMenu3.add(jMenuItem12);

        jMenuItem13.setText("Actividades sin cupo en tiempo");
        jMenu3.add(jMenuItem13);

        jMenuBar2.add(jMenu3);

        jMenu4.setText("Estadisticas");

        jMenu1.setText("Top 3 de Mayor Asistencia");
        jMenu4.add(jMenu1);

        jMenu2.setText("Total de Usuariios por edad");
        jMenu4.add(jMenu2);

        jMenu6.setText("Total de Usuarios por Edad");
        jMenu4.add(jMenu6);

        jMenuBar2.add(jMenu4);

        jMenu5.setText("Operaciones");

        jMenuItem2.setText("Agregar Evento");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem2);

        jMenuItem3.setText("Eliminar Evento");
        jMenu5.add(jMenuItem3);

        jMenuItem4.setText("Editar Evento");
        jMenu5.add(jMenuItem4);

        jMenuItem5.setText("Inactivar Registro");
        jMenu5.add(jMenuItem5);

        jMenuItem1.setText("Cancelar Evento");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu5.add(jMenuItem1);

        jMenuBar2.add(jMenu5);

        setJMenuBar(jMenuBar2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, 750, 750, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void jMenuItem7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem7ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem7ActionPerformed

    private void comboeventoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboeventoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboeventoActionPerformed

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

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FormularioAdmin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> comboevento;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenu jMenu6;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem10;
    private javax.swing.JMenuItem jMenuItem11;
    private javax.swing.JMenuItem jMenuItem12;
    private javax.swing.JMenuItem jMenuItem13;
    private javax.swing.JMenuItem jMenuItem17;
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
    private javax.swing.JPanel panelEventos;
    // End of variables declaration//GEN-END:variables
}

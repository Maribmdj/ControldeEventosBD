/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;
import java.util.Properties;
import javax.mail.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

/**
 *
 * @author Melinda
 */
public class Email {
    final String deParte = "informatecbd2018@gmail.com";
    final String contrasenia = "2018informatec";
    
    
    void enviarCorreo (String para){
    String host = "localhost";
      Properties properties = System.getProperties();
      properties.setProperty("mail.smtp.host", host);
      Session session = Session.getDefaultInstance(properties);
      try {
         MimeMessage message = new MimeMessage(session);
         message.setFrom(new InternetAddress(deParte));
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(para));

         // Modifique si ve necesario el asunto. Si no, agregue la tilde que falta. 
         message.setSubject("Notificacion: Evento Eliminado");
         BodyPart messageBodyPart = new MimeBodyPart();

         // LLene con la informacion del evento que se elimino
         messageBodyPart.setText("AQUI VA LA INFORMACION DEL EVENTO ELIMINADO");
         
         // Create a multipar message
         Multipart multipart = new MimeMultipart();

         // Set text message part
         multipart.addBodyPart(messageBodyPart);

         // Part two is attachment
         messageBodyPart = new MimeBodyPart();
         String filename = "file.txt";
         DataSource source = new FileDataSource(filename);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(filename);
         multipart.addBodyPart(messageBodyPart);

         // Send the complete message parts
         message.setContent(multipart );

         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
      } catch (MessagingException mex) {
         mex.printStackTrace();
      }
      
    }
    
    
}

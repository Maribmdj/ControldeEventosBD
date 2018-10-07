/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;

import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.Part;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.search.FlagTerm;


public class EmailServer extends Thread{
    public static String ERROR_01_LOADFILE = "Error al cargar el fichero";
    private static Properties props;
    private static String from,to,subject;
    static MimeMultipart multipart;
    static Session mailSession;
    private static ArrayList<UsuarioCliente> clientes;
    private static AplGrafica app;
    private static Store store;
    private static ArrayList<Notificacion> notificacionesPendientes = new ArrayList<>();


public EmailServer() throws NoSuchProviderException, MessagingException {
    props = new Properties();
    props.setProperty("mail.transport.protocol", "smtp");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.user", "pry01tec@gmail.com");
    props.put("mail.smtp.socketFactory.port", "465");
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "465");
    mailSession = Session.getDefaultInstance(props,
        new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("pry01tec@gmail.com","luisito138");
            }
        });
        store = mailSession.getStore("imaps");  
        store.connect("imap.gmail.com", "pry01tec@gmail.com", "luisito138");
    }

    public static AplGrafica getApp() {
        return app;
    }

    public static void setApp(AplGrafica app) {
        EmailServer.app = app;
    }
    
    
    public static void sendMail(String to, String subject, String body, ArrayList<String> adjuntos) throws Exception{
    	multipart = new MimeMultipart("related");
        // propiedades de conexion al servidor de correo
        EmailServer.from = "pry01tec@gmail.com";
        EmailServer.subject = subject;
        EmailServer.to = to;
 
        String ipServidor = "localhost";
        String puertoServidor = "8080";
        String nombreAplicacion = "miAplicacion";
        String parametros = "misParametros";
        String cabecera = "<HTML><BODY><img src='cid:cidcabecera' /> <br/> <br/>";
        //String pie = "<br/> <br/> <img src='cid:cidpie' /></BODY></HTML>";
        String formulario = String.format("%s%s%s", cabecera, body, "<br/> <br/>");
        addContent(formulario);
        //añadir imagenes
        //addCID("cidcabecera", "src/Correo/logoEmail.png");
        // enviar adjuntos
        if (adjuntos!=null) {
        	for(String archivo: adjuntos) addAttach(archivo); //ruta donde se encuentra el fichero que queremos adjuntar.
        }
        // enviar el correo MULTIPART
        sendMultipart();
    }
    public static void addContent(String htmlText) throws Exception
    {
        // first part (the html)
        BodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent(htmlText, "text/html");
        // add it
        EmailServer.multipart.addBodyPart(messageBodyPart);
    }
    public static void addCID(String cidname,String pathname) throws Exception
    {
        DataSource fds = new FileDataSource(pathname);
        BodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setDataHandler(new DataHandler(fds));
        messageBodyPart.setHeader("Content-ID","<"+cidname+">");
        EmailServer.multipart.addBodyPart(messageBodyPart);
    }
    public static void addAttach(String pathname) throws Exception
    {
        File file = new File(pathname);
        BodyPart messageBodyPart = new MimeBodyPart();
        DataSource ds = new FileDataSource(file);
        messageBodyPart.setDataHandler(new DataHandler(ds));
        messageBodyPart.setFileName(file.getName());
        messageBodyPart.setDisposition(Part.ATTACHMENT);
        EmailServer.multipart.addBodyPart(messageBodyPart);
    }
    public static void sendMultipart() throws Exception{
        //mailSession.setDebug(true);
        Transport transport = mailSession.getTransport();
        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject(EmailServer.subject);
        message.setFrom(new InternetAddress(EmailServer.from));
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(EmailServer.to));
        // put everything together
        message.setContent(multipart);
        transport.connect();
        transport.send(message);
        transport.close();
    }
    
    /**
     *
     * @param pathname
     * @return
     * @throws Exception
     */
    public static String loadHTMLFile(String pathname) throws Exception {
        String content = "";
        File f = null;
        BufferedReader in = null;
        try {
            f = new File(pathname);
            if (f.exists()){
                long len_bytes = f.length();				
            }
            in = new BufferedReader(new FileReader(f));
            String str;
            while ((str = in.readLine()) != null) {
                // process(str);
                str = str.trim();
                content = content + str;
            }
            in.close();
            return content;
        }
        catch (Exception e){
            String MENSAJE_ERROR = ERROR_01_LOADFILE + ": ['" + pathname + "'] : " + e.toString();
            throw new Exception(MENSAJE_ERROR);
        }
        finally{
            if (in != null) in.close();
        }
    }

    public static void enviarClaveIngresoCliente(String correo, String nombreCliente, String clave) throws Exception {
	String html = loadHTMLFile("src/utilidades/correo/registroCliente.html");
        //System.out.println(html);
	html = String.format(html, nombreCliente,correo,clave);
	sendMail(correo, "Registro Cliente", html, null);
    }

    public static void enviarCorreoError(String correo) throws Exception {
	String html = loadHTMLFile("src/utilidades/correo/registroError.html");
        //System.out.println(html);
	html = String.format(html);
	sendMail(correo, "Error en registro de cliente", html, null);
    }
    public static void revisarCorreo(ArrayList<UsuarioCliente> clientes) {
        try {
            Folder inbox = store.getFolder("Inbox");
            inbox.open(Folder.READ_WRITE);
            FlagTerm ft = new FlagTerm(new Flags(Flags.Flag.SEEN), false);
            Message messages[] = inbox.search(ft);
            for (Message message : messages) {
                System.out.println("Se detecto un correo nuevo:");
                String m = message.getSubject().toUpperCase();
                if(m.equals("SOLICITUD DE CUENTA")) {
                    System.out.println("\tSe solicito el ingreso de un cliente.");
                    Address[] froms = message.getFrom();
                    String email = froms == null ? null : ((InternetAddress) froms[0]).getAddress();
                    try {
                        String datos = extractInfo(getText(message));
                        if (datos!=null && !datos.equals("")) {    
                            //TODO Comparacion para comprobar si existe el correo registrado...
                            boolean encontrado = false;
                            for(UsuarioCliente cliente: clientes){
                                if(cliente.getNombreUsuario().equals(email)){
                                    encontrado = true;
                                    break;
                                }
                            }
                            if(!encontrado){
                               UsuarioCliente clienteNuevo = new UsuarioCliente();
                               clienteNuevo.setNombreUsuario(email);
                               clienteNuevo.setNombre(datos);
                               clienteNuevo.setClave(generarPassword());
                               enviarClaveIngresoCliente(email, datos, clienteNuevo.getClave());
                               clientes.add(clienteNuevo);
                               EmailServer.getApp().getArchivoUsuarios().escribirEnXML(clienteNuevo.toXml(), "UsuariosCliente");
                               message.setFlag(Flags.Flag.SEEN, true);
                            }else{
                               message.setFlag(Flags.Flag.SEEN, true);
                               enviarCorreoError(email);
                            }
                        }
                        else {
                            enviarCorreoError(email);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        System.out.println("Could not connect to SMTP host: smtp.gmail.com, port: 465");
                    }
                }
                }
                
        } catch (NoSuchProviderException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("Could not connect to SMTP host: smtp.gmail.com, port: 465");
        }
    }
    public static String generarPassword() {
        String pass = "";
        String key = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        for (int i = 0; i < 8; i++) {
                pass+=(key.charAt((int)(Math.random() * key.length())));
        }

        return pass;
    }
    /**
     *
     * @param message
     * @return
     * @throws MessagingException
     * @throws IOException
     */
    public static String getText(Message message) throws MessagingException, IOException {
            String text = "";
            //System.out.println(message.getContentType());
            if(message.isMimeType("multipart/*")) {
                    // Obtenemos el contenido, que es de tipo MultiPart.
                       Multipart multi;
                       multi = (Multipart)message.getContent();
                       // Extraemos cada una de las partes.
                       for (int j=0;j<multi.getCount();j++)
                       {
                          Part unaParte = multi.getBodyPart(j);
                          // Volvemos a analizar cada parte de la MultiParte
                          if (unaParte.isMimeType ("text/*"))
                              text = (unaParte.getContent().toString());
                       }
            }
            return text;
    }
    public static String extractInfo(String text) {
            text = text.replace("<div dir=\"ltr\">", "");
            text = text.replace("<div>", "/*/");
            text = text.replace("</div>", "");
            String[] nuevo = text.split("/*/");
            String datos;
            try {
                    datos = nuevo[0];
            }catch (Exception e) {
                    return null;
            }
            return datos;
    }

    public static void setClientes(ArrayList<UsuarioCliente> clientes) {
        EmailServer.clientes = clientes;
    }
    
    public static void enviarNotificacionCambioDeEstado(Paquete paquete, CambioDeEstado estado, String correo) throws Exception{
        String html;
        html = loadHTMLFile("src/utilidades/correo/notificacionDeEstado.html");
        System.out.println(html);
	html = String.format(html,
                paquete.getDescripcion(),estado.getEstadoAnterior(), estado.getEstadoActual(), estado.getFechaDeCambio());
	EmailServer.notificacionesPendientes.add(new Notificacion("Notificacion de Cambio de Estado", html, correo));
    }
    
    @Override
    public void run(){
        while(true){
            System.out.println("Revisando correo");
            for(Notificacion notificacion: EmailServer.notificacionesPendientes){
                try {
                    sendMail(notificacion.getCorreo(), notificacion.getAsunto(), notificacion.getHtml(), null);
                } catch (Exception ex) {
                    Logger.getLogger(EmailServer.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            EmailServer.notificacionesPendientes.removeAll(EmailServer.notificacionesPendientes);
            EmailServer.revisarCorreo(clientes);
            try {
                Thread.sleep(120000);
            } catch (InterruptedException ex) {
                Logger.getLogger(EmailServer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

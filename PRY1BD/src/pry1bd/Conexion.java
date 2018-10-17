package pry1bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import oracle.jdbc.OracleTypes;

/**
 * Autora: Mariela Barrantes
 *Descripcion: Esta clase se encarga de toda la conexion con la base de datos
 */

public class Conexion {
    
    //Variables de conexion
    private Connection conexion;
    static Statement s;
    static ResultSet rs;
    CallableStatement cs = null;
    String sql = null;
    
    public Connection db;
    
    public Connection getConexion() {
        return conexion;
    }    
    
    public void setConexion(Connection conexion)  {
        this.conexion = conexion;
    }
    public void Conectar()
    {
        try{
            String usuario = "CE";
            String contrasena = "CE";
            Class.forName("oracle.jdbc.OracleDriver");
            String cadenaConexion = "jdbc:oracle:thin:@localhost:1521:dbprueba";
            setConexion(DriverManager.getConnection(cadenaConexion, usuario, contrasena));
            if (getConexion() != null){
                System.out.println("Se ha establecido la conexion");  
            }
            else { System.out.println("Error de conexion");  }
        }catch(Exception e)
        {   e.printStackTrace();    }
        }

    
    /*Autor: Mariela Barrantes
    Descripcion: conaulta para mostrar los administradores*/
    public ResultSet consultaAdmins(String nombre, String apellido, String identf, String usuario)  {
        db = getConexion();
        sql = "{call ce.getAdministrador(?,?,?,?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, nombre);
            cs.setString(2, apellido);
            cs.setString(3, identf);
            cs.setString(4, usuario);
            cs.registerOutParameter(5, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(5);
            
            return rs; 
            
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    /*Autor: Mariela Barrantes
    Descripcion: Verifica que los credenciales de un usuario sean correctos y que exista
    */
    public ResultSet consultaUsuario(String usuario, String clave)  {
        db = getConexion();
        sql = "{call ce.getUsuario(?,?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, usuario);
            cs.setString(2, clave);
            cs.registerOutParameter(3, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(3);
            System.out.println("Si entra sp conexion " + usuario +" " +clave);            
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet consultaActVacias(String evento)  {
        db = getConexion();
        sql = "{call ce.getActVacias(?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, evento);
            cs.registerOutParameter(2, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(2);
            System.out.println("Si entra sp conexion " + evento);
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
   
    /*Autor: Mariela Barrantes
    Descripcion: Para llenar comboBox de evento
    */
    public ResultSet MostrarEventos()  {
        db = getConexion();
        sql = "{call ce.getEventos(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet MostrarActividades()  {
        db = getConexion();
        sql = "{call ce.getActividades(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet AgendaEventos(String evento)  {
        db = getConexion();
        sql = "{call ce.getAgendaEvento(?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, evento);
            cs.registerOutParameter(2, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(2);            
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet EventosCancelados()  {
        db = getConexion();
        //System.out.println("EC 1");
        sql = "{call ce.getEventoCancelado(?)}";
        try 
        {
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet MostrarNacionalidad()  {
        db = getConexion();
        sql = "{call ce.getNacionalidad(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet MostrarInstitucion()  {
        db = getConexion();
        sql = "{call ce.getInstitucion(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet MostrarOcupacion()  {
        db = getConexion();
        sql = "{call ce.getOcupacion(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet MostrarPais()  {
        db = getConexion();
        sql = "{call ce.getPais(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet MostrarProvincia()  {
        db = getConexion();
        sql = "{call ce.getProvincia(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);            
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet MostrarCanton()  {
        db = getConexion();
        sql = "{call ce.getCanton(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);          
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet MostrarDistrito()  {
        db = getConexion();
        sql = "{call ce.getDistrito(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    /*(pNombre in varchar2, pApellido in varchar2,pApellido2 in varchar2, 
    pidentificacion IN varchar2, pfoto in varchar2, pdir in varchar2, 
    piddistrito in number, pidNac in number, pidocupacion in number, 
         pidTpersona in number, pidTparticipante in number, pidInstitucion in number, 
    pfechaNac in date)*/
    
    public void InsertarPersona(String nombre, String ap1, String ap2, 
            String identif, String foto, String dir, 
            int distrito, int nacionalidad, int ocupacion, 
            int tpersona, int tpartic, int institucion, Date fNac,
            String usuario, String clave)  
    {
        System.out.println("Entra sp persona 1");
        db = getConexion();
        sql = "{call ce.inserts_tablas.insertar_persona(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
        try 
        {            
            System.out.println("Entra sp persona 2");
            cs = conexion.prepareCall(sql);          
            cs.setString(1, nombre);
            cs.setString(2, ap1);
            cs.setString(3, ap2);
            cs.setString(4, identif);
            cs.setString(5, foto);
            cs.setString(6, dir);
            cs.setInt(7, distrito);
            cs.setInt(8, nacionalidad);
            cs.setInt(9, ocupacion);
            cs.setInt(10, tpersona);
            cs.setInt(11, tpartic);
            cs.setInt(12, institucion);
            cs.setDate(13, fNac);
            cs.setString(14, usuario);
            cs.setString(15, clave);           
            cs.execute();
            //return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        //return rs;   
    }
    public void InsertarUsuario(String usuario, String clave)
    {
        db = getConexion();
        sql = "{call ce.inserts_tablas.insertar_usuario(?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, usuario);
            cs.setString(2, clave);           
            cs.execute();
        }catch (Exception e)
            { e.printStackTrace(); }  
    }
    public ResultSet MostrarTpublico()
    {
        db = getConexion();
        sql = "{call ce.getTPublico(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);           
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet TotalActXPublico(String evento)
    {
        db = getConexion();
        sql = "{call ce.TotalActividadesXTipo(?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, evento);
            cs.registerOutParameter(2, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(2);            
            return rs; 
            
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    public ResultSet TopActAsistidas(String evento)
    {
        db = getConexion();
        sql = "{call ce.ProcTopActividades(?,?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.setString(1, evento);
            cs.registerOutParameter(2, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(2);            
            return rs; 
            
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public ResultSet UsuariosEdades()  {
        db = getConexion();
        sql = "{call ce.ProcGetEdades(?)}";
        try 
        {            
            cs = conexion.prepareCall(sql);          
            cs.registerOutParameter(1, OracleTypes.CURSOR);            
            cs.execute();
            rs = (ResultSet) cs.getObject(1);            
            return rs;             
        }catch (Exception e)
            { e.printStackTrace(); }  
        return rs;
    }
    
    public void InsertarPersona(String actividad)  
    {
        System.out.println("Entra sp persona 1");
        db = getConexion();
        sql = "{call ce.inserts_tablas.insertar_persona(?)}";
        try 
        {            
            System.out.println("Entra sp i 2");
            cs = conexion.prepareCall(sql);          
            cs.setString(1, actividad);       
            cs.execute();           
        }catch (Exception e)
            { e.printStackTrace(); }  
        //return rs;   
    }
    
    /*public void Inscripcion(String actividad, String user)  
    {
        System.out.println("sp inscrip  1");
        db = getConexion();
        sql = "{call ce.Inscripcion(?,?)}";
        try 
        {            
            System.out.println("sp inscrip 2");
            cs = conexion.prepareCall(sql);          
            cs.setString(1, actividad);       
            cs.setString(2, user); 
            cs.execute();           
        }catch (Exception e)
            { e.printStackTrace(); }  
        //return rs;   
    }*/
}



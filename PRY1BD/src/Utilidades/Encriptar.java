package Utilidades;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import org.apache.commons.codec.digest.DigestUtils;
/**
 *
 * @author Nakisha Dixon
 */
public class Encriptar {
    
    public String encriptarContrasenia (String contrasenia){
        String textoEncriptadoConMD5=DigestUtils.md5Hex(contrasenia); 
        System.out.println("Texto Encriptado con MD5 : "+textoEncriptadoConMD5);
        return textoEncriptadoConMD5;

    }
    
}

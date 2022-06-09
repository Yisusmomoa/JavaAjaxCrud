/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.alumno;
import models.escuela;
import utilis.DbConnection;

/**
 *
 * @author bjls2
 */
public class alumnoDAO {
   public static int añadirAlumno(alumno alumno){
        Connection con;
       try {
           con = DbConnection.getConnection();
           String sql="CALL añadirAlumno(?,?)";
           CallableStatement statement=con.prepareCall(sql);
           statement.setString(1, alumno.getNombreAlumno());
           statement.setInt(2, alumno.getIdEscuelaPertenece());
           return statement.executeUpdate();
       } catch (SQLException ex) {
           Logger.getLogger(alumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
       }
        
       return 0;
   }
}

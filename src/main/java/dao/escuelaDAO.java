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
import models.escuela;
import utilis.DbConnection;

/**
 *
 * @author bjls2
 */
public class escuelaDAO {
    public static List<escuela>  getEscuelas(){
        List<escuela> listaEscuelas=new ArrayList<>();
        try {
            Connection con=DbConnection.getConnection();
            String sql="CALL getEscuelas()";
            CallableStatement statement=con.prepareCall(sql);
            ResultSet resultSet=statement.executeQuery();
            while(resultSet.next()){
                int id=resultSet.getInt("idEscuela");
                String nombreEscuela=resultSet.getString("nombreEscuela");
                listaEscuelas.add(new escuela(id,nombreEscuela));
            }
        } catch (SQLException ex) {
            Logger.getLogger(alumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaEscuelas;
    }
}

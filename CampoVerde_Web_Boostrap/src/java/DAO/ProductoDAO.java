
package DAO;

import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import modelos.ConexionDB;
import modelos.Producto;

public class ProductoDAO {
    Connection con;
    ConexionDB cn = ConexionDB.getInstancia();
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(){
        List<Producto> productos = new ArrayList();
        String sql = "select * from productos";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setCategoria(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setFoto(rs.getBinaryStream(6));
                p.setStock(rs.getInt(7));
                productos.add(p);
            }
            
        }catch (Exception e){
             e.printStackTrace();
        }finally{
            try{
                if(con!=null){
                    con.close();
                }
                if(ps!=null){
                    ps.close();
                }
                if(rs!=null){
                    rs.close();
                }
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return productos;
    }
    
    public void listarImg(int id, HttpServletResponse response){
        String sql = "select*from productos where ProductoID ="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        
        try{
            outputStream = response.getOutputStream();
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            if(rs.next()){
                inputStream=rs.getBinaryStream("Foto");
            }
            
            bufferedInputStream = new BufferedInputStream(inputStream); 
            bufferedOutputStream = new BufferedOutputStream(outputStream); 
            
            int i=0;
            
            while ((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
        }catch(Exception e){
            
        }
          
    }
    
    public Producto listarPorID(int id){
        String sql = "select*from productos where ProductoID="+id;
        Producto p = new Producto();
        
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setCategoria(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setFoto(rs.getBinaryStream(6));
                p.setStock(rs.getInt(7));
                
            }
        }catch(Exception e){
            
        }
        return p;
    }
}

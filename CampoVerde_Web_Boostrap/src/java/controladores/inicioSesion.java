package controladores;

import modelos.ConexionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/inicioSesion")
public class inicioSesion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        if (validarCredencialesUsuario(correo, contrasena)) {
            request.getSession().setAttribute("usuario", correo);
            response.sendRedirect("index.jsp");
        } else if (validarCredencialesEmpleado(correo, contrasena)) {
            request.getSession().setAttribute("empleado", correo);
            String nombre = NombreEmpleado(correo,contrasena);
            request.getSession().setAttribute("nombre", nombre);
            response.sendRedirect("principal.jsp");
        } else {
            request.setAttribute("error", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public static boolean validarCredencialesUsuario(String correo, String contrasena) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            ConexionDB conexionDB = ConexionDB.getInstancia();
            conn = conexionDB.getConnection();

            String mysql = "SELECT * FROM usuario WHERE correo = ? AND contrasena = ?";
            stmt = conn.prepareStatement(mysql);
            stmt.setString(1, correo);
            stmt.setString(2, contrasena);
            rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            ConexionDB.getInstancia().closeConnection(conn);
        }
    }

    public static boolean validarCredencialesEmpleado(String User, String Dni) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            ConexionDB conexionDB = ConexionDB.getInstancia();
            conn = conexionDB.getConnection();

            String mysql = "SELECT * FROM empleado WHERE user = ? AND dni = ?";
            stmt = conn.prepareStatement(mysql);
            stmt.setString(1, User);
            stmt.setString(2, Dni);
            rs = stmt.executeQuery();
            return rs.next(); // Si hay resultados, las credenciales son válidas para un empleado
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            ConexionDB.getInstancia().closeConnection(conn);
        }
    }

    public String NombreEmpleado(String User, String Dni) {
        String nombre = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            ConexionDB conexionDB = ConexionDB.getInstancia();
            conn = conexionDB.getConnection();

            String mysql = "SELECT * FROM empleado WHERE User = ? AND Dni = ?";
            stmt = conn.prepareStatement(mysql);
            stmt.setString(1, User);
            stmt.setString(2, Dni);
            rs = stmt.executeQuery();
            if(rs.next()){
            nombre=rs.getString("Nombres");
            }
            
            
        }catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return nombre;
        }
    }

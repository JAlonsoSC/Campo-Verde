
package controladores;

import DAO.ProductoDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import modelos.Carrito;
import modelos.Producto;

@WebServlet(name = "controllerProducto", urlPatterns = {"/controllerProducto"})
public class controllerProducto extends HttpServlet {

    ProductoDAO pdao = new ProductoDAO();
    Producto p = new Producto ();
    List<Producto> productos = new ArrayList<>();
    
    List<Carrito> listarCarrito = new ArrayList<>();
    int item;
    double totalPago = 0.0;
    int cantidad = 1;
    Carrito car;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String accion = request.getParameter("accion");
       productos = pdao.listar();
       
       switch(accion){
           case "Comprar":
               int idp = Integer.parseInt(request.getParameter("id"));
               p = pdao.listarPorID(idp);
               item = item +1;
               Carrito carr= new Carrito();
               carr.setItem(item);
               carr.setIdProducto(p.getId());
               carr.setNombre(p.getNombres());
               carr.setDescripcion(p.getDescripcion());
               carr.setPrecioDeCompra(p.getPrecio());
               carr.setCantidad(cantidad);
               carr.setSubtotal(cantidad*p.getPrecio());
               listarCarrito.add(carr);
               
               for (int i = 0; i < listarCarrito.size(); i++) {
                   totalPago = totalPago + listarCarrito.get(i).getSubtotal();
               }
               request.setAttribute("totalPagar", totalPago);
               request.setAttribute("carrito", listarCarrito);
               request.setAttribute("contador",listarCarrito.size());
               request.getRequestDispatcher("carrito.jsp").forward(request, response);
               break;
               
           case "Agregar":
               int pos=0;
               cantidad=1;
               idp = Integer.parseInt(request.getParameter("id"));
               p = pdao.listarPorID(idp);
               if(listarCarrito.size()>0){
                   for (int i=0; i<listarCarrito.size(); i++){
                       if(idp==listarCarrito.get(i).getIdProducto()){
                           pos=i;
                       }
                   }
                   if(idp==listarCarrito.get(pos).getIdProducto()){
                       cantidad=listarCarrito.get(pos).getCantidad()+cantidad;
                       double subtotal = listarCarrito.get(pos).getPrecioDeCompra()*cantidad;
                       listarCarrito.get(pos).setCantidad(cantidad);
                       listarCarrito.get(pos).setSubtotal(subtotal);
                   }else{
                       item = item + 1;
                       carr = new Carrito();
                       carr.setItem(item);
                       carr.setIdProducto(p.getId());
                       carr.setNombre(p.getNombres());
                       carr.setDescripcion(p.getDescripcion());
                       carr.setPrecioDeCompra(p.getPrecio());
                       carr.setCantidad(cantidad);
                       carr.setSubtotal(cantidad * p.getPrecio());
                       listarCarrito.add(carr);
                   }
               }else{
                   item = item + 1;
                   carr = new Carrito();
                   carr.setItem(item);
                   carr.setIdProducto(p.getId());
                   carr.setNombre(p.getNombres());
                   carr.setDescripcion(p.getDescripcion());
                   carr.setPrecioDeCompra(p.getPrecio());
                   carr.setCantidad(cantidad);
                   carr.setSubtotal(cantidad * p.getPrecio());
                   listarCarrito.add(carr);   
               }

               request.setAttribute("contador",listarCarrito.size());
               request.getRequestDispatcher("controllerProducto?accion=productos").forward(request, response);
               
               break;
               
           case "Carrito":
               totalPago = 0.0;
               request.setAttribute("carrito", listarCarrito);
               for(int i = 0; i<listarCarrito.size(); i++){
                   totalPago = totalPago + listarCarrito.get(i).getSubtotal();
               }
               request.setAttribute("totalPagar", totalPago);
               request.getRequestDispatcher("carrito.jsp").forward(request, response);
               
               break;
               
           case "Delete":
               int idproducto = Integer.parseInt(request.getParameter("idp"));
               for (int i = 0; i<listarCarrito.size(); i++){
                   if(listarCarrito.get(i).getIdProducto()==idproducto){
                       listarCarrito.remove(i);
                   }
               }
               break;
               
           case "Actualizar":
               int idpro=Integer.parseInt(request.getParameter("idp"));
               int cant = Integer.parseInt(request.getParameter("cantidad"));
               for (int i=0; i<listarCarrito.size(); i++){
                   if(listarCarrito.get(i).getIdProducto()==idpro){
                       listarCarrito.get(i).setCantidad(cant);
                       double st=listarCarrito.get(i).getPrecioDeCompra()*cant;
                       listarCarrito.get(i).setSubtotal(st);
                   }
               }
               
               break;
           default:
               request.setAttribute("productos", productos);
               request.getRequestDispatcher("productos.jsp").forward(request, response);
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

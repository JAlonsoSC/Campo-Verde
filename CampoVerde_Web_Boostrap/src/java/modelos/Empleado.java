package modelos;

public class Empleado {

    int IdEmpleado;
    String Dni;
    String Nombres;
    String Telefono;
    String Correo;
    String Cargo;
    String User;

    public Empleado() {
    }

    public Empleado(String Dni, String Nombres, String Telefono, String Correo, String Cargo, String User) {
        this.Dni = Dni;
        this.Nombres = Nombres;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.Cargo = Cargo;
        this.User = User;
    }

    public int getIdEmpleado() {
        return IdEmpleado;
    }

    public void setIdEmpleado(int IdEmpleado) {
        this.IdEmpleado = IdEmpleado;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String dni) {
        this.Dni = dni;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String nombres) {
        this.Nombres = nombres;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String telefono) {
        this.Telefono = telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String correo) {
        this.Correo = correo;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String cargo) {
        this.Cargo = cargo;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String user) {
        this.User = user;
    }
}

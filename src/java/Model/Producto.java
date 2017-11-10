/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author JORDAN
 */
public class Producto {
    private int IdProducto;
    private int TypeProduct;
    private String Name;
    private String Imagen;
    private int Quantity;
    private int Price;
    

    public Producto(int IdProducto, String Name, String Imagen, int Quantity, int Price) {
        this.IdProducto = IdProducto;        
        this.Name = Name;
        this.Imagen = Imagen;
        this.Quantity = Quantity;
        this.Price = Price;
    }

    public Producto(String Name, String Imagen, int Quantity, int Price) {
        this.Name = Name;
        this.Imagen = Imagen;
        this.Quantity = Quantity;
        this.Price = Price;
    }
    public Producto(int IdProducto,String Name, int Price) {
        this.IdProducto = IdProducto;
        this.Name = Name;        
        this.Price = Price;
    }

    public int getIdProducto() {
        return IdProducto;
    }

    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    public int getTypeProduct() {
        return TypeProduct;
    }

    public void setTypeProduct(int TypeProduct) {
        this.TypeProduct = TypeProduct;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }
    
}

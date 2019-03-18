package model;

import java.awt.*;
import java.io.File;
import java.io.FileInputStream;

public class Item {
    private int id;
    private String productName;
    private Double productPrice;
    private int quantity;
    private String Description;
    private byte[] productPic;
    private String category;

    public Item() {
    }

    public Item(String productName, Double productPrice, int quantity, String description,byte[] productPic,String category) {
        this.productName = productName;
        this.productPrice = productPrice;
        this.quantity = quantity;
        Description = description;
        this.productPic = productPic;
        this.category=category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public byte[] getProductPic() {
        return productPic;
    }

    public void setProductPic(byte[] productPic) {
        this.productPic = productPic;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", quantity=" + quantity +
                ", Description='" + Description + '\'' +
                ", productPic='" + productPic + '\'' +
                ", category='" + category + '\'' +
                '}';
    }
}

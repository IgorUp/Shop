package domain;

/**
 * Created by Igoryan on 05.05.2016.
 */
public class Product {
    Integer id_product;
    Integer id_manufacturer;
    Integer id_name;
    String model;
    Integer number;
    Integer cost;
    String picture;

    public Integer getId_product() {
        return id_product;
    }

    public void setId_product(Integer id_product) {
        this.id_product = id_product;
    }

    public Integer getId_manufacturer() {
        return id_manufacturer;
    }

    public void setId_manufacturer(Integer id_manufacturer) {
        this.id_manufacturer = id_manufacturer;
    }

    public Integer getId_name() {
        return id_name;
    }

    public void setId_name(Integer id_name) {
        this.id_name = id_name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}

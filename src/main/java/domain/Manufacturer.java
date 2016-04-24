package domain;

/**
 * Created by Igor on 13.04.2016.
 */
public class Manufacturer {
    Integer id_manufacturer;
    String manufacturer_name;

    public String getManufacturer_name() {
        return manufacturer_name;
    }

    public void setManufacturer_name(String manufacturer_name) {
        this.manufacturer_name = manufacturer_name;
    }

    public Integer getId_manufacturer() {
        return id_manufacturer;
    }

    public void setId_manufacturer(Integer id_manufacturer) {
        this.id_manufacturer = id_manufacturer;
    }

}

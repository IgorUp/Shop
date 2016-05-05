package domain;

/**
 * Created by Igoryan on 05.05.2016.
 */
public class Order {
    Integer id_order;
    Integer id_product;
    Integer id_user;
    Integer number_of_product;

    public Integer getId_order() {
        return id_order;
    }

    public void setId_order(Integer id_order) {
        this.id_order = id_order;
    }

    public Integer getId_product() {
        return id_product;
    }

    public void setId_product(Integer id_product) {
        this.id_product = id_product;
    }

    public Integer getId_user() {
        return id_user;
    }

    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }

    public Integer getNumber_of_product() {
        return number_of_product;
    }

    public void setNumber_of_product(Integer number_of_product) {
        this.number_of_product = number_of_product;
    }
}

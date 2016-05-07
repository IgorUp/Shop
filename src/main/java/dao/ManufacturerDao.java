package dao;

import domain.Manufacturer;
import domain.Ups;

import java.util.List;

/**
 * Created by Igor on 13.04.2016.
 */
public interface ManufacturerDao {
    void addOrUpdate(Manufacturer manufacturer);

    void upd(Manufacturer manufacturer);

    void delete(Integer manufacturer_id);

    Manufacturer get(Integer manufacturer_id);

    List<Manufacturer> listManufacturers();

    List<Ups> listTest();
    List<Ups> listComp();
    List<Ups> listPfotoVideo();
    List<Ups> listTel();
    List<Ups> listTV();
}

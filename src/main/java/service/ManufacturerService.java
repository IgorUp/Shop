package service;

import domain.Manufacturer;

import java.util.List;

/**
 * Created by Igoryan on 03.05.2016.
 */
public interface ManufacturerService {

    void addOrUpdate(Manufacturer manufacturer);

    void upd(Manufacturer manufacturer);

    void delete(Integer manufacturer_id);

    Manufacturer get(Integer manufacturer_id);

    List<Manufacturer> listManufacturers();
}

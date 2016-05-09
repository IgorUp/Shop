package dao;

import domain.Ups;

import java.util.List;

/**
 * Created by Igoryan on 08.05.2016.
 */
public interface UpsDao {

    List<Ups> listTest();
    List<Ups> listComp();
    List<Ups> listPfotoVideo();
    List<Ups> listTel();
    List<Ups> listTV();
    Ups get (int product_id);
    void addUps(Ups ups);

    List<Ups> listUps();

}

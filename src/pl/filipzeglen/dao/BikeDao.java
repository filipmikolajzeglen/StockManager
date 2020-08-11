package pl.filipzeglen.dao;

import pl.filipzeglen.model.Bike;

public interface BikeDao {
    public void create(Bike bike);

    public Bike read(String name);

    public void update(Bike bike);

    public void delete(Bike bike);
}

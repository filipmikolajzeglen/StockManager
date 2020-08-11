package pl.filipzeglen.dao;

public class MysqlDaoFactory extends DaoFactory {

    @Override
    public BikeDao getBikeDao() {
        return new MysqlBikeDao();
    }

    @Override
    public UserDao getUserDao() {
        return new MysqlUserDao();
    }

}
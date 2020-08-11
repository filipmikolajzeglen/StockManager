package pl.filipzeglen.dao;

public abstract class DaoFactory {
    public static final int MYSQL_DAO = 1;

    public abstract BikeDao getBikeDao();

    public abstract UserDao getUserDao();

    private static DaoFactory instance;

    public static DaoFactory getDAOFactory(int factoryType) {
        if (instance == null) {
            if (factoryType == MYSQL_DAO) {
                instance = new MysqlDaoFactory();
            }
        }
        return instance;
    }

}
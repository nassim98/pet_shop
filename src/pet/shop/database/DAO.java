package pet.shop.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import pet.shop.properties.PropertiesManager;

public class DAO {
	
	private static DAO dao;
	
	private DAO () {}
	public static DAO getInstance() {
		if(dao ==null) dao=new DAO();
		return dao;
	}
	public static Connection getConnection() throws IOException {
		
		 Properties props = PropertiesManager.getProperties("pet/shop/properties/database.properties");
		Connection connection=null;
		try {
			Class.forName(props.getProperty("JDBC_DRIVER"));
			//driver downlowad
			connection=	DriverManager.getConnection(props.getProperty("DB_url"), props.getProperty("user"), props.getProperty("DB_password"));
			
		}catch(ClassNotFoundException|SQLException e) {
			System.out.println(e.getMessage());
		}
		return connection;
		
	}

}

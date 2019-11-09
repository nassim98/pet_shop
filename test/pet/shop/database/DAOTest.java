package pet.shop.database;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;

import org.junit.jupiter.api.Test;

import pet.shop.properties.PropertiesManager;

class DAOTest {

	@Test
	void testGetConnection() throws IOException {
		assertNotNull(DAO.getConnection());
		System.out.println(PropertiesManager.getDataBaseProperties().
				getProperty("find_user_by_username_and_password"));
	}

}

package pet.shop.repositories;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pet.shop.database.DAO;
import pet.shop.models.Model;
import pet.shop.models.UserModel;
import pet.shop.properties.PropertiesManager;

public class UserRepository extends BasicRepository {
	
	public UserModel  findUser(String userName, String password) {
		
		

		UserModel User = null;
		try {
			PreparedStatement ps = DAO.getConnection()
									  .prepareStatement(PropertiesManager.getDataBaseProperties()
																	     .getProperty("find_user_by_username_and_password"));
					
			// prepare statment [bind values ]
			
			ps.setString(1, userName);
			ps.setString(2, password);
			
			ResultSet result = ps.executeQuery();

			if (result.next()) {
				User = new UserModel(result.getInt("id"),
									 result.getString("username"),
									 result.getString("password"),
						             result.getString("email"),
						             result.getString("phone"),
						             result.getString("address"),
						             result.getString("company") );
						
			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return User;
		
		
	}

	@Override
	public boolean create(Model obj) {
		
		UserModel user = (UserModel)obj;
		boolean result = false;
		try {
			PreparedStatement ps = DAO.getConnection()
									  .prepareStatement(PropertiesManager.getDataBaseProperties()
																	     .getProperty("insert_into_user"));
					
			// prepare statment [bind values ]
			
			//ps.setLong(1, user.getId());
			ps.setString(1,user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getAdress());
			ps.setString(6, user.getCompany());

			result = ps.executeUpdate() > 0;
			

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		
		return  result;
		
		
	}
	
	
	
	
	
	
}
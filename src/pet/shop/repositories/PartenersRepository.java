package pet.shop.repositories;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pet.shop.database.DAO;
import pet.shop.models.PartenersModel;
import pet.shop.properties.PropertiesManager;

public class PartenersRepository extends BasicRepository {


	@Override
	public  ArrayList<PartenersModel> findAll() {

		ArrayList<PartenersModel> partners = new ArrayList<PartenersModel>();
		try {
			PreparedStatement ps = DAO.getConnection().prepareStatement(
					PropertiesManager.getDataBaseProperties().getProperty("select_all_from_partners"));
			ResultSet result = ps.executeQuery();

			while (result.next()) {

				partners
						.add(new PartenersModel(result.getLong("id"),
								result.getString("name"),
								result.getString("email"),
								result.getString("phone"),
								result.getString("website")));

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return (partners.size() > 0) ? partners : null;
	}

}

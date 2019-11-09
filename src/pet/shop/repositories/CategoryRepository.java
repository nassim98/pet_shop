package pet.shop.repositories;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pet.shop.database.DAO;
import pet.shop.models.CategoryModel;
import pet.shop.models.Model;
import pet.shop.properties.PropertiesManager;

public class CategoryRepository extends BasicRepository {

	@Override
	public  ArrayList<CategoryModel> findAll() throws IOException {

		ArrayList<CategoryModel> categories = new ArrayList<CategoryModel>();
		try {
			PreparedStatement ps = DAO.getConnection().prepareStatement(
					PropertiesManager.getDataBaseProperties().getProperty("select_all_from_categories"));
			ResultSet result = ps.executeQuery();

			while (result.next()) {

				categories
						.add(new CategoryModel(result.getInt("id"), result.getString("name"), result.getString("url")));

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return (categories.size() > 0) ? categories : null;
	}

	@Override
	public boolean update(Model obj) throws IOException {

		CategoryModel category = (CategoryModel) obj;

		try {

			DAO.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE)
					.executeUpdate("UPDATE Categories SET name = '" + category.getName() + "SET url='"
							+ category.getUrl() + " WHERE id = " + category.getId());

			obj = this.find(category.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}

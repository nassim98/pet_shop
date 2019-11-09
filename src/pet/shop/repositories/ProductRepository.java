package pet.shop.repositories;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pet.shop.database.DAO;
import pet.shop.models.ProductModel;
import pet.shop.properties.PropertiesManager;

public class ProductRepository extends BasicRepository {

	public ArrayList<ProductModel> findPromotions() {

		ArrayList<ProductModel> products = new ArrayList<ProductModel>();
		try {
			PreparedStatement ps = DAO.getConnection().prepareStatement(
					PropertiesManager.getDataBaseProperties().getProperty("select_products_with_promotions"));

			ResultSet result = ps.executeQuery();

			while (result.next()) {

				products.add(new ProductModel(result.getInt("id"), result.getString("name"), result.getString("color"),
						result.getString("description"), result.getInt("stockquantity"), result.getString("picture"),
						result.getDouble("price"), result.getDate("arrival_date"), result.getInt("promotion"),
						result.getLong("id_category")));

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return (products.size() > 0) ? products : null;
	}

	// query not set yet for this function
	public ArrayList<ProductModel> findFeatured() {

		ArrayList<ProductModel> products = new ArrayList<ProductModel>();
		try {
			PreparedStatement ps = DAO.getConnection().prepareStatement(
					PropertiesManager.getDataBaseProperties().getProperty("select_featured_products"));

			ResultSet result = ps.executeQuery();

			while (result.next()) {

				products.add(new ProductModel(result.getInt("id"), result.getString("name"), result.getString("color"),
						result.getString("description"), result.getInt("stockquantity"), result.getString("picture"),
						result.getDouble("price"), result.getDate("arrival_date"), result.getInt("promotion"),
						result.getLong("id_category")));

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		return (products.size() > 0) ? products : null;
	}

	public ArrayList<ProductModel> findNewProducts() {

		return null;
	}

}
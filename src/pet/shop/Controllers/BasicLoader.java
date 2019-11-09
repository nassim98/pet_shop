package pet.shop.Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import pet.shop.models.Model;
import pet.shop.repositories.BasicRepository;
import pet.shop.repositories.CategoryRepository;
import pet.shop.repositories.PartenersRepository;

public class BasicLoader {
	
	// repository declaration
	private static BasicRepository repository;

	public static void loadCategoriesAndPartners(HttpServletRequest request) throws IOException {

		// getting categories
		repository = new CategoryRepository();
		ArrayList<? extends Model> categories = repository.findAll();

		// getting partners
		repository = new PartenersRepository();
		ArrayList<? extends Model> partners = repository.findAll();

		int s = 5;

		request.setAttribute("s", s);
		request.setAttribute("categories", categories);
		request.setAttribute("partners", partners);

	}

}

package pet.shop.repositories;

import java.io.IOException;
import java.util.ArrayList;

import pet.shop.models.Model;



public abstract class BasicRepository{

	/**
	 * Permet de récupérer un objet via son id
	 * 
	 * @param id
	 * @return
	 */
	public Model find(long id) {

		return null;
	}

	/**
	 * Méthode de création
	 * 
	 * @param obj
	 * @return boolean
	 */
	public boolean create( Model obj) {

		return false;
	}

	/**
	 * Méthode de suppression
	 * 
	 * @param obj
	 * @return boolean
	 */
	public boolean delete(long idModel) {

		return false;
	}

	/**
	 * Méthode de mise à jour
	 * 
	 * @param obj
	 * @return boolean
	 */
	public boolean update(Model obj) throws IOException{

		return false;
	}

	public  ArrayList<? extends Model> findAll() throws IOException {

		return null;
	}

}

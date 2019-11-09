package pet.shop.repositories;

import java.io.IOException;
import java.util.ArrayList;

import pet.shop.models.Model;



public abstract class BasicRepository{

	/**
	 * Permet de r�cup�rer un objet via son id
	 * 
	 * @param id
	 * @return
	 */
	public Model find(long id) {

		return null;
	}

	/**
	 * M�thode de cr�ation
	 * 
	 * @param obj
	 * @return boolean
	 */
	public boolean create( Model obj) {

		return false;
	}

	/**
	 * M�thode de suppression
	 * 
	 * @param obj
	 * @return boolean
	 */
	public boolean delete(long idModel) {

		return false;
	}

	/**
	 * M�thode de mise � jour
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

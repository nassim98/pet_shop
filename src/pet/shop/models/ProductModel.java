package pet.shop.models;

import java.util.Date;

public class ProductModel extends Model {
	
	
	private long id;
	private String name;
	private String color;
	private String description;
	private int stockquantity;
	private String picture;
	private double price;
	private Date arrivalDate;
	private int promotion;
	
	private long idcategory;
	
	
	
	

	public long getIdcategory() {
		return idcategory;
	}

	public void setIdcategory(long idcategory) {
		this.idcategory = idcategory;
	}

	public ProductModel() {
	}

	public long getId() {
		return id;
	}

	
	
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	

	public Date getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	public int getPromotion() {
		return promotion;
	}

	public void setPromotion(int promotion) {
		this.promotion = promotion;
	}

	public void setId(long idModel) {
		this.id = idModel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}
	
	public void setColor(String color) {
		this.color = color;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getStockquantity() {
		return stockquantity;
	}

	public void setStockquantity(int stockquantity) {
		this.stockquantity = stockquantity;
	}

	public ProductModel(long id, String name, String color, String description, int stockquantity, String picture,
			double price, Date arrivalDate, int promotion, long idcategory) {
		super();
		this.id = id;
		this.name = name;
		this.color = color;
		this.description = description;
		this.stockquantity = stockquantity;
		this.picture = picture;
		this.price = price;
		this.arrivalDate = arrivalDate;
		this.promotion = promotion;
		this.idcategory = idcategory;
	}

	
	

	
	
}

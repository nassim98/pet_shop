package pet.shop.models;

public class ContenirModel extends Model {
	private long id;
	private int orderQuantity;
	private long idProduit;
	private long idOrder;

	

	public ContenirModel() {
	};

	public long getId() {
		return id;
	}

	public void setId(long idContenir) {
		this.id = idContenir;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public long getIdProduit() {
		return idProduit;
	}

	public void setIdProduit(long idProduit) {
		this.idProduit = idProduit;
	}

	public long getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(long idOrder) {
		this.idOrder = idOrder;
	}

	public ContenirModel(long id, int orderQuantity, long idProduit, long idOrder) {
		super();
		this.id = id;
		this.orderQuantity = orderQuantity;
		this.idProduit = idProduit;
		this.idOrder = idOrder;
	}
	

}

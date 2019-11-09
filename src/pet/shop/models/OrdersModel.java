package pet.shop.models;
import java.util.Date;

public class OrdersModel extends Model {
	private long idOrder=0;
	private  Date orderDate;
	
	public OrdersModel() {}
	public Date getOrderDate() {
		return  orderDate;
	}
	public void setOrderDate(Date  orderDate) {
		this. orderDate =  orderDate;
	}
	public long getId() {
		return idOrder;
	}
	/*public void setId(long idOrder) {
		this.id = idOrder;
	}
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void setName(String name) {
		// TODO Auto-generated method stub
		
	} */

	
}

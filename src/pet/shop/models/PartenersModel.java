package pet.shop.models;

public class PartenersModel extends Model {
	private long id;
	private String name;
	private String email;
	private String phone;
	private String website;

	public PartenersModel(long idPartener, String name, String email, String phone, String website) {
		this.id = idPartener;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.website = website;

	}

	public PartenersModel() {
	}

	public long getId() {
		return id;
	}

	public void setId(int idPartener) {
		this.id = idPartener;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

}

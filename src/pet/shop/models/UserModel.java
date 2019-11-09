package pet.shop.models;

public class UserModel extends Model {
	private long id;
	private String name;
	private String password;
	private String email;
	private String phone;
	private String adress;
	private String company;
	
	
	

	

	public UserModel(String name, String password, String email, String phone, String adress, String company) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.adress = adress;
		this.company = company;
	}

	public UserModel(long id, String name, String password, String email, String phone, String adress, String company) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.adress = adress;
		this.company = company;
	}

	public UserModel() {
	}

	public long getId() {
		return id;
	}

	public void setId(long idUser) {
		this.id = idUser;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	};

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getAdress() {
		return adress;
	}

	public void setAdresse(String adress) {
		this.adress = adress;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Override
	public String toString() {
		return "UserModel [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phone="
				+ phone + ", adress=" + adress + ", company=" + company + "]";
	}

	
}

package pet.shop.models;

public class CategoryModel extends Model {
	private long id;
	private String name;
	private String url;

	public CategoryModel(int idCategory, String name, String url) {
		this.id = idCategory;
		this.name = name;
		this.url = url;
	}

	public CategoryModel() {
	};

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public long getId() {
		return id;
	}

	public void setId(long idCategory) {
		this.id= idCategory;
	}

	@Override
	public String toString() {
		return "CategoryModel [id=" + id + ", name=" + name + ", url=" + url + "]";
	}

	
}

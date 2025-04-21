package itempackage;

public class itemmodel {
	
	private int id;
	private String name;
	private String category;
	private String quantity;
	private String price;
	private String date;
	
	
	public itemmodel(int id, String name, String category, String quantity, String price, String date) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	

}

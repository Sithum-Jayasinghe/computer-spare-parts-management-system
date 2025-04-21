package supplierpackage;

public class suppliermodel {
	
	private int id;
	private String name;
	private String number;
	private String address;
	private String category;
	private String company;
	

	
	public suppliermodel(int id, String name, String number, String address, String category, String company) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.address = address;
		this.category = category;
		this.company = company;
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
	
	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getCompany() {
		return company;
	}
	
	public void setCompany(String company) {
		this.company = company;
	}
	
	
	

}

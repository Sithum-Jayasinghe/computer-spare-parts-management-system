package paymentpackage;

public class paymentmodel {
	
	private int id;
	private String name;
	private String date;
	private String method;
	private String amount;
	private String currency;
	private String address;
	
	
	
	
	public paymentmodel(int id, String name, String date, String method, String amount, String currency, String address) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.method = method;
		this.amount = amount;
		this.currency = currency;
		this.address = address;
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


	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	public String getMethod() {
		return method;
	}
	
	
	public void setMethod(String method) {
		this.method = method;
	}
	
	
	public String getAmount() {
		return amount;
	}
	
	
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	
	public String getCurrency() {
		return currency;
	}
	
	
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getAddress() {
		return address;
	}
	
	
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}

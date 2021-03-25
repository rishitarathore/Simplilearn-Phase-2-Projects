package product;

public class Product {
	private String product;
	private String type;
	private String price;

	public Product() {
		super();
	}

	@Override
	public String toString() {
		return "Product [product=" + product + ", type=" + type + ", price=" + price + "]";
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}

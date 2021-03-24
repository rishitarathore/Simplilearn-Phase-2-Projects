package product;

import java.util.ArrayList;
import java.util.List;

public class Product {
	private String product;
	private String type;
	private String price;
	//public static List<Product> list=new ArrayList<Product>();
	
	public Product() {
		
	}
	@Override
	public String toString() {
		return "Product [product=" + product + ", type=" + type + ", price=" + price + "]";
	}
//	public static List<Product> getList()
//	{
//	    return list;
//	}
//	public static void listAdd(Product p) {
//		list.add(p);
//	}
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

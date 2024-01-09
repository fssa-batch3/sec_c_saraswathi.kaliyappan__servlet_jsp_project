package com.fssa.skwater.servelt;

public class Products {

	private int productId;
	private double productPrice; // The price of the product
	private String productImageURL; // The URL of the product imageUrl
	private long productCapacity;

	// The unique ID of the product
	public Products(int productId, double productPrice, String productImageURL, long productCapacity2) {
		super();
		this.productId = productId;
		this.productPrice = productPrice;
		this.productImageURL = productImageURL;
		this.productCapacity = productCapacity2;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImageURL() {
		return productImageURL;
	}

	public void setProductImageURL(String productImageURL) {
		this.productImageURL = productImageURL;
	}

	public long getProductCapacity() {
		return productCapacity;
	}

	public void setProductCapacity(int productCapacity) {
		this.productCapacity = productCapacity;
	}

	@Override
	public String toString() {
		return "Products [productId=" + productId + ", productPrice=" + productPrice + ", productImageURL="
				+ productImageURL + ", productCapacity=" + productCapacity + "]";
	}

}

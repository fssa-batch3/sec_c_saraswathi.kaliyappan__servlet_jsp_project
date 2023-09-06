package com.fssa.skwater.servelt;

public class Products {
	
	
	private int productId;
	private String productName;                          //The name of the product
    private String productDescription;                  //A brief description of the product
    private double productPrice;                       //The price of the product
    private String productImageURL;                   //The URL of the product imageUrl
    private long productCapacity;
	
	//The unique ID of the product
    public Products(int productId, String productName, String productDescription, double productPrice,
			String productImageURL, long productCapacity2) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
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
		return "Products [productId=" + productId + ", productName=" + productName + ", productDescription="
				+ productDescription + ", productPrice=" + productPrice + ", productImageURL=" + productImageURL
				+ ", productCapacity=" + productCapacity + "]";
	}




}

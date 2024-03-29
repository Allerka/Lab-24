package co.grandcircus.Lab24.model;

import org.springframework.stereotype.Repository;

@Repository
public class Item {
	private int id;
	private String name;
	private String description;
	private double price;
	private String image;
	private int quantity;
	
public Item() {
}

public Item(int id, String name, String description, double price, String image, int quantity) {
	super();
	this.id = id;
	this.name = name;
	this.description = description;
	this.price = price;
	this.image = image;
	this.quantity = quantity;
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

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

@Override
public String toString() {
	return "Items [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", image="
			+ image + ", quantity=" + quantity + "]";
}
	
}

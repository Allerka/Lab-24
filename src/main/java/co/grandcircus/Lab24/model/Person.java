package co.grandcircus.Lab24.model;

import java.util.Arrays;
import org.springframework.stereotype.Repository;

@Repository
public class Person {
	private int id;
	private String userName;
	private char[] password;
	private String firstName;
	private String lastName;
	private int age;
	private String email;
	private String triforce;
	private String[] drinks;
	private boolean newsletter;

	public Person() {
	}

	public Person(String userName, char[] password, String firstName, String lastName, int age, String email,
			String triforce, String[] drinks, boolean newsletter) {
		super();
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.email = email;
		this.triforce = triforce;
		this.drinks = drinks;
		this.newsletter = newsletter;
	}



	public String getTriforce() {
		return triforce;
	}

	public void setTriforce(String triforce) {
		this.triforce = triforce;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public char[] getPassword() {
		return password;
	}

	public void setPassword(char[] password) {
		this.password = password;
	}

	public String[] getDrinks() {
		return drinks;
	}

	public void setDrinks(String[] drinks) {
		this.drinks = drinks;
	}

	public boolean isNewsletter() {
		return newsletter;
	}

	public void setNewsletter(boolean newsletter) {
		this.newsletter = newsletter;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", password=" + Arrays.toString(password) + ", drinks=" + Arrays.toString(drinks) + ", newsletter="
				+ newsletter + "]";
	}

}

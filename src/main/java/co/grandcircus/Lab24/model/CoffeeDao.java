package co.grandcircus.Lab24.model;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.Lab24.model.Cryptor.CryptoException;

@Repository // talks to the DB
public class CoffeeDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	// select * from the class (references the table Ex. [OBJECT...])
	public List<Person> findAllUsers() {
		// first parameter is the query, second parameter is the default row mapper for
		// Spring
		return jdbcTemplate.query("select * from users", new BeanPropertyRowMapper<Person>(Person.class));
	}

	public List<Item> findAllItems() {
		return jdbcTemplate.query("select * from items", new BeanPropertyRowMapper<Item>(Item.class));
	}
	
	public int addUser(String username, char[] password, String firstName, String lastName, int age, String email, String triforce, String[] drinks, boolean newsletter ) {
		String cyphertext = null;
		String plaintext = password.toString();
		Cryptor pw = new Cryptor();
		try {
		cyphertext = pw.encryptString(password, plaintext);
		} catch (CryptoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String addQuery = "insert into users(username,password,firstname,lastname,age,email,triforce,drinks,newsletter) "
				+ "values(?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(addQuery, username, cyphertext, firstName, lastName, age, email, triforce, Arrays.toString(drinks).replace("[", "").replace("]", ""), newsletter);
	}
	
	public List<Item> searchItem(String search) {
		String searchQuery = "select * from items where name like '%" + search + "%'";
		return jdbcTemplate.query(searchQuery, new BeanPropertyRowMapper<Item>(Item.class));
	}
	
	/*
	 * public int updateUser(Person person) { String updateQuery =
	 * "update users set name=?, category=?, description=? where id=?"; return
	 * jdbcTemplate.update(updateQuery, person.getName(), person.getCategory(),
	 * person.getDescription(), food.getId()); }
	 */
	
	/*
	 * public int deleteUser(int foodId) { String deleteQuery =
	 * "delete from food where id=?"; return jdbcTemplate.update(deleteQuery,
	 * foodId); }
	 */
	
}

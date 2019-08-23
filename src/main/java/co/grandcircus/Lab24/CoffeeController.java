package co.grandcircus.Lab24;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Lab24.model.CoffeeDao;
import co.grandcircus.Lab24.model.Item;
import co.grandcircus.Lab24.model.Person;

@Controller
public class CoffeeController {

	@Autowired
	Person user;

	@Autowired
	Item item;

	@Autowired
	CoffeeDao dao;

	@RequestMapping("/")
	public ModelAndView home() {
		List<Item> shop = dao.findAllItems();
		return new ModelAndView("index", "shop", shop);
	}

	@RequestMapping("/registration")
	public ModelAndView startInfo() {
		return new ModelAndView("registration");
	}

	@PostMapping("/submission")
	public ModelAndView newUser(Person user) {
		dao.addUser(user.getUserName(), user.getPassword(), user.getFirstName(), user.getLastName(), user.getAge(),
				user.getEmail(), user.getTriforce(), user.getDrinks(), user.isNewsletter());
		return new ModelAndView("form-submit", "user", user);
	}
	
	@RequestMapping("search")
	public ModelAndView search(@RequestParam("search") String search) {
		return new ModelAndView("search", "search", dao.searchItem(search));
	}
}

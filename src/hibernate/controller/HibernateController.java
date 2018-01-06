package hibernate.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hibernate.entities.jpa.A;

@RestController
public class HibernateController {

	@RequestMapping("/save")
	public String save(@RequestBody A entity) {
		try {
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "Saved Successfully";
	}
}

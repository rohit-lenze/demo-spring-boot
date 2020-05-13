package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Very basic HTTP controller.
 */
@Controller
class DemoController {

	@GetMapping("/")
	String component(Model model) {
		return "Hello";
	}

	@GetMapping("/rohit")
	String rohit(Model model) {
		return "Rohit";
	}
}

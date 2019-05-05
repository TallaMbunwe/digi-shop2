/**
 * 
 */
package net.dsb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author TALLA MBUNWE
 *
 */

@Controller
public class PageController {
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", "welcome to Spring web MVC");
		
		return mv; 
	}

}


package br.com.unipe.aula.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.aula.dao.CurrencyDAO;
import br.com.unipe.aula.model.Currency;

@Controller
public class CurrencyController {

	@Autowired
	private CurrencyDAO dao;

	@RequestMapping(value = "/formulario", method = RequestMethod.GET)
	public ModelAndView form(Model model) {
		model.addAttribute("currency", new Currency());

		return new ModelAndView("formulario");
	}

	@PostMapping(value = "/formulario")
	public ModelAndView saveCurrency(@ModelAttribute Currency currency) {

		dao = new CurrencyDAO();
		dao.save(currency);

		ModelAndView view = new ModelAndView("formulario");
		view.addObject("mensagem", Double.parseDouble(currency.getValue()) * 5.59);

		return view;
	}

}

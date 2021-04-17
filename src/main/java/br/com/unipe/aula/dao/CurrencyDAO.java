package br.com.unipe.aula.dao;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.unipe.aula.model.Currency;

@Repository
public class CurrencyDAO {

	private static List<Currency> values;

	public CurrencyDAO() {
		values = new LinkedList<Currency>();
	}

	public void save(Currency value) {
		values.add(value);
		System.out.println(values);
	}

	public List<Currency> getAll() {
		return values;
	}

}

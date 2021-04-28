package br.com.unipe.aula.model;

public class Currency {

	private String euro;
	private String yen;

	public Currency() {
	}

	public Currency(String euro, String yen) {
		super();
		this.euro = euro;
		this.yen = yen;
	}

	public String getEuro() {
		return euro;
	}

	public String getYen() {
		return yen;
	}

	public void setEuro(String euro) {
		this.euro = euro;
	}

	public void setYen(String yen) {
		this.yen = yen;
	}

}

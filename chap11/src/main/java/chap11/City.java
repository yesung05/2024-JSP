package chap11;

public class City implements Comparable<Object> {
	private String name;
	private double area;
	private int population;
	private String areaCode;
	public City() { } // 인수가 없는 생성자
	public City(String name, double area, int population, String areaCode) {
	this.name = name;
	this.area = area;
	this.population = population;
	this.areaCode = areaCode;
	
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public int getPopulation() {
		return population;
	}
	public void setPopulation(int population) {
		this.population = population;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 이하 Getter와 Setter를 생성한다. [Source]-[Generator Getters/Setters
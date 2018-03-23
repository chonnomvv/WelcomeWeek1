package kr.co.bit.day3;

public class Student {
	private String name;
	private String schoolNumber;
	private String korean;
	private String english;
	private String math;
	private String science;
	private String history;
	private String total;
	private String coach;
	private String satis;
	private String area;

	public Student() {
	
	}

	public Student(String schoolNumber,String name,  String korean, String english, String math, String science,
			String history, String total, String coach, String satis, String area) {
		this.name = name;
		this.schoolNumber = schoolNumber;
		this.korean = korean;
		this.english = english;
		this.math = math;
		this.science = science;
		this.history = history;
		this.total = total;
		this.coach = coach;
		this.satis = satis;
		this.area = area;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSchoolNumber() {
		return schoolNumber;
	}

	public void setSchoolNumber(String schoolNumber) {
		this.schoolNumber = schoolNumber;
	}

	public String getKorean() {
		return korean;
	}

	public void setKorean(String korean) {
		this.korean = korean;
	}

	public String getEnglish() {
		return english;
	}

	public void setEnglish(String english) {
		this.english = english;
	}

	public String getMath() {
		return math;
	}

	public void setMath(String math) {
		this.math = math;
	}

	public String getScience() {
		return science;
	}

	public void setScience(String science) {
		this.science = science;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getCoach() {
		return coach;
	}

	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getSatis() {
		return satis;
	}

	public void setSatis(String satis) {
		this.satis = satis;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

}

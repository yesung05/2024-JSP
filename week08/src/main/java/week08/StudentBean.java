package week08;

import java.util.Calendar;

public class StudentBean {
	private String id;		//ID
	private String name;	//�̸�
	private String snum;	//�й�
	private int year;		//����
	private String pass;	//��ȣ
	private String email;	//���ڸ���
	
	//�޴� [source]/[Generate Getter and Setters ��]�� �̿� �ڵ� ����
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//�¾ �ظ� �̿��Ͽ� ������ ���̸� ��ȯ�ϴ� �޼ҵ�� ���� ����
	public int getAge() {
		int curyear = Calendar.getInstance().get(Calendar.YEAR);
		System.out.println(curyear);
		return curyear - year + 1;
	}
	
}

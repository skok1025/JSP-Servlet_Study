package mall;

public class PersonalInfo {
	private String name;
	private char gender;
	private int age;
	
	
	public PersonalInfo(String name, char gender, int age) {
		super();
		this.name = name;
		this.gender = gender;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "PersonalInfo [name=" + name + ", gender=" + gender + ", age=" + age + "]";
	}
	
	
	
}

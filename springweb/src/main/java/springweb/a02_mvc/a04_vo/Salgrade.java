package springweb.a02_mvc.a04_vo;
// salgrade springweb.a02_mvc.a04_vo.Salgrade
public class Salgrade {
	private int grade;
	private double losal;
	private double hisal;
	public Salgrade() {
		// TODO Auto-generated constructor stub
	}
	public Salgrade(int grade, double losal, double hisal) {
		this.grade = grade;
		this.losal = losal;
		this.hisal = hisal;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public double getLosal() {
		return losal;
	}
	public void setLosal(double losal) {
		this.losal = losal;
	}
	public double getHisal() {
		return hisal;
	}
	public void setHisal(double hisal) {
		this.hisal = hisal;
	}
	
	
}

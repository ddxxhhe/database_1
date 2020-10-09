package entity;

public class BorrowBook {
	private int id;
	private String name;
	private String borrowDate;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String string) {
		this.name = string;
	}
	
	public String getBorrowDate() {
		return borrowDate;
	}
	
	public void setBorrowDate(String borrowDate) {
		this.borrowDate = borrowDate;
	}
	
	
}

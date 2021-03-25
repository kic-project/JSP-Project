package Model;

public class Member {

	private String id;        
	private String pass;      
	private String name;      
	private String join_date;
	private int birthday;  
    private String tel;
    private String zip_num;
    private String email;
    private String address;
    private float point;
    private int totalprice;
    private int agree;
    private String memlevel;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getZip_num() {
		return zip_num;
	}
	public void setZip_num(String zip_num) {
		this.zip_num = zip_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getPoint() {
		return point;
	}
	public void setPoint(float point) {
		this.point = point;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public int getAgree() {
		return agree;
	}
	public void setAgree(int agree) {
		this.agree = agree;
	}
	public String getMemlevel() {
		return memlevel;
	}
	public void setMemlevel(String memlevel) {
		this.memlevel = memlevel;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", join_date=" + join_date + ", birthday="
				+ birthday + ", tel=" + tel + ", zip_num=" + zip_num + ", email=" + email + ", address=" + address
				+ ", point=" + point + ", totalprice=" + totalprice + ", agree=" + agree + ", memlevel=" + memlevel
				+ "]";
	}
    
    
}

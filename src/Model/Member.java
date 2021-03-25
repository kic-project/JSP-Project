package Model;
public class Member {
private String name;
private int birthday;
private int gender;
private String tel;
private String email;
private String picture;
private String address;
private int point;
private int tempPoint;
private int totalprice;
private int tempTotalprice;
private String shoplist;
private String tempShoplist;
private String memlevel;
private String coupon;
private String orderstatus;
private String zip_num;

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
public int getBirthday() {
	return birthday;
}
public void setBirthday(int birthday) {
	this.birthday = birthday;
}
public int getGender() {
	return gender;
}
public void setGender(int gender) {
	this.gender = gender;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}
public int getTotalprice() {
	return totalprice;
}
public void setTotalprice(int totalprice) {
	this.totalprice = totalprice;
}
public String getShoplist() {
	return shoplist;
}
public void setShoplist(String shoplist) {
	this.shoplist = shoplist;
}
public String getMemlevel() {
	return memlevel;
}
public void setMemlevel(String memlevel) {
	this.memlevel = memlevel;
}
public String getCoupon() {
	return coupon;
}
public void setCoupon(String coupon) {
	this.coupon = coupon;
}
public String getOrderstatus() {
	return orderstatus;
}
public void setOrderstatus(String orderstatus) {
	this.orderstatus = orderstatus;
}
public int getTempPoint() {
	return tempPoint;
}
public void setTempPoint(int tempPoint) {
	this.tempPoint = tempPoint;
}
public int getTempTotalprice() {
	return tempTotalprice;
}
public void setTempTotalprice(int tempTotalprice) {
	this.tempTotalprice = tempTotalprice;
}
public String getTempShoplist() {
	return tempShoplist;
}
public void setTempShoplist(String tempShoplist) {
	this.tempShoplist = tempShoplist;
}
public String getZipnum() {
	return zip_num;
}
public void setZipnum(String zip_num) {
	this.zip_num = zip_num;
}

@Override
public String toString() {
	return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", birthday=" + birthday + ", gender=" + gender + ", tel=" + tel + ", email="
			+ email + ", picture=" + picture + ", address=" + address + ", point=" + point + ", tempPoint=" + tempPoint
			+ ", totalprice=" + totalprice + ", tempTotalprice=" + tempTotalprice + ", shoplist=" + shoplist
			+ ", tempShoplist=" + tempShoplist + ", memlevel=" + memlevel + ", coupon=" + coupon + ", orderstatus="
			+ orderstatus + ", zip_num=" + zip_num +   "]";
}

}

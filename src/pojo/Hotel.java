package pojo;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Registration generated by hbm2java
 */
public class Hotel implements java.io.Serializable {

	private Integer id;
	private String hname;
	private Integer hcost;
	private Date hdate;
	private String htype;
	private String hdesc;
	public Hotel() {
	}

	public Hotel(  String hname, Integer hcost,
			Date hdate, String htype, String hdesc) {
		
		this.hname = hname;
		this.hcost = hcost;
		this.hdate = hdate;
		this.htype = htype;
		this.hdesc = hdesc;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer Id) {
		this.id = Id;
	}

	public String gethname() {
		return this.hname;
	}

	public void sethname(String hname) {
		this.hname = hname;
	}

	public Integer gethcost() {
		return this.hcost;
	}

	public void sethcost(Integer hcost) {
		this.hcost = hcost;
	}

	public Date gethdate() {
		return this.hdate;
	}

	public void sethdate(Date hdate) {
		this.hdate = hdate;
	}

	public String gethtype() {
		return this.htype;
	}

	public void sethtype(String htype) {
		this.htype = htype;
	}

	public String gethdesc() {
		return this.hdesc;
	}

	public void sethdesc(String hdesc) {
		this.hdesc = hdesc;
	}

	

	

	
	
}
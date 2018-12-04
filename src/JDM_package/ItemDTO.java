package JDM_package;

import java.util.Date;

public class ItemDTO {

	private String Item_Name;
	private Date Produce_date;
	private String Origin;
	private int Price;
	private int Item_no;
	private String Importer;
	private Date Expiry_date;
	private int CG_number;
	
	/*public ItemDTO(String Produce_date, String Origin, 
			int Price, int Item_no, String Importer, String Expiry_date, int CG_number) {
		this.Produce_date=Produce_date;
		this.Origin=Origin;
		this.Price=Price;
		this.Item_no=Item_no;
		this.Importer=Importer;
		this.Expiry_date=Expiry_date;
		this.CG_number=CG_number;
	}*/
	
	public String getItem_Name() {
		return this.Item_Name;
	}
	public void setItem_Name(String Item_Name) {
		this.Item_Name=Item_Name;
	}
	public Date getProduce_date() {
		return Produce_date;
	}
	public void setProduce_date(Date Produce_date) {
		this.Produce_date= Produce_date;
	}
	
	public String getOrigin() {
		return Origin;
	}
	public void setOrigin(String Origin) {
		this.Origin= Origin;
	}
	
	
	public int getPrice() {
		return Price;
	}
	public void setPrice(int Price) {
		this.Price= Price;
	}
	
	public int getItem_no() {
		return Item_no;
	}
	public void setItem_no(int Item_no) {
		this.Item_no= Item_no;
	}
	
	public String getImporter() {
		return Importer;
	}
	public void setImporter(String Importer) {
		this.Importer= Importer;
	}
	
	public Date getExpiry_date() {
		return Expiry_date;
	}
	public void setExpiry_date(Date Expiry_date) {
		this.Expiry_date= Expiry_date;
	}
	
	public int getCG_number() {
		return CG_number;
	}
	public void setCG_number(int CG_number) {
		this.CG_number= CG_number;
	}

}

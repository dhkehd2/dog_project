package third.project.dog.bean;

public class KindInfo {
	//품종
	String kind_num;
	String kind_name;
	
	@Override
	public String toString() {
		return "KindInfo [kind_num=" + kind_num + ", kind_name=" + kind_name + "]";
	}

	

	public String getKind_num() {
		return kind_num;
	}
	public void setKind_num(String kind_num) {
		this.kind_num = kind_num;
	}
	public String getKind_name() {
		return kind_name;
	}
	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}
	
	
	
}

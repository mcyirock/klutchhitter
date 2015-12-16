package klutch.homepage.com.model;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="swboardList")
@XmlAccessorType(XmlAccessType.FIELD)
public class SwboardList {
	@XmlElement(name = "swboard")
	private List<Swboard> swboards = new ArrayList<Swboard>();

	public List<Swboard> getSwboards() {
		return swboards;
	}

	public void setSwboards(List<Swboard> swboards) {
		this.swboards = swboards;
	}
	
}

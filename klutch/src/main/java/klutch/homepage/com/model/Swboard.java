package klutch.homepage.com.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="swboard")
@XmlAccessorType(XmlAccessType.FIELD)
public class Swboard {
	
	@XmlElement
	private Integer articlenumber;
	private String articlesubject;
	private String articlecontent;
	private Date articletime;
	private String articleuserid;
	private String articleuserip;
	private Integer articlereadcnt;
	private String articlepicturepath;
	private String search;
	private String mempicture;
	private int cnum;
	private Integer no;
	private Integer cno;
	
	public Integer getArticlenumber() {
		return articlenumber;
	}
	
	public void setArticlenumber(Integer articlenumber) {
		this.articlenumber = articlenumber;
	}

	public String getArticlesubject() {
		return articlesubject;
	}

	public void setArticlesubject(String articlesubject) {
		this.articlesubject = articlesubject;
	}

	public String getArticlecontent() {
		return articlecontent;
	}

	public void setArticlecontent(String articlecontent) {
		this.articlecontent = articlecontent;
	}

	public Date getArticletime() {
		return articletime;
	}

	public void setArticletime(Date articletime) {
		this.articletime = articletime;
	}

	public String getArticleuserid() {
		return articleuserid;
	}

	public void setArticleuserid(String articleuserid) {
		this.articleuserid = articleuserid;
	}

	public String getArticleuserip() {
		return articleuserip;
	}

	public void setArticleuserip(String articleuserip) {
		this.articleuserip = articleuserip;
	}

	public Integer getArticlereadcnt() {
		return articlereadcnt;
	}

	public void setArticlereadcnt(Integer articlereadcnt) {
		this.articlereadcnt = articlereadcnt;
	}

	public String getArticlepicturepath() {
		return articlepicturepath;
	}

	public void setArticlepicturepath(String articlepicturepath) {
		this.articlepicturepath = articlepicturepath;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getMempicture() {
		return mempicture;
	}

	public void setMempicture(String mempicture) {
		this.mempicture = mempicture;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}


	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getCno() {
		return cno;
	}

	public void setCno(Integer cno) {
		this.cno = cno;
	}
	
	
	
}
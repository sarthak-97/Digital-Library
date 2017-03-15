package org.digilib.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class books {
	
	@Id @GeneratedValue
	private int id;
	private String bookname;
	private String author;
	private String genre;
	private String datepublished;
	private String path;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenere() {
		return genre;
	}
	public void setGenere(String genre) {
		this.genre = genre;
	}
	public String getDatepublished() {
		return datepublished;
	}
	public void setDatepublished(String datepublished) {
		this.datepublished = datepublished;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	

}

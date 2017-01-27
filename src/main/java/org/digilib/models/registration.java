package org.digilib.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class registration {

	private String name;
	@Id
	private String email;
	private String avatar;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	
}

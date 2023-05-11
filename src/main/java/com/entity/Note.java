package com.entity;

import java.util.*;

import javax.persistence.*;

@Entity
@Table(name = "Notes")
public class Note
{
	@Id
	private int id;
	
	private String title;
	@Column(length= 1500)
	private String content;
	private Date addedDate;
	
	
	
	public Note()
	{
		super();
	}
	public Note(String title, String content, Date addedDate)
	{
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	/**
	 * @return the id
	 */
	public int getId()
	{
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id)
	{
		this.id = id;
	}
	/**
	 * @return the title
	 */
	public String getTitle()
	{
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title)
	{
		this.title = title;
	}
	/**
	 * @return the content
	 */
	public String getContent()
	{
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content)
	{
		this.content = content;
	}
	/**
	 * @return the addedDate
	 */
	public Date getAddedDate()
	{
		return addedDate;
	}
	/**
	 * @param addedDate the addedDate to set
	 */
	public void setAddedDate(Date addedDate)
	{
		this.addedDate = addedDate;
	}
	
	
	
}

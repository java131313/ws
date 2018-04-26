package com.atguigu.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SysPosition {


    private String id;



    private String name;



    private String parentId;



    private Integer orderNo;



    private String description;



    private String path;



    private String type;


    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createTime;

   
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date modifyTime;

   
    public String getId() {
        return id;
    }

  
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

  
    public String getName() {
        return name;
    }

   
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

   
    public Integer getOrderNo() {
        return orderNo;
    }


	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}


    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

   
    public String getDescription() {
        return description;
    }

    
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    
    public String getPath() {
        return path;
    }

  
    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

   
    public String getType() {
        return type;
    }

    
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

   
    public Date getCreateTime() {
        return createTime;
    }

    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

   
    public Date getModifyTime() {
        return modifyTime;
    }

    
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
}
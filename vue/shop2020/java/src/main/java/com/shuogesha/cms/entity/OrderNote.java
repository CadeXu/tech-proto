package com.shuogesha.cms.entity;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.JSONObject;
import com.shuogesha.platform.entity.User;

public class OrderNote implements Serializable {
	
	






	
	public OrderNote() {
		// TODO Auto-generated constructor stub
	}
	
	

		super();
		JSONObject json=new JSONObject();
		json.put("status", status);
		json.put("pay", pay);
		json.put("shippingStatus", shippingStatus);
		this.content=json.toString();
		this.remark = remark;
		this.orderId = orderId;
		this.user = user;
	}



	public Long getId() {
		return this.id;
	}

		this.id=id;
	}

		return this.name;
	}

		this.name=name;
	} 

		return this.content;
	}

		this.content=content;
	}

		return this.remark;
	}

		this.remark=remark;
	}


	public Long getOrderId() {
		return orderId;
	}



	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}



	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setDateline(Date dateline) {
		this.dateline = dateline;
	}

	public Date getDateline() {
		return dateline;
	}
	  
	
}
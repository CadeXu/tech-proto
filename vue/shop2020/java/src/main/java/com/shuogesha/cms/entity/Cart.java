package com.shuogesha.cms.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Cart implements Serializable {
	
	









	
	private Long referid; //对象id

	private String refer; //对象

		return this.id;
	}

		this.id=id;
	}

		return this.name;
	}

		this.name=name;
	}

		return this.price;
	}

		this.price=price;
	}

		return this.num;
	}

		this.num=num;
	}

		return this.img;
	}

		this.img=img;
	}

		return this.dateline;
	}

		this.dateline=dateline;
	} 

		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getAttrId() {
		return attrId;
	}

	public void setAttrId(Long attrId) {
		this.attrId = attrId;
	}

	public String getRemark() {
		return this.remark;
	}

		this.remark=remark;
	}

		return this.discount;
	}

		this.discount=discount;
	}

	public Long getReferid() {
		return referid;
	}

	public void setReferid(Long referid) {
		this.referid = referid;
	}

	public String getRefer() {
		return refer;
	}

	public void setRefer(String refer) {
		this.refer = refer;
	} 
}
package com.shuogesha.cms.entity;

import java.io.Serializable;
import java.util.List;

public class ProductCat implements Serializable {
	
	







	
	private String itemParam;//其他参数
	
	// 子分类
	private List<ProductCat> children; 

		return this.id;
	}

		this.id=id;
	}

		return this.name;
	}

		this.name=name;
	} 

		return this.img;
	}

		this.img=img;
	}

		return this.icon;
	}

		this.icon=icon;
	}

		return this.hiden;
	}

		this.hiden=hiden;
	}

		return this.sort;
	}

		this.sort=sort;
	}

		return this.remark;
	}

		this.remark=remark;
	}

	public ProductCat getParent() {
		return parent;
	}

	public void setParent(ProductCat parent) {
		this.parent = parent;
	}

	public String getItemParam() {
		return itemParam;
	}

	public void setItemParam(String itemParam) {
		this.itemParam = itemParam;
	}

	public List<ProductCat> getChildren() {
		return children;
	}

	public void setChildren(List<ProductCat> children) {
		this.children = children;
	} 
	
}
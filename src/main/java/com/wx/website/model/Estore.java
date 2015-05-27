package com.wx.website.model;

import org.springframework.stereotype.Component;

@Component
public class Estore {
    private Integer goodsId;

    private String goodsName;

    private String category;

    private String describe;

    private Double price;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

	@Override
	public String toString() {
		return "Estore [goodsId=" + goodsId + ", goodsName=" + goodsName
				+ ", category=" + category + ", describe=" + describe
				+ ", price=" + price + "]";
	}
}
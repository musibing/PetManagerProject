package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class FreshProduct implements Serializable{/*生鲜产品实体类*/
		private int productID;/*产品ID*/
		private String productName;/*产品名字*/
		private Double price;/*价格*/
		private String util;/*单位*/
		private String certificationmark;/*认识标识*/
		private String  producingarea;/*产地*/
		private String supplier;/*供应商*/
		private String imgPath;/*展示图片*/
		public FreshProduct() {
			super();
		}
		
		public int getProductID() {
			return productID;
		}
		
		public FreshProduct(int productID, String productName, Double price,
				String util, String certificationmark, String producingarea,
				String supplier, String imgPath) {
			super();
			this.productID = productID;
			this.productName = productName;
			this.price = price;
			this.util = util;
			this.certificationmark = certificationmark;
			this.producingarea = producingarea;
			this.supplier = supplier;
			this.imgPath = imgPath;
		}

		public void setProductID(int productID) {
			this.productID = productID;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public Double getPrice() {
			return price;
		}
		public void setPrice(Double price) {
			this.price = price;
		}
		public String getUtil() {
			return util;
		}
		public void setUtil(String util) {
			this.util = util;
		}
		public String getCertificationmark() {
			return certificationmark;
		}
		public void setCertificationmark(String certificationmark) {
			this.certificationmark = certificationmark;
		}
		public String getProducingarea() {
			return producingarea;
		}
		public void setProducingarea(String producingarea) {
			this.producingarea = producingarea;
		}
		public String getSupplier() {
			return supplier;
		}
		public void setSupplier(String supplier) {
			this.supplier = supplier;
		}
		
		public String getImgPath() {
			return imgPath;
		}

		public void setImgPath(String imgPath) {
			this.imgPath = imgPath;
		}

		
		public String toString() {
			return "FreshProduct [productID=" + productID + ", productName="
					+ productName + ", price=" + price + ", util=" + util
					+ ", certificationmark=" + certificationmark
					+ ", producingarea=" + producingarea + ", supplier="
					+ supplier + ", imgPath=" + imgPath + "]";
		}

		
		
		
}

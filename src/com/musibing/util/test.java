package com.musibing.util;

public class test {
	public static void testdata() {
		String tempdata = "../PetIMG/Cat/petEntryStatistics/912000005petEntryStatistics1.jpg";
		StringBuffer newdata = new StringBuffer(tempdata);
		newdata = newdata.insert(3, "img/");
		System.out.println("新数据的结果是：" + newdata);
	}

	public static void main(String[] args) {
	testdata();

}
}

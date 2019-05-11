package com.musibing.util;

import java.util.List;

public class TempStringData {
	public List<String> ToUPChar(List<String> TempString) {
		for (int i = 0; i < TempString.size(); i++) {
			char[] chartest = TempString.get(i).toCharArray();
			for (int x = 0; x < chartest.length; x++) {
				if (chartest[0] >= 'a' && chartest[0] <= 'z') {

					chartest[0] -= 32;

				}
			}

			String NewTempString = new String(chartest);

			TempString.set(i, NewTempString);

		}
		return TempString;

	}

	public List<String> ToLowChar(List<String> TempString) {
		for (int i = 0; i < TempString.size(); i++) {
			char[] chartest = TempString.get(i).toCharArray();
			for (int x = 0; x < chartest.length; x++) {
				if (chartest[0] >= 'A' && chartest[0] <= 'Z') {

					chartest[0] += 32;

				}
			}

			String NewTempString = new String(chartest);

			TempString.set(i, NewTempString);

		}
		return TempString;

	}

	public List<String> KeyWords(List<String> TempString) {
		String[] KeyWord = new String[] { "order", "by", "from", "form",
				"where", "select","poodle" };
		for (int i = 0; i < TempString.size(); i++) {

			for (int x = 0; x < KeyWord.length; x++) {
				if(TempString.get(i).equals("poodle")){
					TempString.set(i, "petnaeme");
					continue;
				}
				else if (KeyWord[x].equals(TempString.get(i))) {

					TempString.set(i, "list");

					continue;
				}
			}

		}
		return TempString;
	}
}

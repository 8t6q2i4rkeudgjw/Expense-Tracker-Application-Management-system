package CBF;

import java.util.*;

public class Stem 
{
	public String stem(String words)
	{
		LinkedList <String>www=new LinkedList<String>();
		String reviews="";
		String model="";
		
		String fillter[]=words.split("\\s");
		for(String check:fillter)
		{
			model=check;
			
			if(check.endsWith("ings"))
				model=check.replace("ings", "");
			
			else if(check.endsWith("ding"))
				model=check.replace("ding", "d");
			
			else if(check.endsWith("sing"))
				model=check.replace("sing", "se");
			
			else if(check.endsWith("gally"))
				model=check.replace("gally", "gal");
			
			else if(check.endsWith("sted"))
				model=check.replace("sted", "st");
			
			else if(check.endsWith("oring"))
				model=check.replace("oring", "or");
			
			else if(check.endsWith("sing"))
				model=check.replace("sing", "se");
			
			else if(check.endsWith("ced"))
				model=check.replace("ced", "ce");
			
			else if(check.endsWith("aring"))
				model=check.replace("aring", "ar");
			
			else if(check.endsWith("ured"))
				model=check.replace("ured ", "ure");
			
			else if(check.endsWith("iled"))
				model=check.replace("iled", "ile");
			
			else if(check.endsWith("bered"))
				model=check.replace("bered", "ber");
			
			else if(check.endsWith("mbers"))
				model=check.replace("mbers", "mber");
			
			else if(check.endsWith("longing"))
				model=check.replace("longing", "long");
			
			///////////////////////////////////////
			
			else if(check.endsWith("ers"))
				model=check.replace("ers", "er");
			
			else if(check.endsWith("ached"))
				model=check.replace("ached", "ach");

			else if(check.endsWith("red"))
				model=check.replace("red", "re");
			
			else if(check.endsWith("sued"))
				model=check.replace("sued", "ue");
			
			else if(check.endsWith("ured"))
				model=check.replace("ured", "ure");
			
			else if(check.endsWith("aken"))
				model=check.replace("aken", "ake");
			
			else if(check.endsWith("lines"))
				model=check.replace("lines", "line");
			
			else if(check.endsWith("tted"))
				model=check.replace("tted", "t");
			
			else if(check.endsWith("ling"))
				model=check.replace("ling", "l");
			
			else if(check.endsWith("ting"))
				model=check.replace("ting", "t");
			
			else if(check.endsWith("ming"))
				model=check.replace("ming", "me");
			
			else if(check.endsWith("national"))
				model=check.replace("national", "nation");
			
			else if(check.endsWith("tional"))
				model=check.replace("tional", "tion");
			
			else if(check.endsWith("enci"))
				model=check.replace("enci", "ence");
			
			else if(check.endsWith("anci"))
				model=check.replace("anci", "ance");
			
			else if(check.endsWith("izer"))
				model=check.replace("izer", "ize");
			
			else if(check.endsWith("bli"))
				model=check.replace("bli", "ble");
			
			else if(check.endsWith("alli"))
				model=check.replace("alli", "al");
			
			else if(check.endsWith("entli"))
				model=check.replace("entli", "ent");
			
			else if(check.endsWith("eli"))
				model=check.replace("eli", "e");
			
			else if(check.endsWith("ousli"))
				model=check.replace("ousli", "ous");
			
			else if(check.endsWith("ization"))
				model=check.replace("ization", "ize");
			
			else if(check.endsWith("ation"))
				model=check.replace("ation", "ate");
			
			else if(check.endsWith("ator"))
				model=check.replace("ator", "ate");
			
			else if(check.endsWith("alism"))
				model=check.replace("alism", "al");
			
			else if(check.endsWith("iveness"))
				model=check.replace("iveness", "ive");
			
			else if(check.endsWith("fulness"))
				model=check.replace("fulness", "ful");
			
			else if(check.endsWith("ousness"))
				model=check.replace("ousness", "ous");
			
			else if(check.endsWith("aliti"))
				model=check.replace("aliti", "al");
			
			else if(check.endsWith("iviti"))
				model=check.replace("iviti", "ive");
			
			else if(check.endsWith("biliti"))
				model=check.replace("biliti", "ble");
			
			else if(check.endsWith("logi"))
				model=check.replace("logi", "log");
			
			else if(check.endsWith("icate"))
				model=check.replace("icate", "ic");
			
			else if(check.endsWith("ative"))
				model=check.replace("ative", "");

			else if(check.endsWith("alize"))
				model=check.replace("alize", "al");
			
			else if(check.endsWith("iciti"))
				model=check.replace("iciti", "ic");
			
			else if(check.endsWith("ving"))
				model=check.replace("ving", "ve");
			
			else if(check.endsWith("ical"))
				model=check.replace("ical", "ic");
			
			else if(check.endsWith("ful"))
				model=check.replace("ful", "");
			
			else if(check.endsWith("ness"))
				model=check.replace("ness", "");
			
			else if(check.endsWith("ement"))
				model=check.replace("ement", "e");
			
			else if(check.endsWith("nning"))
				model=check.replace("nning", "n");
			
			else if(check.endsWith("at"))
				model=check.replace("at", "ate");
			
			else if(check.endsWith("bl"))
				model=check.replace("bl", "ble");
			
			else if(check.endsWith("iz"))
				model=check.replace("iz", "ize");
			
			else if(check.endsWith("ining"))
				model=check.replace("ining", "in");
			
			else if(check.endsWith("ding"))
				model=check.replace("ding", "d");
			
			else if(check.endsWith("ived"))
				model=check.replace("ived", "ive");
			
			else if(check.endsWith("ked"))
				model=check.replace("ked", "k");
			
			reviews+=model+" ";
			www.add(model);
		}
		
		//System.out.println(reviews);
		//return www;
                return reviews;
	}
	public static void main(String args[])
	{
		String words="Timing and Faithful Truthful datamining national relational kindness enhancement arriving running";
		Stem ss=new Stem();		
		LinkedList<String> kk=new LinkedList<String>();
		//kk=ss.stem(words);
		//System.out.println(kk);
	}
}

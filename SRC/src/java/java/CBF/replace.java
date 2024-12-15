package CBF;

public class replace 
{
	public String remove(String words)
	{
		words=words.replace("'", "");
		words=words.replace(".", "");		
		words=words.replace(",", "");
		words=words.replace("(", "");
		words=words.replace(")", "");
		words=words.replace("]", "");
		words=words.replace("[", "");
		words=words.replace("\"", "");
		words=words.replace(";", "");
		words=words.replace("?", "");
		words=words.replace("!", "");
		words=words.replace(":", "");
		words=words.replaceAll("( )+", " ");
		words=words.trim();
		return words;
	}
	public static void main(String args[])
	{
		replace r=new replace();
		System.out.println(r.remove(" hai' how. don't some,     ' \"hai\" '      beautifull")); 
	}
}

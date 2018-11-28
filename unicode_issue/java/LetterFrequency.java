package unicode_issue;

import java.io.*;

public class LetterFrequency {
	
	public static void main (String[]args)throws IOException {
		
		BufferedReader BR = new BufferedReader(new InputStreamReader(System.in));
	    System.out.print("Enter Any Text:");
	    String output = BR.readLine();
	    output=output.toLowerCase();
	    int length = output.length();
	    char character;

	    System.out.println("Letters\tFrequency\tCount");

	    int count = 0;
	    for(char i ='a'; i<='z'; i++)
	    {
	        count = 0;
	        for(int j=0; j<length; j++)
	        {
	            character = output.charAt(j);
	            if(character==i)
	                count++;
	        }
	        if(count!=0)
	        {
	            System.out.println(i+"\t\t"+count);
	        }
	      }
		
	}

}
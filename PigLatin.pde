  
public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
  {
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
  String[] vowels = {"a","e","i","o","u"};
  int[] locs = new int[vowels.length];
  
  for(int o=0;o<vowels.length;o++)
  {
    locs[o] = sWord.indexOf(vowels[o]);
  }
  
  int curmin = sWord.length();
  boolean hasLetters = false;
  
  for(int i=0;i<locs.length;i++)
  {
    if(locs[i]>-1&&locs[i]<=curmin)
    {
      hasLetters = true;
      curmin = locs[i];
    }
  }
  
  if(hasLetters){
    return curmin;
  }
  else{
    return -1;
  }
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else
  {
    String a = sWord.substring(0, findFirstVowel(sWord));
    String b = sWord.substring(findFirstVowel(sWord), sWord.length());
    
    if(a.equals("q"))
    {
      a = sWord.substring(0, findFirstVowel(sWord)+1);
      b = sWord.substring(findFirstVowel(sWord)+1, sWord.length());
    }
  
    return b+a+"ay";
  }
}

public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String backwards = reverse(word);
  String lettre = onlyLetters(word);
  String last = reverse(lettre);
  if(word.equals(backwards))
    return true;
  if(last.equals(lettre))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    for(int i = str.length()-1; i >= 0; i--){
      if(Character.isLetter(str.charAt(i)))
        sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}
public String onlyLetters(String sString)
{
    String sNew = "";
    for(int i = 0; i<= sString.length() -1; i++){
        if(Character.isLetter(sString.charAt(i)) == true && sString.charAt(i) != ' ')
            sNew = sNew + sString.substring(i, i+1);
    }
    return sNew.toLowerCase();
}

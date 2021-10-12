<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Powers of Numbers</title>
<link rel="stylesheet" href="Powers.css" type="text/css">
</head>
<body>
When you raise a number to a power, you are multiplying that number by itself
<br>Multiply four twos together, and you have two to the fourth power, written 2<sup>4</sup> = 2 &times 2 &times 2 &times 2 = 16
<br><img src="images/mimeinacube.png" alt="mime in a cube" class="fr" style="width:195px;height:195px;margin-right:15px;">
Three to the second power, also called "3 squared", is written 3<sup>2</sup> = 3 &times 3 = 9
<br>Five to the third power, also called "5 cubed", is written 5<sup>3</sup> = 5 &times 5 &times 5 = 125
<br>
<br>Can you raise a number to a negative power? Yes you can. 
<br>4<sup>-3</sup> 
= <span class="frac"><sup>1</sup><span>&frasl;</span><sub><sub>4<sup>3</sup></sub></span>
= <span class="frac"><sup>1</sup><span>&frasl;</span><sub><sub>4 &times 4 &times 4</sub></span>
= <span class="frac"><sup>1</sup><span>&frasl;</span><sub><sub>64</sub></span>
<br>
<br>The power that you raise a number to is called an exponent
<br>When you multiply the same number raised to different powers, you add the exponents
<br>2<sup>3</sup> &times 2<sup>2</sup> = ( 2 &times 2 &times 2 ) &times ( 2 &times 2 ) = 2<sup>5</sup> = 32
<br>10<sup>4</sup> &times 10<sup>-3</sup> 
= <span class="frac"><sup>10 &times 10 &times 10 &times 10</sup><span>&frasl;</span><sub><sub>10 &times 10 &times 10</sub></span>
= 10<sup>1</sup> = 10
<br>6<sup>2</sup> &times 6<sup>-2</sup> = 6<sup>0</sup> ... what does that mean?
<br> = <span class="frac"><sup>6 &times 6</sup><span>&frasl;</span><sub><sub>6 &times 6</sub></span> = 1
<br>
<br>Any number raised to the 0 power is 1
<br>(-7)<sup>3</sup> &times (-7)<sup>-3</sup> = (-7)<sup>0</sup>
<br> = <span class="frac"><sup>(-7) &times (-7) &times (-7)</sup><span>&frasl;</span><sub>(-7) &times (-7) &times (-7)</sub></span> 
= <span class="frac"><sup>-343</sup><span>&frasl;</span><sub>-343</sub></span> = 1
<br>
<br>When you mutliply two <i>different</i> numbers to some power, you cannot add the exponents
<br>2<sup>3</sup> &times 7<sup>2</sup> = 2 &times 2 &times 2 &times 7 &times 7 = 8 &times 49 = 392
<br>
<br>When you raise a number to a power to yet another power, the exponents are multiplied
<br>(2<sup>4</sup>)<suP>3</suP> = (2<sup>4</sup>) &times (2<sup>4</sup>) &times (2<sup>4</sup>)
= (2 &times 2 &times 2 &times 2 ) &times (2 &times 2 &times 2 &times 2 ) &times (2 &times 2 &times 2 &times 2 )
= s<sup>12</sup> = 4096
<br>
<br>Can you raise a number to a fractional power? Again, yes you can, for example:
<br>9<sup><span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span></sup>
... What does that mean? Watch what happens when you multiply it by itself
<br>9<sup><span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span></sup>
&times 9<sup><span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span></sup>
= 9<sup><span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span>
+ <span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span></sup>
= 9<sup>1</sup> = 9
<br>So 9<sup> <span class="fracp"><sup>1</sup><span>&frasl;</span><sub>2</sub></span> </sup> 
= <span style="white-space: nowrap; font-size:larger">
&radic;<span style="text-decoration:overline;">&nbsp;9&nbsp;</span>
</span> = 3
<br>
<br>Generally when you say a number is a power of some other number, that other number is an integer.
<br>3<sup>0</sup> = 1, 3<sup>1</sup> = 3, 3<sup>2</sup> = 9, 3<sup>3</sup> = 27, 3<sup>4</sup> = 81
are all considered powers of 3.
<br>3<sup><span class="fracp"><sup>5</sup><span>&frasl;</span><sub>7</sub></span></sup> = 2.1918 is not, otherwise any number could be considered a power of 3
<br>
<br>Is a power of a number the same as a multiple of a number? No. A power of a number is always a multiple
<br>of a number, but a multiple is not always a power
<br>2, 4, 8, 16, 32, 64, 128 ... are all powers of two, but 6, 10, 12, 14, 18... are multiples of two but not powers of two
</body>
</html>
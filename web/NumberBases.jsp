<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number Bases</title>
<link rel="stylesheet" href="NumberBases.css" type="text/css">
</head>
<body>
<h4 id="decimal">Base 10 or decimal</h4>
<br>The way we normally count is base 10. We count up to 9, then carry a one to the ten's place to make 10. 
After 19, we carry the one again to make 20. After 99, we carry the one to the hundred's place to make 100. 
Every digit in a base 10 number represents a multiple of a <a href='/Tutorials/Powers.jsp' class='ndx'> power </a> 
of 10.

<h4>A cumbersome way to represent numbers: </h4>
<br>In Roman numerals, "M" represents 1000, "D" is 500, "C" is 100, "L" is 50, "X" is 10, "V" is 5 and "I" is 1.
A smaller letter after a larger letter is added to the larger letter. A smaller letter before a larger letter is subtracted from
the larger letter. Up to three of the smaller letters can be added to a larger letter and only one smaller letter 
can be subtracted. 
<br>
<br>The decimal number 1903 is written MCMIII. The decimal number 1969 is written MCMLXIX. To find out the number 
of years between Orville and Wilbur Wright's first powered flight and the first moon landing, you would
go through this mess:
<table>
<tr>
	<td></td>			<td>M</td>	 <td>CM</td>	<td>LX</td>		<td>IX</td>		<td></td>	<td></td>		<td class="rt">(1000) + (1000 - 100) + (50 + 10) + (10 - 1) = 1000 + 900 + 60 + 9 = 1969</td>
</tr>
<tr>
<td class="bd">-</td>	<td>M</td> 	<td>CM</td>		<td></td>		<td></td>		<td></td>	<td>III</td>	<td class="rt">(1000) + (1000 - 100) + (3) = 1000 + 900 + 3 = 1903</td>
</tr>
<tr>
	<td></td>			<td></td> 	 <td></td>		<td>LX</td>		<td>IX</td>		<td></td>	<td>-III</td>	<td>Not right, no one said you could have negative numbers</td>
</tr>
<tr>
	<td></td>			<td></td> 	 <td></td>		<td>LX</td>		<td>IIIIX</td>	<td></td>	<td></td>		<td>Not right, you can't subtract 4 I's from X</td>
</tr>
<tr>
	<td></td>			<td></td> 	 <td></td>		<td>LX</td>		<td></td>		<td>VI</td>	<td></td>		<td class="rt">(50 + 10) + (5+1) = 60 + 6 = 66</td>
</tr>
</table>
<img src="images/roman.png" alt="Roman" class="fr" style="width:170px;height:270px;margin-right:15px;">
There are no zeros to hold the place in a numbers such as MCMIII (1903) that don't have a fifty's place, a ten's place
 or a five's place
<br>
<br>
The Arabic base 10 numbers we use are much more compact and easier to work with
<table>
<tr>
	<th colspan="3" class="verticalTableHeader">10<sup>3</sup></th>
	<th colspan="3" class="verticalTableHeader">10<sup>2</sup></th>
	<th colspan="3" class="verticalTableHeader">10<sup>1</sup></th>
	<th colspan="3" class="verticalTableHeader">10<sup>0</sup></th>
	<th colspan="4" class="verticalTableHeader"></th>
</tr>
<tr>
	<th colspan="3">1</th>
	<th colspan="3">9</th>
	<th colspan="3">6</th>
	<th colspan="3">9</th>
	<th colspan="4"></th>
</tr>
<tr>
	<td>1</td><td>&times</td><td>1000</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td class="rt" >1000</td><td></td><td></td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td>9</td><td>&times</td><td>100</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td class="rt" >900</td><td></td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td>6</td><td>&times</td><td>10</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td class="rt" >60</td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td>9</td><td>&times</td><td>1</td>
	<td></td><td></td><td></td><td class="rt" >9</td>
</tr>
<tr>
	<th colspan="3">1</th>
	<th colspan="3">9</th>
	<th colspan="3">0</th>
	<th colspan="3">3</th>
	<th colspan="4"></th>
</tr>
<tr>
	<td>1</td><td>&times</td><td>1000</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td class="rt" >-1000</td><td></td><td></td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td>9</td><td>&times</td><td>100</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td class="rt" >-900</td><td></td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td>0</td><td>&times</td><td>10</td>
	<td></td><td></td><td></td>
	<td></td><td></td><td class="rt" >-0</td><td></td>
</tr>
<tr>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td></td><td></td><td></td>
	<td>3</td><td>&times</td><td>1</td>
	<td></td><td></td><td></td><td class="rt" >-3</td>
</tr>
<tr>
	<th colspan="12">Difference</th><td class="nb"></td><td class="nb"></td><td class="nb">6</td><td class="nb">6</td>
</tr>
</table>
<h3>Other bases</h3>
<p><img src="images/polydactylcat.png" alt="6toedcat" class="fl" style="width:170px;height:195px;margin:15px;">Suppose we were polydactyl, like some cats, and had 12 fingers. Chances are, we would count to eleven
and then carry the 1 when we got to twelve. It might make some math easier. For example, try the 
<a href="FindPrimes.jsp">What is a Prime Number?</a> tutorial with the window resized for 12 columns
rather than 10. But we've already learned to count on our ten fingers and learned to do our arithmetic
in base 10 and it would be very difficult to switch over. So what is the use of other number systems?
<h4 id="binary">Base 2 or Binary</h4>
Most computers only work with 1's and 0's. There are "Analog" computers that work with 
a continuous range of numbers, but they are tricky to program and hard to keep accurate. So the computers
that most of us use are "Digital" computers that only work with 1's and 0's. They count, add, subtract,
multiply and do all their math in "binary", also called "base 2". The following table lists some 
numbers in decimal or base 10 and in binary or base 2. In binary, each digit is called a binary digit,
or "bit" for short. In base 10, every digit represented a multiple of a power of 10, in base 2, every bit
represents a power of 2.

<table>
<tr>
	<th colspan="3" >base 10</th><th colspan="9" >base 2</th><th></th>
</tr>
<tr>
	<th>10<sup>2</sup></th>
	<th>10<sup>1</sup></th>
	<th>10<sup>0</sup></th>
	<th>2<sup>8</sup></th>
	<th>2<sup>7</sup></th>
	<th>2<sup>6</sup></th>
	<th>2<sup>5</sup></th>
	<th>2<sup>4</sup></th>
	<th>2<sup>3</sup></th>
	<th>2<sup>2</sup></th>
	<th>2<sup>1</sup></th>
	<th>2<sup>0</sup></th>
	<th></th>
</tr>
<tr>
	<td></td><td></td><td>0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0</td><td></td>
</tr>
<tr>
	<td></td><td></td><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td></td><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>carry 1 to the 2's place as the least significant bit was as big as it could get</td>
</tr>
<tr>
	<td></td><td></td><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td></td><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>carry 1 to the 4's place as the least significant 2 bits were as big as they could get</td>
</tr>
<tr>
	<td></td><td></td><td>5</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td></td><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>carry a 1 to the 2's place</td>
</tr>
<tr>
	<td></td><td></td><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td></td><td>8</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>carry a 1 to the 8's place</td>
</tr>
<tr>
	<td></td><td></td><td>9</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>1</td><td>0</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>0</td><td>carry a 1 to the 2's place</td>
</tr>
<tr>
	<td></td><td>1</td><td>1</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>1</td><td>2</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>0</td><td>carry a 1 to the 4's place</td>
</tr>
<tr>
	<td></td><td>1</td><td>3</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>1</td><td>4</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td>0</td><td>carry a 1 to the 2's place</td>
</tr>
<tr>
	<td></td><td>1</td><td>5</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>1</td><td>6</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>carry a 1 to the 16's place</td>
</tr>
<tr>
	<td></td><td>1</td><td>7</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>1</td><td>8</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>carry 1 to the 2's place</td>
</tr>
<tr>
	<td></td><td>1</td><td>9</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td></td><td>2</td><td>0</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>carry 1 to the 4's place</td>
</tr>
<tr>
	<td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td></td>
</tr>
<tr>
	<td>1</td><td>0</td><td>7</td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td>1</td><td>0</td><td>8</td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>carry 1 to the 4's place</td>
</tr>
<tr>
	<td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td></td>
</tr>
<tr>
	<td>2</td><td>5</td><td>5</td><td></td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td></td>
</tr>
<tr>
	<td>2</td><td>5</td><td>6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>carry a 1 to the 256's place</td>
</tr>
</table>
As you can see, binary numbers are ugly and hard to read and these are not even close to the biggest 
numbers computers work with. In order for us to use them, computers take all the numbers we type into them,
convert them to 1's and 0's, calculate what we ask them to calculate, then convert the 1's and 0's back to 
numbers we can understand. 
<h4 id="hex" >Base 16 or Hexadecimal</h4>
<p>If you write computer programs or design and test new computer hardware, you will frequently want to see
where a computer is getting the wrong instructions from or where it hid the information you were expecting. 
Like everything else the computer does, the addresses it reads instructions from and stores information to
are all binary numbers. (In fact the instructions themselves are binary numbers). As you will see in the 
<a href="/Practice/Bases.jsp">Number Bases</a> exercises, converting from base 2 to base 10 or from base 10 to base 2 
is tedious. Converting from base 16 to base 2 and from base 2 to base 16 is pretty easy, and with a little
practice can be done very quickly. An address in base 16 also better represents how the hardware or software 
is organized. 
<p><img src="images/longbusride.png" alt="singing 256 Bottles Of Beer" class="fr" style="width:300px;height:300px;margin-right:15px;">What is base 16?  Each digit represents a power of 16. When you count to 9, you do not carry a 1 for the 
next number, you keep going until you get to 15, then carry a 1 to make 16. We don't have numerals bigger 
than 9, so people use letters "A", "B", "C", "D", "E" and "F" to represent in base 16 or "hexadecimal" the 
numbers that in base 10 are represented by "10", "11", "12", "13", "14" and "15". Each 4 bits of a binary 
number represent a hexadecimal digit. All the places you carry a 1 in hex, you also carry a 1 in binary so 
it makes converting hex to binary and back  again much easier than converting binary to base 10 and back. 
Hexadecimal numbers are usually written with a "0x" prefix so, for example, that you don't confuse 
"0x100" with 100 base 10. The table below shows the previous table with hex number representations included. 
Note that Hex numbers with the least significant digit "B" correspond to binary numbers with the 4 least 
significant bits "1011".
 <table>
<tr>
	<th colspan="3">base 10</th><th colspan="9" >base 2</th><th colspan="4">base 16</th>
</tr>
<tr>
	<th>10<sup>2</sup></th>
	<th>10<sup>1</sup></th>
	<th>10<sup>0</sup></th>
	<th>2<sup>8</sup></th>
	<th>2<sup>7</sup></th>
	<th>2<sup>6</sup></th>
	<th>2<sup>5</sup></th>
	<th>2<sup>4</sup></th>
	<th>2<sup>3</sup></th>
	<th>2<sup>2</sup></th>
	<th>2<sup>1</sup></th>	
	<th>2<sup>0</sup></th>
	<th></th>
	<th>16<sup>2</sup></th>
	<th>16<sup>1</sup></th>
	<th>16<sup>0</sup></th>
</tr>
<tr>
	<td></td><td></td><td>0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0</td><td>0x</td><td></td><td></td><td>0</td>
</tr>
<tr>
	<td></td><td></td><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0x</td><td></td><td></td><td>1</td>
</tr>
<tr>
	<td></td><td></td><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0x</td><td></td><td></td><td>2</td>
</tr>
<tr>
	<td></td><td></td><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0x</td><td></td><td></td><td>3</td>
</tr>
<tr>
	<td></td><td></td><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0x</td><td></td><td></td><td>4</td>
</tr>
<tr>
	<td></td><td></td><td>5</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>0x</td><td></td><td></td><td>5</td>
</tr>
<tr>
	<td></td><td></td><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>0x</td><td></td><td></td><td>6</td>
</tr>
<tr>
	<td></td><td></td><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td>0x</td><td></td><td></td><td>7</td>
</tr>
<tr>
	<td></td><td></td><td>8</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0x</td><td></td><td></td><td>8</td>
</tr>
<tr>
	<td></td><td></td><td>9</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td>0x</td><td></td><td></td><td>9</td>
</tr>
<tr>
	<td></td><td>1</td><td>0</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>0</td><td>0x</td><td></td><td></td><td>A</td>
</tr>
<tr>
	<td></td><td>1</td><td>1</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>1</td><td>0x</td><td></td><td></td><td>B</td>
</tr>
<tr>
	<td></td><td>1</td><td>2</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>0</td><td>0x</td><td></td><td></td><td>C</td>
</tr>
<tr>
	<td></td><td>1</td><td>3</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td>0x</td><td></td><td></td><td>D</td>
</tr>
<tr>
	<td></td><td>1</td><td>4</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td>0</td><td>0x</td><td></td><td></td><td>E</td>
</tr>
<tr>
	<td></td><td>1</td><td>5</td><td></td><td></td><td></td><td></td><td></td><td>1</td><td>1</td><td>1</td><td>1</td><td>0x</td><td></td><td></td><td>F</td>
</tr>
<tr>
	<td></td><td>1</td><td>6</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0x</td><td></td><td>1</td><td>0</td>
</tr>
<tr>
	<td></td><td>1</td><td>7</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0x</td><td></td><td>1</td><td>1</td>
</tr>
<tr>
	<td></td><td>1</td><td>8</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0x</td><td></td><td>1</td><td>2</td>
</tr>
<tr>
	<td></td><td>1</td><td>9</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0x</td><td></td><td>1</td><td>3</td>
</tr>
<tr>
	<td></td><td>2</td><td>0</td><td></td><td></td><td></td><td></td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0x</td><td></td><td>1</td><td>4</td>
</tr>
<tr>
	<td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td>
</tr>
<tr>
	<td>1</td><td>0</td><td>7</td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0x</td><td></td><td>6</td><td>B</td>
</tr>
<tr>
	<td>1</td><td>0</td><td>8</td><td></td><td></td><td>1</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0x</td><td></td><td>6</td><td>C</td>
</tr>
<tr>
	<td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td>
</tr>
<tr>
	<td>2</td><td>5</td><td>5</td><td></td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>0x</td><td></td><td>F</td><td>F</td>
</tr>
<tr>
	<td>2</td><td>5</td><td>6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0x</td><td>1</td><td>0</td><td>0</td>
</tr>
</table>
</body>
</html>
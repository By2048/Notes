
```java
//10进制转16进制   
Integer.toHexString(20);  
//10进制转2进制   
Integer.toBinaryString(10);  
//16进制转10进制   
Integer.parseInt("10", 16);  
 
//10进制转16进制
Integer.toHexString(20);
//10进制转2进制
Integer.toBinaryString(10);
//16进制转10进制  www.2cto.com
Integer.parseInt("10", 16);[java] view plaincopyprint?//还有一种通用的方法   
BigInteger bigInt = new BigInteger(str, int1);  
System.err.println(bigInt.toString(int2));  
//其中str为需要转换的字符串，int1为str的所属进制，int2为所需转为的进制  
```

```java
str＝str.substring(int beginIndex);
截取掉str从首字母起长度为beginIndex的字符串，将剩余字符串赋值给str；

str＝str.substring(int beginIndex，int endIndex);
截取str中从beginIndex开始至endIndex结束时的字符串，并将其赋值给str;
```
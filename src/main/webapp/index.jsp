<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Testando Código 1 da Aula -->
	Primeira Pagina JSP
 <%! boolean formatar = true; %>
<%!
	String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
}
%>

	<h1>A Data de Hoje eh: <%=new java.util.Date() %></h1>
	<h1>A Data de Hoje eh: <%=today() %> </h1>
	<h1>A Data de Hoje eh: 
		<% if (formatar){
		
		out.println(today());
		
		}else{
		
		out.println(new java.util.Date());
		
		}%></h1>
	 
	
	
<!-- Terminando Código 1 da Aula -->
<!-- Código 2 -->
<!-- Uso de Declaration fazendo calculos ao CUBO -->
<%!   
int cubo(int n){  
return n*n*n;  
}  
%>  
<!-- Utilizando  expression tag -->

<%= "Calculo de Alguns Valores Elevado Ao Cubo" %> <br>
<%= "Cubo de 3 eh:"+cubo(3) %> <br> 
<%= "Cubo de 6 eh:"+cubo(6) %> <br> 
<%= "Cubo de 9 eh:"+cubo(9) %> <br> 

<!-- Fim da Declaration -->
<!-- Utilizando o Scriptlet para calculo de volume -->
<%!
double volume(double raio , double altura ){  
	double volume;
	volume = raio * raio * altura;
	return volume; 
}
%>
	<%= "O calculo do volume 1 eh igual a:"+volume(3.7 , 5.0) %> <br> 
	<%= "O calculo do volume 2 eh igual a:"+volume(3.9 , 7.0) %> <br> 
<!-- Fim do Scriptlet -->
</body>
</html>
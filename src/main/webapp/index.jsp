<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Calendar"%>
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
<%

	float nota1 = 4;
	float nota2 = 8;
	float resultado1 ;
	resultado1 = nota1 + nota2 / 2;
	out.println("");
	
	out.println("Aluno 1 Notas 1 :"+ nota1 +" . Nota2 : "+ nota2+ "\n");
	out.println("");
	
	if ( resultado1 < 5 ){
		out.println("Reprovado");
	} else {
		out.println("Aprovado ");
	}
	%>	<br>
<%	
	out.println("");
	out.println(" \n Contagem Do Numero 1 ao 10 :");
	int i = 1;
for ( i=1 ; i< 10; i++){
	out.println("<br>" + i);
}
%>

<!-- Fim do Scriptlet -->
<!-- Fim do Código 2 -->
<!-- Inicio da Parte 3 -->


<br>
<!-- Parte 4 -->
		<%! Calendar cal = Calendar.getInstance();%>
		
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		

		<%if(segundos() % 2 == 0){
			out.println("Numero Par"+segundos());
		}else{
			out.println("Numero Impar"+segundos());
		}%>

		
	
	
		

	



</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webMenu_Operaciones.aspx.cs" Inherits="WebPrimerProyecto.webMenu_Operaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script language="javascript" type="text/javascript">
        function calcular_onclick() {
            numero1 = parseFloat(document.getElementById("num1").value);
            numero2 = parseFloat(document.getElementById("num2").value);
            numero3 = parseFloat(document.getElementById("num3").value);
            numero4 = parseFloat(document.getElementById("num4").value);
            numero5 = parseFloat(document.getElementById("num5").value);
            op = document.getElementById("opcion").value;
            var arr = [numero1, numero2, numero3, numero4, numero5];
            switch (op) {
                case "1":
                    resultado = arr[0];
                    for (i = 1; i < arr.length; i++) {
                        if (arr[i] > resultado) {
                            resultado = arr[i];
                        }
                    }
                    document.getElementById("resul1").value = resultado;
                    break;
                case "2":
                    cont = arr.reduce((previous, current) =>current += previous);
                    resultado = cont / arr.length;
                    document.getElementById("resul1").value = resultado;
                    break;
                case "3":
                    resultado = arr[0];
                    for (i = 1; i < arr.length; i++) {
                        if (arr[i] < resultado) {
                            resultado = arr[i];
                        }

                    }
                    document.getElementById("resul1").value = resultado;
                    break;
                case "4":
                    resultado = 0;
                    for (i = 0; i < arr.length; i++) {
                        if (arr[i] % 2 == 0) {
                            resultado = resultado + 1;

                        }

                    }
                    document.getElementById("resul1").value = resultado;
                    break;
                case "5":
                    resultado = 0;
                    for (i = 0; i < arr.length; i++) {
                        if (arr[i] % 2 != 0) {
                            resultado = resultado + 1;

                        }

                    }
                    document.getElementById("resul1").value = resultado;
                    break;

            }
        }
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
			<tr><td>Ingrese Numero 1:</td><td> <input type="text" size="3" id="num1"/><br /></td></tr>
			<tr><td>Ingrese Numero 2:</td><td> <input type="text" size="3" id="num2"/><br /></td></tr>
			<tr><td>Ingrese Numero 3:</td><td> <input type="text" size="3" id="num3"/><br /></td></tr>
			<tr><td>Ingrese Numero 4:</td><td> <input type="text" size="3" id="num4"/><br /></td></tr>
			<tr><td>Ingrese Numero 5:</td><td> <input type="text" size="3" id="num5"/><br /></td></tr>
			<tr><td>Elija la Operacion:</td>
			<td><select id="opcion">			
				<option value="1">Mayor de los numeros</option>
				<option value="2">Promedio de los numeros</option>
				<option value="3">Menor de los numeros</option>
				<option value="4">Numero de Pares</option>
				<option value="5">Numero de Impares</option>
			
			</select></td></tr>
		</table>
        <br/><br/><input type="button" value="Calcular" onclick="calcular_onclick()"><br />
			
			Resultado:<input type="text" size="5" id="resul1" />
			
    </div>
    </form>
</body>
</html>

<%-- 
    Document   : index
    Created on : 13/06/2022, 08:09:15 PM
    Author     : AdriánGutNa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.Objeto"%>
<%! Objeto objeto[] = new Objeto[10]; 
    Double[] promedios = new Double[10];
%>
<%
    objeto[0] = new Objeto("1101", "Adrián", "Gutiérrez", "Nava", 10, 9, 8);     
    objeto[1] = new Objeto("1102", "María", "Alejo", "Angeles", 4, 7, 10);
    objeto[2] = new Objeto("1103", "Paula", "Nava", "Cerros", 2, 6, 8);
    objeto[3] = new Objeto("1104", "Carlos", "Isidro", "Fernandez", 10, 4, 5);
    objeto[4] = new Objeto("1105", "Fernando", "Rendon", "Tenorio", 1, 1, 7);
    objeto[5] = new Objeto("1106", "Migue", "Morales", "Nava", 7, 7, 8);
    objeto[6] = new Objeto("1107", "Isabel", "Jaimes", "Mora", 6, 6, 7);
    objeto[7] = new Objeto("1108", "Felipe", "Torres", "Vegas", 8, 8, 9);
    objeto[8] = new Objeto("1109", "Laura", "Hernandez", "Díaz", 4, 9, 9);
    objeto[9] = new Objeto("1110", "Aimee", "Gutiérrez", "Alejo", 10, 10, 10);
    
    for(int i = 0;i < 10; i++){
        double suma = 0;
        suma = objeto[i].getDdi() + objeto[i].getDwi() + objeto[i].getEcbd();
        promedios[i]= Math.round((suma / 3)*100.0)/100.0;;
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Objetos</title>
        <link rel="stylesheet" href="./style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="content">
            <nav class="navbar navbar-dark bg-primary">
                <a class="navbar-brand" href="#"> A2 - Mostrar Objetos - Tabla Alumnos :</a>
            </nav>

            <table class="table table-striped" id="tabla">
                <thead >
                    <tr class="table-info">
                        <th scope="col">Matricula</th>
                        <th scope="col">Alumno</th>
                        <th scope="col">DDI</th>
                        <th scope="col">DWI</th>
                        <th scope="col">ECBD</th>
                        <th scope="col">Promedio</th>

                    </tr>
                </thead>
                <tbody>
                    <%for(int i = 0;i<objeto.length;i++){%>
                <tr>
                        <td scope="row"><%=objeto[i].getMatricula()%></td>
                        <td><%=objeto[i].getNombre()%> <%=objeto[i].getApellidoPaterno()%> <%=objeto[i].getApellidoMaterno()%></td>
                        <td><%=objeto[i].getDdi()%></td>
                        <td><%=objeto[i].getDwi()%></td>
                        <td><%=objeto[i].getEcbd()%></td>
                        <td><%=promedios[i]%></td>
                    </tr>
                    <%}%>
 
                </tbody>
            </table>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

    </body>
</html>

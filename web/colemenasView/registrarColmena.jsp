<%-- 
    Document   : registrarColmena
    Created on : 04-oct-2018, 11:37:37
    Author     : 
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Registrar Nueva Colmena</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container col-md-12">
                    <s:if test="listaSectores.size()<1">
                        <% response.sendRedirect("sector");%>
                    </s:if>
                    <s:else>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Registrar Nueva colmena</h3></div>
                            <div class="panel-body">
                                <form action="colmenaregistrada" class="form-horizontal"  method="post">

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idarea">Sector</label> 
                                        <div class="col-sm-5">
                                            <select class="form-control"  name="idarea">
                                                <s:iterator value="listaSectores">
                                                    <option value="<s:property value="idsector"/>"><s:property value="nombre"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="nmarcos">Descripción</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="text" name="descripcion" max="50" required=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="nmarcos">Numero de Marcos</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="number" name="nmarcos" value="1" min="1" required=""/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="tipo">Tipo</label>   
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="text" name="tipo" max="45" required=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="nalza">Numero de Alzas</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="number" name="nalza" value="1" min="1" required=""/>       
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idprovincia">Origen de Colmena</label>      

                                        <div class="col-sm-5">
                                            <select  class="form-control" name="idorigen" id="origen">
                                                <s:iterator value="listaOrigen">
                                                    <option value="<s:property value="idorigen"/>"><s:property value="descripcion"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>




                                    <div class="form-group" id="divprecio">
                                        <label class="control-label col-sm-4" for="precio">Precio</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="number" name="precio" value="1.00" min="0.00" required="" id="precio"/> 
                                        </div>
                                    </div>




                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Fecha</label>   
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="text" name="fecha" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>" max="45" required="" id="datepicker" readonly=""/> 
                                        </div>
                                    </div>





                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idreina">Id Reina</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="number" name="idreina" value="1" min="1" required=""/>  
                                        </div>
                                    </div>





                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="npisos">Numero de Pisos</label>
                                        <div class="col-sm-5">
                                            <input class="form-control"  type="number" name="npisos" value="1" min="1" required=""/>   
                                        </div>
                                    </div>




                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fechareina">Fecha de Reina</label>   
                                        <div class="col-sm-5">
                                            <input  class="form-control" type="text" name="fechareina" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd" />" max="45" required="" id="datepicker2" readonly=""/>   
                                        </div>
                                    </div>

                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Registrar Colmena"/> <br>
                                        <span><s:property value="mensaje"/></span>
                                    </div>                                

                                </form> 
                            </div>
                        </div>

                    </s:else>
                </div>
            </div>
           <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Miel 100% pura</p>
                    <img src="image/med1.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Jalea Real</p>
                    <img src="image/miel.jpg" class="img-thumbnail" />                   
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Derechos Reservados 2018</p>
        </footer>

        
         <script src="assets/bootstrap/js/bootstrap.min.js"></script>
         <script type="text/javascript" src="colemenasView/js/colmena.js"></script>
        

        <script type="text/javascript">
            $('#datepicker').datepicker({
                uiLibrary: 'bootstrap',
                format: 'yyyy-mm-dd'
            });

            $('#datepicker2').datepicker({
                uiLibrary: 'bootstrap',
                format: 'yyyy-mm-dd'
            });

        </script>
    </body>
</html>











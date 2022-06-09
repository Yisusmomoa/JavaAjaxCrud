<%-- 
    Document   : index
    Created on : 8 jun. 2022, 12:01:16
    Author     : bjls2
--%>

<%@page import="models.escuela"%>
<%@page import="models.escuela"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
List<escuela> listaEscuelas=(List<escuela>)request.getAttribute("listaEscuelas");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/index.css"/>
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container-fluid mt-5">
            <div class="row justify-content-md-center">
              <div class="col-md-auto">
                  <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">Search</span>
                    <input type="text" class="form-control" placeholder="Nombre" 
                           aria-label="Username" aria-describedby="basic-addon1">
                  </div>
              </div>
              <div class="col-md-auto">
                <button type="button" class="btn btn-success"
                data-bs-toggle="modal" data-bs-target="#añadirAlumnoModal"
                data-bs-whatever="@mdo"
                >Añadir alumno</button>
              </div>
            </div>
        </div>
        
       <div class="container-fluid">
            <table class="table table-striped 
               table-hover table-bordered 
               table-responsive caption-top 
               mx-auto align-middle">
            <caption>List of users</caption>
            <thead>
              <tr>
                <th scope="col">id</th>
                <th scope="col">nombre</th>
                <th scope="col">escuela</th>
                <th scope="col" id="acciones">acciones</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td class="text-center align-middle">
                    <a href="" class="btn btn-danger">Eliminar</a>
                    <a href="" class="btn btn-secondary">Editar</a>
                </td>
              </tr>
            </tbody>
         </table>
        </div>
        
       <div class="modal fade" id="añadirAlumnoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Añade un nuevo alumno</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="crearAlumno">
                      <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Nombre: </label>
                        <input type="text" class="form-control" 
                               id="nombreEstudiante">
                      </div>
                      <select class="form-select" aria-label="Default select example">
                          <option selected value="null">Escuela</option>
                          <%for(escuela escuelai: listaEscuelas){%>
                              <option value="<%= escuelai.getIdEscuela() %>"><%= escuelai.getNombreEscuela() %></option>
                          <%}%>
                      </select>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary" id="añadirAlumno">Añadir</button>
                      </div>
                    </form>
                </div>
                
              </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" 
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" 
    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</html>

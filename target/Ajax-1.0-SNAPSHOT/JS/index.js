/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



$(document).ready(function() { 
    $('añadirAlumno').click((event)=>{
        let nombreEstudiante=$('nombreEstudiante').val();
        $.ajax({
            type:"POST",
            url:'',
            data:{nombreEstudiante:nombreEstudiante},
            dataType:json,
            success:{
                
            }
            
        })
    });
});
/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



$(document).ready(function() { 
    $('#crearAlumno').submit((event)=>{
        event.preventDefault();
        const nombreEstudiante=$('#nombreEstudiante').val();
        const idEscuela=$('#idEscuela').val();
        debugger;
        
        
        
        
        $.ajax({
            type:"POST",
            dataType:"json",
            url:'addAlumno',
            data:{
                "nombreEstudiante":nombreEstudiante,
                "idEscuela":idEscuela
            },
            success:function(data, textStatus, jqXHR){
                debugger;
                console.log(data.status);
                console.log(textStatus);
                console.log(data);
                
                if(jqXHR.status===200){
                    debugger;
                    Swal.fire({
                        position: 'top-end',
                        icon: 'success',
                        title: 'Your work has been saved',
                        showConfirmButton: false,
                        timer: 2500
                      });
                }
                else{
                    
                    alert("error"+data);
                }
                
            }
            
        })
    });
});
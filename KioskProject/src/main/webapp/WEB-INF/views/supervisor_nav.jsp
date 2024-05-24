<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        
        .supervisor_nav {           
                width: 100%; 
                text-align: center;
        }

        .supervisor_nav ul {
                margin: 0;
                padding: 0;
                display: inline-block;
        }

        .supervisor_nav ul li {                       
                list-style: none;           
                color: white;              
                background-color: #000000;
                display: inline-block; 
                float: left;               
                line-height: 30px;         
                vertical-align: middle;     
                text-align: center;        
        }

        .supervisor_nav .navLink {                               
                text-decoration:none;                     
                color: white;                              
                display: block;                            
                width: 150px;                              
                font-size: 12px;                           
                font-weight: bold;                         
        }

        .supervisor_nav .navLink:hover {            
                color: white;                   
                background-color: #4d4d4d;   
        }
    </style>

</head>
<body>
    <nav class="supervisor_nav" >
        <ul>
             <li><a class="navLink" href="${cpath}/menu_list.do">상품관리</a></li>
             <li><a class="navLink" href="${cpath}/member_list.do">회원관리</a></li>
             <li><a class="navLink" href="${cpath}/emp_list.do">하위 관리자 관리</a></li>
             <li><a class="navLink" href="./supervisor_4_Stat.jsp">판매량 통계</a></li>
        </ul>
    </nav>
</body>
</html>


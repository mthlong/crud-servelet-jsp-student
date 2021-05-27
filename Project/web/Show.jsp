<%-- 
    Document   : Show
    Created on : May 22, 2021, 3:34:52 PM
    Author     : NHLONG-PC
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .btn {
                border: none;
                color: white;
                padding: 12px 16px;
                font-size: 16px;
                cursor: pointer;
            }

            /* Darker background on mouse-over */
            .btn:hover {
                background-color: RoyalBlue;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sinh viên</title>
    </head>
    <body>
        <div class="main-wrapper">
            <div class="container-fluid">
                <div class="content-wrapper">
                    <br/><br/>

                    <div class="content-container">
                        <div class="row">
                            <div class="col-sm-2">
                                <button  type="button" class="btn btn-success" id="btnThem"><i class="fa fa-plus" aria-hidden="true"></i> Thêm mới</button>
                            </div>
                        </div>
                    </div>
                    <div class="content mt-3">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- /.panel-heading -->
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">ID</th>
                                                            <th scope="col">Name</th>
                                                            <th scope="col">Gender</th>
                                                            <th scope="col">Dob</th>
                                                            <th scope="col">#</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% int x = 1;%> 
                                                        <c:forEach items = "${listS}" var="x">
                                                            <tr>
                                                                <td><%= x%></td>
                                                                <td>${x.fullName}</td>
                                                                <td>${x.gender}</td>
                                                                <td>
                                                                    <fmt:formatDate pattern = "dd/MM/yyyy" value = "${x.DOB}" />
                                                                </td>
                                                                <td>
                                                                    <a href="update?sid=${x.id}"><button id="btnUpdate" type="button" class="btn btn-warning icon-only"><i class="fa fa-edit"></i></button></a> |
                                                                    <button onclick="deleteStudent(${x.id})" type="button" class="btn btn-danger icon-only"><i class="fa fa-trash-o"></i></button>
                                                                </td>
                                                            </tr>
                                                            <% x++;%>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
    <script>
                                                                        //Sự kiện click button thêm 
                                                                        $('#btnThem').click(function () {
                                                                            window.location.href = "AddStudent.jsp";
                                                                        });
                                                                        function deleteStudent(id) {
                                                                            var option = confirm("Bạn có muốn xóa sinh viên này? ");
                                                                            if (option) {
                                                                                window.location.href = "delete?sid=" + id;
                                                                            }
                                                                        }
                                                                        ;
    </script>
</html>

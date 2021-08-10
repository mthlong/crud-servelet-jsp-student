<%-- 
    Document   : Update
    Created on : May 22, 2021, 4:49:39 PM
    Author     : NHLONG-PC
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet prefetch" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
        <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa sinh viên</title>
    </head>
    <body>
        <div class="container-fluid">
            <br/>
            <br/>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h5>Nhập thông tin sinh viên</h5>
                            </div>
                        </div>
                        <div class="panel-body">

                            <form class="col-md-10 col-md-offset-1" action="update" method="POST">
                                <input hidden="hidden" value="${st.id}" name="idst">
                                <div class="form-group">
                                    <label>Họ tên sinh viên</label>
                                    <input value="${st.fullName}" type="text" class="form-control" name="fullname" placeholder="Nhập vào họ và tên">
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" ${st.gender == "Nam" ?  "checked" : ""} name="gender" id="inlineRadio1" value="Nam">
                                    <label class="form-check-label" for="inlineRadio1">Nam</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" ${st.gender == "Nữ"? "checked" : ""} name="gender" id="inlineRadio2" value="Nữ">
                                    <label class="form-check-label" for="inlineRadio2">Nữ</label>
                                </div>
                                <div class="form-group">
                                    <label>Chọn ngày: </label>
                                    <div  id="datepicker" class="input-group date" data-date-format="mm/dd/yyyy"> <input name="dob" value="${st.DOB}"  class="form-control" readonly="" type="text"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span> 
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </form>
                            <br/>
                            <button type="button" id="btnBack" class="btn btn-warning">Quay Lại</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet prefetch" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css"><script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
        <script>
            $(document).ready(function () {
                $("#datepicker").datepicker({
                    format: 'mm/dd/yyyy',
                    startDate: '-90y',
                    clearBtn: true,
                });

                $('#btnBack').click(function () {
                    window.location.href = "load";
                });
            });


        </script>
    </body>

</html>

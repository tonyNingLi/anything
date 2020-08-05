<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel='stylesheet' type='text/css' href='<%=request.getContextPath()%>/resources/dist/css/Video.css'/>
</head>
<body style='margin:0px;padding:0px;overflow: hidden;height: 100%;width:100%;' scroll:no;>
    
    <div id="divPlugin" class="plugin"></div>

    <script src='<%=request.getContextPath()%>/resources/dist/js/common/jquery-1.7.1.min.js'></script>
    <script src="<%=request.getContextPath()%>/resources/dist/js/common/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dist/js/common/tools.js"></script>
    <script src='<%=request.getContextPath()%>/resources/dist/haiKang/webVideoCtrl.js'></script>
    <script src='<%=request.getContextPath()%>/resources/dist/js/sys/Video5.js'></script>
</body>
</html>
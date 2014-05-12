<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="en">
    <head>
        <title>Servlet 3.0 file upload test</title>
        <style>label { float: left; display: block; width: 75px; }</style>
    </head>
    <body>
        <form action="upload" method="post" enctype="multipart/form-data">

            <label for="file">File:</label>
            <input type="file" id="file" name="file">
            <c:if test="${not empty parts.file}">
                File ${parts.file.name} successfully uploaded!
            </c:if>
            <br>
            
            <input type="submit" value="submit">
        </form>
    </body>
</html>
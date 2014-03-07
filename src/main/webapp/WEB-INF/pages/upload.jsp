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
            <label for="text">Text:</label>
            <input type="text" id="text" name="text" value="${parts.text}">
            <br>
            <label for="file">File:</label>
            <input type="file" id="file" name="file">
            <c:if test="${not empty parts.file}">
                File ${parts.file.name} successfully uploaded!
            </c:if>
            <br>
            <label for="check1">Check 1:</label>
            <input type="checkbox" id="check1" name="check" value="check1"
                ${fn:contains(parts.check, 'check1') ? 'checked' : ''}>
            <br>
            <label for="check2">Check 2:</label>
            <input type="checkbox" id="check2" name="check" value="check2"
                ${fn:contains(parts.check, 'check2') ? 'checked' : ''}>
            <br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>
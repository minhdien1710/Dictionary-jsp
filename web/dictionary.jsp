<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello", "xin chào");
    dictionary.put("bye", "tạm biệt");
    dictionary.put("handsome", "Nguyễn Minh Điển");

    String english = request.getParameter("english");

    String vietnamese = dictionary.get(english);

    if (vietnamese != null) {
        out.print(english + " trong tiếng việt nghĩa là " + vietnamese);
    } else {
        out.print("not found");
    }


%>
</body>
</html>

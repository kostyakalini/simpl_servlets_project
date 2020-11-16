<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Events</title>
</head>
<body>
<center>
    <h1>Events Management</h1>
    <h2>
        <a href="userHomePage?action=add_event">Add New Event</a>
        &nbsp;&nbsp;&nbsp;
        <a href="userHomePage">List All Event</a>

    </h2>
</center>
<div align="center">
    <form action="userHomePage" method="post">
        <c:if test="${event != null}">
            <input type="hidden" name="action" value="edit_event" />
        </c:if>
        <c:if test="${event == null}">
            <input type="hidden" name="action" value="add_event" />
        </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${event != null}">
                            Edit Event
                        </c:if>
                        <c:if test="${event == null}">
                            Add New Event
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${event != null}">
                    <input type="hidden" name="id" value="<c:out value='${event.id}' />" />
                </c:if>
                <tr>
                    <th>Team 1: </th>
                    <td>
                        <input type="text" name="team1" size="45"
                               value="<c:out value='${event.team1}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Team 2: </th>
                    <td>
                        <input type="text" name="team2" size="45"
                               value="<c:out value='${event.team2}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
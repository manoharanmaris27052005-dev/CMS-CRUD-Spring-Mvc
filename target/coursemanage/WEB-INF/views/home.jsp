<c:forEach var="c" items="${courses}">
    <tr>
        <td>${c.id}</td>
        <td>${c.name}</td>
        <td>${c.instructor}</td>
    </tr>
</c:forEach>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<c:if test="${!empty param.uname }">
     Welcome Mr./Miss/Mrs.  ${param.uname}
</c:if>
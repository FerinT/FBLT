<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<c:forEach items="${adverts}" var="advert">
    ${advert.getProduct().getDescription()}
</c:forEach>--%>

<%--<% String path = request.getContextPath() + "/images/"; %>--%>
<% String path = "images/"; %>

<%
    int count = 0;
    int total = (int) request.getAttribute("total");
    int pages = total / 16;
    int row = 1;

    request.setAttribute("count", count);
    request.setAttribute("pages", pages);
%>

<div class="container-fluid">
    <div class="row" style="margin-top: 40px; margin-bottom: 40px">
        <div align="center" class="col-md-3">
            <img src="<%=path%>ad1.png" class="img-responsive img-thumbnail" style="height:800px!important" width="85%"
                 height="800px"/>
        </div>
        <div class="col-md-6">
            <% for (int i = 0; i < row; i++) {%>
            <div class="row spaces-bottom">
                <c:forEach begin="1" end="${total}" varStatus="loop">
                    <c:if test="${loop.index < 17}">
                        <div class="col-md-3 spaces-bottom">
                            <a href="/item${advert_paths.get(loop.index-1).split("!")[1]}"><img
                                    src="${advert_paths.get(loop.index-1).split("!")[0]}"
                                    class="img-responsive img-thumbnail"
                                    style="height:200px!important" width="100%" height="200px"/></a>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
            <%}%>
            <c:if test="${total > 0}">
                <div align="center">
                    <p><b>pages</b></p>
                    <c:choose>
                        <c:when test="${pages == 0}">
                            <b><a href="/pages${index-1}" class="spaces-right">&lt;&lt;</a></b>
                        </c:when>
                        <c:otherwise>
                            <c:if test="${index > 0}">
                                <b><a href="/pages${index-1}" class="spaces-right">&lt;&lt; </a></b>
                            </c:if>
                            <b><a href="/pages${index+1}"
                                  class="spaces-right">
                                &gt;&gt;</a></b>
                        </c:otherwise>
                    </c:choose>
                </div>
            </c:if>
        </div>
        <div align="center" class="col-md-3">
            <img src="<%=path%>ad2.png" class="img-responsive img-thumbnail" style="height:800px!important" width="85%"
                 height="800px"/>
        </div>
    </div>
</div>

<%--
<% for (int j = 0; j < total; j++) {%>
<div class="col-md-3">
    <a href="item${advert_paths.get(count).split("!")[1]}"><img
            src="${advert_paths.get(count).split("!")[0]}" class="img-responsive img-thumbnail"
            style="height:200px!important" width="100%" height="200px"/></a>
</div>
<%
    count++;
    request.setAttribute("count", count);
%>
<%}%>--%>

<%--<h3>Top Sellers</h3>
<hr/>
<br/>
<div class="row">
    <c:forEach items="${advert_paths}" var="paths">

        <c:set var="val" value="${paths}"/>

        <div class="col-md-3">
            <a href="item${val.split("\\\\")[2]}"><img src="${val}" class="img-responsive img-thumbnail"
                                                       style="height:200px!important" width="100%" height="200px"/></a>
        </div>
        <div class="col-md-3">
            <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail"
                 style="height:200px!important" width="100%" height="200px"/>
        </div>
        <div class="col-md-3">
            <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail"
                 style="height:200px!important" width="100%" height="200px"/>
        </div>
        <div class="col-md-3">
            <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail"
                 style="height:200px!important" width="100%" height="200px"/>
        </div>
    </c:forEach>
</div>
<h3>Top Selling Categories</h3>
<hr/>
<br/>
<div class="row">
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
</div>
<h3>Frequently Searched</h3>
<hr/>
<br/>
<div class="row">
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
    <div class="col-md-3">
        <img src="<%=path%>big_ad.png" class="img-responsive img-thumbnail" style="height:200px!important"
             width="100%" height="200px"/>
    </div>
</div>--%>

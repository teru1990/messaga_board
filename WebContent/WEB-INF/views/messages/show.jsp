<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/app.jsp">
    <c:param name ="content">
        <c:choose>
            <c:when test="${messages !=null }">
                <h2>id: ${messages.id}のメッセージ</h2>
                <table>
                    <tbody>
                      <tr>
                        <th>タイトル></th>
                        <td><c:out value ="${messages.title }"/></td>
                      </tr>
                      <tr>
                        <th>メッセージ</th>
                        <td><c:out value="${messages.content }"/></td>
                      </tr>
                      <tr>
                        <th>作成日時</th>
                        <td><fmt:formatDate value="${messages.created_at }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                      </tr>
                      <tr>
                        <th>更新日時</th>
                        <td><fmt:formatDate value="${messages.updated_at}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                      </tr>
                    </tbody>
                </table>
                 <p><a href="${pageContext.request.contextPath }/index">一覧に戻る</a>
                 <p><a href="${pageContext.request.contextPath }/edit?id=${messages.id }">このメッセージを編集する</a>
            </c:when>
            <c:otherwise>
               <h2>お探しのデータは見つかりません</h2>
            </c:otherwise>
         </c:choose>
    </c:param>
    </c:import>
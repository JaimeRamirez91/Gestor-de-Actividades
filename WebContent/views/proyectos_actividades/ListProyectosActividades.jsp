<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--header--%>
<jsp:include page="../components/header.jsp"/>

<c:set var="url" scope="application" value="/ProyectosActividades"/>
<c:set var="uriAdd" scope="application" value="ProyectosActividades?action=add"/>
<c:set var="map" scope="application" value="${list}"/>
<c:set var="thead" scope="application" value="${['ID', 'Proyecto', 'Actividad', 'Username', 'Entrega', 'Restante', 'Prioridad', 'Estado']}"/>

<%-- Modal add and update --%>
<jsp:include page="AddUpdateProyectosActividades.jsp"/>

<%-- Modal delete --%>
<jsp:include page="DeleteProyectosActividades.jsp"/>

<%-- Modal info --%>
<jsp:include page="InfoProyectoAcrividades.jsp"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 col-md-6">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Proyecto</a></li>
                    <li id="searchProject" class="breadcrumb-item active" aria-current="page" value="${search}"><c:out value="${search}"/></li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="flex-reverse">
        <div id="btn_crud" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#addUpdateProyectosActividades">
                <i class="fas fa-plus"></i>
            </button>

            <button id="btn_update" type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#addUpdateProyectosActividades" disabled>
                <i class="fas fa-pen"></i>
            </button>

            <button id="btn_delete" type="submit" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteProyectosActividades" disabled>
                <i class="fas fa-trash"></i>
            </button>
        </div>

        <div class="btn-info-container">
            <button id="btn_info" type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#infoProyectosActividades" disabled>
                <i class="fas fa-eye"></i> Mas Información
            </button>
        </div>
    </div>
    <table id="pro" class="table table-striped table-hover" style="width:100%">
        <thead>
        <tr>
            <th>ID</th>
            <th>Actividad</th>
            <th>Entrega</th>
            <th>Usuario</th>
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
        </tr>
        </thead>
        <tfoot>
        <tr>
            <th>ID</th>
            <th>Actividad</th>
            <th>Entrega</th>
            <th>Usuario</th>
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
            <td style="display:none;">
        </tr>
        </tfoot>
    </table>
</div>

<%-- footer--%>
<jsp:include page="../components/footer.jsp"/>

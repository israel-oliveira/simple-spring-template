<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Fundo escuro com texto laranja */
            body {
                background-color: #121212;
                color: #FFA500;
            }

            /* Cabeçalho */
            h1 {
                color: #FFA500;
                margin-top: 20px;
            }

            /* Container */
            .container {
                margin-top: 30px;
            }

            /* Formulário */
            .form-group label {
                color: #FFA500;
            }

            /* Estilo dos botões */
            .btn-primary {
                background-color: #FFA500;
                border: 2px solid #FFA500;
                color: #121212;
                border-radius: 8px;
                font-weight: bold;
            }
            .btn-success {
                background-color: #32CD32;
                border: 2px solid #32CD32;
                color: #121212;
                border-radius: 8px;
                font-weight: bold;
            }

            /* Estilo de link para botões */
            .btn-primary:hover, .btn-success:hover {
                color: #FFFFFF;
            }

            /* Custom checkbox */
            .custom-control-input:checked ~ .custom-control-label {
                color: #FFA500;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Editar Jogo</h1>
            <form action="/jogo/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <div class="form-group">
                    <label for="titulo">Título:</label>
                    <input type="text" name="titulo" class="form-control" value="${jogo.titulo}" />
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select">
                        <c:forEach var="c" items="${categorias}">
                            <option ${jogo.categoria.id == c.id ? "selected" : ""} value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataforma(s):</label>
                    <c:forEach var="p" items="${plataformas}">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" ${jogo.plataformas.contains(p) ? "checked" : ""} 
                                class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}" />
                            <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>

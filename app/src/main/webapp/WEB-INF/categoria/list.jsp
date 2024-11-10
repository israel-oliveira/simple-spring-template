<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Categorias</title>
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

            /* Estilo da tabela */
            .table {
                color: #FFA500;
            }
            .table th {
                color: #FFA500;
            }
            .table td {
                color: #FFFFFF;
            }

            /* Estilo dos botões */
            .btn-primary {
                background-color: #FFA500;
                border: 2px solid #FFA500;
                color: #121212;
                border-radius: 8px;
                font-weight: bold;
            }
            .btn-warning {
                background-color: #FF8C00;
                border: 2px solid #FF8C00;
                color: #121212;
                border-radius: 8px;
                font-weight: bold;
            }
            .btn-danger {
                background-color: #FF4500;
                border: 2px solid #FF4500;
                color: #121212;
                border-radius: 8px;
                font-weight: bold;
            }

            /* Efeito hover */
            .btn-primary:hover, .btn-warning:hover, .btn-danger:hover {
                color: #FFFFFF;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Categorias</h1>
            <a href="/categoria/insert" class="btn btn-primary mb-3">Nova Categoria</a>
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${categorias}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/categoria/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>

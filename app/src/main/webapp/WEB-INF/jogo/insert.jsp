<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Jogo</title>
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
            <h1>Novo Jogo</h1>
            <form action="/jogo/insert" method="post">
                <div class="form-group">
                    <label for="titulo">Titulo:</label>
                    <input type="text" name="titulo" class="form-control" required />
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select" required>
                        <c:forEach var="c" items="${categorias}">
                            <option value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataforma(s):</label>
                    <c:forEach var="p" items="${plataformas}">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="plataformas[]" value="${p.id}" id="${p.id}" />
                            <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>

        <!-- JavaScript do Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

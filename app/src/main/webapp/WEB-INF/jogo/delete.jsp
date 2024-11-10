<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Remover Jogo</title>
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

            /* Estilo dos botões */
            .btn-primary {
                background-color: #FFA500;
                border: 2px solid #FFA500;
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

            /* Estilo de link para botões */
            .btn-primary:hover, .btn-danger:hover {
                color: #FFFFFF;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Remover Jogo</h1>
            <p>Tem certeza que deseja remover o jogo "${jogo.titulo}"?</p>
            <form action="/jogo/delete" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
    </body>
</html>

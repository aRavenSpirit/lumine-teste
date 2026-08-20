<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>CRUD Usuário</title>
    
</head>

<body>

    <h1>ESSA É A BRANCH DO LUCAS. TESTE</h1>

    <h2>Cadastro de Usuário</h2>

    <input type="hidden" id="id">

    Nome:
    <input type="text" id="nome">
    <br><br>

    Email:
    <input type="email" id="email">
    <br><br>

    Senha:
    <input type="password" id="senha">
    <br><br>

    Confirmar Senha:
    <input type="password" id="confirmar_senha">
    <br><br>

    Escolaridade:
    <select id="escolaridade">
        <option value="">Selecione...</option>
    </select>
    <br><br>
    <a href="cadastro.html">Cadastro teste</a>

    <button onclick="salvar()">Salvar</button>
    <button onclick="listar()">Listar</button>


    <h2>Lista de Usuários</h2>

    <table border="1">

        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Escolaridade</th>
                <th>Ações</th>
            </tr>
        </thead>

        <tbody id="tabela"></tbody>

    </table>

<script>

const api = "../config/api.php";

window.onload = function () {
    carregarEscolaridades();
    listar();
}

function carregarEscolaridades() {

    fetch(api + "?tipo=escolaridade")
        .then(r => r.json())
        .then(dados => {

            let select = document.getElementById("escolaridade");

            dados.forEach(e => {

                select.innerHTML += `
                    <option value="${e.id_escolaridade}">
                        ${e.nome_escolaridade}
                    </option>
                `;

            });

        });

}

function salvar() {

    const id = document.getElementById("id").value;

    const senha = document.getElementById("senha").value;
    const confirmar = document.getElementById("confirmar_senha").value;

    if (!id) {

        if (senha !== confirmar) {
            alert("As senhas não coincidem!");
            return;
        }

    }

    const dados = {

        nome: document.getElementById("nome").value,
        email: document.getElementById("email").value,
        senha: senha,
        escolaridade_id: document.getElementById("escolaridade").value

    };

    if (id) {

        dados.id = id;

        fetch(api, {
            method: "PUT",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(dados)
        })
        .then(r => r.json())
        .then(d => {

            alert(d.mensagem);
            listar();
            limpar();

        });

    } else {

        fetch(api, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(dados)
        })
        .then(r => r.json())
        .then(d => {

            alert(d.mensagem);
            listar();
            limpar();

        });

    }

}

function listar() {

    fetch(api)
        .then(r => r.json())
        .then(dados => {

            let tabela = document.getElementById("tabela");

            tabela.innerHTML = "";

            dados.forEach(u => {

                tabela.innerHTML += `
                    <tr>

                        <td>${u.id}</td>
                        <td>${u.nome}</td>
                        <td>${u.email}</td>
                        <td>${u.escolaridade ?? ""}</td>

                        <td>

                            <button onclick="editar(${u.id},'${u.nome}','${u.email}',${u.escolaridade_id ?? "null"})">
                                Editar
                            </button>

                            <button onclick="excluir(${u.id})">
                                Excluir
                            </button>

                        </td>

                    </tr>
                `;

            });

        });

}

function editar(id, nome, email, escolaridade) {

    document.getElementById("id").value = id;
    document.getElementById("nome").value = nome;
    document.getElementById("email").value = email;

    if (escolaridade !== null) {
        document.getElementById("escolaridade").value = escolaridade;
    }

}

function excluir(id) {

    if (confirm("Deseja excluir?")) {

        fetch(api, {
            method: "DELETE",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ id: id })
        })
        .then(r => r.json())
        .then(d => {

            alert(d.mensagem);
            listar();

        });

    }

}

function limpar() {

    document.getElementById("id").value = "";
    document.getElementById("nome").value = "";
    document.getElementById("email").value = "";
    document.getElementById("senha").value = "";
    document.getElementById("confirmar_senha").value = "";
    document.getElementById("escolaridade").selectedIndex = 0;

}

</script>

</body>
</html>


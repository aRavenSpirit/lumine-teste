document.addEventListener("DOMContentLoaded", () => {
    // Busca todos os campos interativos dentro da área do formulário
    const campos = Array.from(document.querySelectorAll("input:not([type='hidden']), select"));

    campos.forEach((campo, index) => {
        campo.addEventListener("keydown", (e) => {
            if (e.key === "Enter") {
                // Tratamento especial para elemento SELECT
                if (campo.tagName === "SELECT") {
                    // Se o select não tiver um valor selecionado válido (opção padrão/vazia)
                    // permite o comportamento nativo de abrir as opções com Enter
                    if (campo.value === "" || campo.selectedIndex === 0) {
                        return; // Deixa o navegador abrir o menu dropdown
                    }
                }

                e.preventDefault(); // Evita a submissão padrão do formulário

                // Se houver um próximo campo na lista, move o foco para ele
                if (index < campos.length - 1) {
                    campos[index + 1].focus();
                } else {
                    // Se for o último campo, encontra o botão principal e simula o clique
                    const botaoEnviar = document.querySelector(".botao-login, .botao-cadastrar");
                    if (botaoEnviar) {
                        botaoEnviar.click();
                    }
                }
            }
        });
    });
});
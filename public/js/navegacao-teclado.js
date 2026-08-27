document.addEventListener("DOMContentLoaded", () => {
    // Seleciona apenas campos de texto/senha e selects (ignorando checkboxes e hidden)
    const campos = Array.from(document.querySelectorAll("input:not([type='hidden']):not([type='checkbox']):not([type='radio']), select"));

    campos.forEach((campo, index) => {
        campo.addEventListener("keydown", (e) => {
            if (e.key === "Enter") {
                // Tratamento especial para SELECT
                if (campo.tagName === "SELECT") {
                    if (campo.value === "" || campo.selectedIndex === 0) {
                        return; // Deixa o navegador abrir o menu dropdown
                    }
                }

                e.preventDefault(); // Evita a submissão padrão imediata do formulário

                // Se for um campo tipo PASSWORD ou se for o último campo da lista, envia o formulário
                const ehCampoSenha = campo.type === "password";
                const ehUltimoCampo = index === campos.length - 1;

                if (ehCampoSenha || ehUltimoCampo) {
                    // Busca o botão pelo tipo de submit ou pelas classes
                    const botaoEnviar = document.querySelector("button[type='submit'], input[type='submit'], .botao-login, .botao-cadastrar");
                    
                    if (botaoEnviar) {
                        botaoEnviar.click();
                    } else {
                        // Fallback: se não achar o botão, envia o formulário pai diretamente
                        campo.closest("form")?.submit();
                    }
                } else {
                    // Move o foco para o próximo campo de texto/select
                    campos[index + 1].focus();
                }
            }
        });
    });
});
window.addEventListener('load', () => {
    // Verifica se o cookie já existe no navegador através de uma função auxiliar
    if (!getCookie("user_consent")) {
        // Se NÃO existir o cookie, exibe o banner com a animação que está no seu CSS
        document.getElementById('cookieBanner').style.display = 'flex';
    }
});

// Função que envia a escolha do usuário para o arquivo set-cookie.php do config
function interagirCookie(acao) {
    // Caminho correto apontando para a sua pasta config
    fetch(`../config/set-cookie.php?action=${acao}`)
        .then(response => response.json())
        .then(dados => {
            if (dados.status === 'success') {
                // Esconde o banner da tela suavemente
                document.getElementById('cookieBanner').style.display = 'none';
            }
        })
        .catch(erro => console.error("Erro ao processar consentimento de cookies:", erro));
}

// Função auxiliar para ler os cookies do navegador pelo JavaScript
function getCookie(name) {
    let match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]*)'));
    if (match) return match[2];
    return null;
}
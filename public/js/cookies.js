window.addEventListener('load', () => {
    // Se o cookie não existir, cria a estrutura HTML e insere no body
    if (!getCookie("user_consent")) {
        renderizarBannerCookie();
    }
});

function renderizarBannerCookie() {
    // Cria o container do banner
    const banner = document.createElement('div');
    banner.id = 'cookieBanner';

    // Injeta a estrutura HTML melhorada
    banner.innerHTML = `
        <div class="cookie-text">
            <h3><i class="fas fa-cookie-bite"></i> Aceita cookies?</h3>
            <p>Usamos cookies para deixar sua experiência por aqui mais brilhante e personalizada. Aceita que sejam guardadas umas migalhas digitais para melhorar sua navegação?</p>
        </div>
        <div class="cookie-buttons">
            <div class="options-button">
                <button class="btn-ok btn-box" onclick="interagirCookie('accept')">Aceitar</button>
                <button class="btn-no btn-box" onclick="interagirCookie('decline')">Recusar</button>
            </div>
            <div class="politica">
                <a href="#">Política de Privacidade</a>
            </div>
        </div>
    `;

    document.body.appendChild(banner);
}

// Envia a escolha do usuário
function interagirCookie(acao) {
    fetch(`../config/set-cookie.php?action=${acao}`)
        .then(response => response.json())
        .then(dados => {
            if (dados.status === 'success') {
                const banner = document.getElementById('cookieBanner');
                if (banner) {
                    banner.style.animation = 'entrarSuave 0.3s ease-in reverse';
                    setTimeout(() => banner.remove(), 300);
                }
            }
        })
        .catch(erro => console.error("Erro ao processar consentimento de cookies:", erro));
}

// Lê os cookies do navegador
function getCookie(name) {
    let match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]*)'));
    if (match) return match[2];
    return null;
}
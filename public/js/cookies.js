window.addEventListener('load', () => {
    // Consulta o servidor para saber se o utilizador atual já aceitou
    fetch('../config/check-consent.php')
        .then(res => res.json())
        .then(data => {
            // Se o utilizador atual NÃO tiver aceite, exibe o banner[cite: 2]
            if (!data.hasConsent) {
                renderizarBannerCookie();
            }
        })
        .catch(() => {
            // Fallback caso a API falhe: verifica cookie local[cite: 2]
            if (!getCookie("user_consent")) {
                renderizarBannerCookie();
            }
        });
});

function renderizarBannerCookie() {
    const banner = document.createElement('div');
    banner.id = 'cookieBanner';

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

function interagirCookie(acao) {
    if (acao === 'decline') {
        // Se recusar, apaga o cookie no cliente[cite: 2]
        document.cookie = "user_consent=;expires=Thu, 01 Jan 1970 00:00:00 UTC;path=/;";
    }

    fetch(`../config/set-cookie.php?action=${acao}`)
        .then(response => response.json())
        .then(dados => {
            if (dados.status === 'success') {
                removerBanner();
            }
        })
        .catch(erro => {
            console.error("Erro ao processar consentimento:", erro);
            removerBanner();
        });
}

function removerBanner() {
    const banner = document.getElementById('cookieBanner');
    if (banner) {
        banner.style.animation = 'entrarSuave 0.3s ease-in reverse';
        setTimeout(() => banner.remove(), 300);
    }
}

function getCookie(name) {
    let match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]*)'));
    if (match) return match[2];
    return null;
}
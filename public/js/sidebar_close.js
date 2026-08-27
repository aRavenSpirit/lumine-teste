/**
 * Gerenciador da Sidebar e Menu Mobile - Lumine
 */

// Define o limite máximo de largura (px) para acionar o layout mobile
const PONTO_QUEBRA_MOBILE = 900;

/**
 * Fecha o menu mobile e devolve a rolagem para a página
 */
function fecharMenuMobile() {
    const mobileMenu = document.getElementById('mobileMenu');
    if (mobileMenu) {
        mobileMenu.classList.remove('active');
    }
    document.body.classList.remove('no-scroll');
}

/**
 * Alterna a exibição da sidebar (Desktop) ou menu overlay (Mobile)
 */
function toggleSidebar() {
    if (window.innerWidth <= PONTO_QUEBRA_MOBILE) {
        // --- COMPORTAMENTO MOBILE ---
        const mobileMenu = document.getElementById('mobileMenu');
        if (mobileMenu) {
            mobileMenu.classList.toggle('active');
            
            if (mobileMenu.classList.contains('active')) {
                document.body.classList.add('no-scroll');
            } else {
                document.body.classList.remove('no-scroll');
            }
        }
    } else {
        // --- COMPORTAMENTO DESKTOP ---
        const sidebar = document.getElementById('sidebar');
        const main = document.getElementById('mainContainer');
        
        if (sidebar) {
            sidebar.classList.toggle('open');
            // Se fechada, reseta a rolagem interna do menu ao topo
            if (!sidebar.classList.contains('open')) {
                sidebar.scrollTop = 0;
            }
        }
        
        if (main) {
            main.classList.toggle('sidebar-open');
        }
    }
}

// ==================================================================
// EVENT LISTENERS (RELAÇÕES COM A TELA E EVENTOS)
// ==================================================================

// Monitora alterações na proporção/largura da tela e fecha o menu mobile automaticamente
window.addEventListener('resize', () => {
    if (window.innerWidth > PONTO_QUEBRA_MOBILE) {
        fecharMenuMobile();
    }
});

// Captura cliques fora de elementos chave (ex: fechar modal ao clicar fora ou no X)
window.addEventListener('click', (event) => {
    // Clique no botão de fechar (X) no menu mobile
    if (event.target.classList.contains('mobile-menu-close') || event.target.closest('.mobile-menu-close')) {
        fecharMenuMobile();
    }
});
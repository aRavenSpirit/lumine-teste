/**
 * header.js - Sistema Global de Header, Sidebar, Perfil e Utilidades do Sistema Lumine
 */

// URL da API backend
if (typeof api === 'undefined') {
    var api = "../config/home.php";
}

// 1. Função para calcular o contraste da fonte com a cor de fundo (Luminância)
function obterCorTextoLegivel(hexColor) {
    if (!hexColor) return '#ffffff';
    
    let color = hexColor.replace('#', '');
    if (color.length === 3) {
        color = color.split('').map(c => c + c).join('');
    }
    if (color.length !== 6) return '#ffffff';

    const r = parseInt(color.substring(0, 2), 16);
    const g = parseInt(color.substring(2, 4), 16);
    const b = parseInt(color.substring(4, 6), 16);

    const luminancia = (r * 299 + g * 587 + b * 114) / 1000;
    return luminancia < 128 ? '#ffffff' : '#333333';
}

// 2. Ajusta textos do menu do header dinamicamente conforme a tela, zoom ou tamanho da fonte
function ajustarTextoHeaderQuizzes(nivelFonte) {
    const linksNav = document.querySelectorAll('header nav a, header .menu-item a, header a');
    const selectFonte = document.getElementById('pref-fonte');
    
    // Verifica o nível pelo parâmetro, pelo select ou pela classe já aplicada no body
    let nivelAtual = nivelFonte || (selectFonte ? selectFonte.value : null);
    if (!nivelAtual) {
        if (document.body.classList.contains('fonte-nivel-3')) nivelAtual = 3;
        else if (document.body.classList.contains('fonte-nivel-1')) nivelAtual = 1;
        else nivelAtual = 2;
    }

    // Só encurta se a tela for estreita (<= 1016px) OU se a fonte for Grande (nível 3) e a tela for <= 1280px
    const encurtar = (window.innerWidth <= 1016 || (nivelAtual == 3 && window.innerWidth <= 1280));

    linksNav.forEach(link => {
        if (link.closest('.item-perfil') || link.classList.contains('link-perfil') || link.querySelector('.profile-icon')) {
            return;
        }

        // Salva o texto original na primeira execução para nunca perder o nome completo
        if (!link.dataset.textoOriginal) {
            const txtInicial = link.textContent.trim().toUpperCase();
            if (txtInicial.includes('SOBRE')) link.dataset.textoOriginal = 'SOBRE NÓS';
            else if (txtInicial.includes('NOVI')) link.dataset.textoOriginal = 'NOVIDADES';
            else if (txtInicial.includes('RECO')) link.dataset.textoOriginal = 'RECOMENDADOS';
            else if (txtInicial.includes('TODOS')) link.dataset.textoOriginal = 'TODOS OS QUIZZES';
            else link.dataset.textoOriginal = link.textContent.trim();
        }

        const original = link.dataset.textoOriginal;

        if (encurtar) {
            if (original === 'SOBRE NÓS') link.textContent = 'SOBRE...';
            else if (original === 'NOVIDADES') link.textContent = 'NOVI...';
            else if (original === 'RECOMENDADOS') link.textContent = 'RECO...';
            else if (original === 'TODOS OS QUIZZES') link.textContent = 'TODOS...';
        } else {
            link.textContent = original;
        }
    });
}

// 3. Aplica classe auxiliar no body ao mudar a fonte para ajustar o layout
function aplicarClasseTamanhoFonteBody(nivel) {
    document.body.classList.remove('fonte-nivel-1', 'fonte-nivel-2', 'fonte-nivel-3');
    document.body.classList.add(`fonte-nivel-${nivel}`);
    ajustarTextoHeaderQuizzes(nivel);
}

// 4. Controle de visibilidade da Sidebar e Menu Mobile
function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    const mobileMenu = document.getElementById('mobileMenu');
    const body = document.body;
    
    if (window.innerWidth <= 900) {
        if (mobileMenu) {
            mobileMenu.classList.toggle('active');
            mobileMenu.classList.contains('active') ? body.classList.add('no-scroll') : body.classList.remove('no-scroll');
        }
    } else {
        if (sidebar && main) {
            sidebar.classList.toggle('open');
            main.classList.toggle('sidebar-open');
        }
    }
}

// 5. Carregamento dinâmico das matérias na Sidebar/Menu
function carregarMenuSidebar() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            let menuHTML = "";
            let cardsIniciais = "";

            dados.forEach(m => {
                let nomeLimpo = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                
                menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                
                cardsIniciais += `
                    <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
                        <div class="card-banner">
                            <img src="img/${nomeLimpo}.webp" onerror="this.src='img/'">
                        </div>
                        <div class="card-body"><p>${m.nome_materia}</p></div>
                    </div>`;
            });
            if(document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menuHTML;
            if(document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
            if(document.getElementById("cardsConteudos")) document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
        })
        .catch(err => console.error("Erro ao carregar menu da sidebar:", err));
}

// 6. Carrega os dados do usuário no Header e monta o Dropdown de Perfil
function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            const linkPerfilHeader = document.querySelector('.item-perfil a');
            if (linkPerfilHeader) {
                if (u.foto_perfil) {
                    const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                    if (iconeUsuario) {
                        iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                    } else {
                        const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                        if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                            imagemHeaderExistente.src = u.foto_perfil;
                        }
                    }
                } else {
                    const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                    if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                        imagemHeaderExistente.outerHTML = `<div class="profile-icon"><i class="fas fa-user"></i></div>`;
                    } else if (!linkPerfilHeader.querySelector('.profile-icon')) {
                        linkPerfilHeader.innerHTML += `<div class="profile-icon"><i class="fas fa-user"></i></div>`;
                    }
                }
            }
            
            const linkPerfilMobile = document.querySelector('.mobile-profile-right');
            if (linkPerfilMobile) {
                if (u.foto_perfil) {
                    linkPerfilMobile.innerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                } else {
                    linkPerfilMobile.innerHTML = `<div class="profile-icon"><i class="fas fa-user"></i></div>`;
                }
            }

            const itemPerfil = document.querySelector('.item-perfil');
            if (itemPerfil) {
                const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                if (antigoDropdown) antigoDropdown.remove();

                const fotoHtml = u.foto_perfil 
                    ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                    : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                const dropdown = document.createElement('div');
                dropdown.className = 'perfil-dropdown';
                dropdown.innerHTML = `
                    <div class="avatar-upload-container" onclick="document.getElementById('inputFotoPerfil').click()">
                        <div id="avatarWrapper">
                            ${fotoHtml}
                        </div>
                    </div>

                    <h4 style="text-align: center;">Minha Conta</h4>
                    <hr>
                    <p><strong>Nome:</strong> ${u.nome || "Não informado"}</p>
                    <p><strong>E-mail:</strong> ${u.email || "Não informado"}</p>
                    <p><strong>Nível:</strong> ${u.nome_escolaridade || "Não informado"}</p>
                    <hr>
                    <a href="../config/logout.php" class="btn-logout">
                        <i class="fas fa-sign-out-alt"></i> Sair da Conta
                    </a>
                `;
                
                itemPerfil.appendChild(dropdown);
            }
            
            // Re-executa o ajuste do menu para garantir o texto correto após o perfil ser carregado
            ajustarTextoHeaderQuizzes();
        })
        .catch(err => console.error("Erro ao carregar dados do usuário no header:", err));
}

// 7. Sistema Global de Atualização por Redimensionamento e Proporção (Zoom / DPR)
let resizeTimerGlobal;

function atualizarSistemaPorProporcao() {
    // Atualiza o texto do header imediatamente
    ajustarTextoHeaderQuizzes();

    clearTimeout(resizeTimerGlobal);

    resizeTimerGlobal = setTimeout(() => {
        if (typeof carregarMenuSidebar === 'function') {
            carregarMenuSidebar();
        }
        
        if (typeof cropperInstance !== 'undefined' && cropperInstance) {
            cropperInstance.resize();
        }

        if (window.innerWidth > 900) {
            document.body.classList.remove('no-scroll');
            const mobileMenu = document.getElementById('mobileMenu');
            if (mobileMenu) mobileMenu.classList.remove('active');
        }
    }, 200);
}

// Dispara ao redimensionar a janela
window.addEventListener('resize', atualizarSistemaPorProporcao);

// Dispara sempre que a proporção/zoom da página mudar (Ctrl + / Ctrl - / escala do sistema)
let ultimoPixelRatio = window.devicePixelRatio;
function monitorarProporcaoTela() {
    matchMedia(`(resolution: ${window.devicePixelRatio}dppx)`).addEventListener('change', () => {
        if (window.devicePixelRatio !== ultimoPixelRatio) {
            ultimoPixelRatio = window.devicePixelRatio;
            atualizarSistemaPorProporcao();
        }
        monitorarProporcaoTela(); // Re-registra o ouvinte para o novo nível de proporção
    }, { once: true });
}
monitorarProporcaoTela();

// Garante a verificação assim que a página termina de carregar
document.addEventListener('DOMContentLoaded', atualizarSistemaPorProporcao);
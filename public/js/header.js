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

// 2. Ajusta textos do menu do header dinamicamente conforme a tela ou tamanho da fonte
function ajustarTextoHeaderQuizzes(nivelFonte) {
    const linksNav = document.querySelectorAll('header nav a, header .menu-item a, header a');
    const selectFonte = document.getElementById('pref-fonte');
    const nivelAtual = nivelFonte || (selectFonte ? selectFonte.value : 2);

    const encurtar = (window.innerWidth <= 1016 || nivelAtual == 3);

    linksNav.forEach(link => {
        if (link.closest('.item-perfil') || link.classList.contains('link-perfil') || link.querySelector('.profile-icon')) {
            return;
        }

        const texto = link.textContent.trim().toUpperCase();

        if (encurtar) {
            if (texto.includes('SOBRE NÓS') || texto === 'SOBRE...') {
                link.textContent = 'SOBRE...';
            } else if (texto.includes('NOVIDADES') || texto === 'NOVI...') {
                link.textContent = 'NOVI...';
            } else if (texto.includes('RECOMENDADOS') || texto === 'RECO...') {
                link.textContent = 'RECO...';
            } else if (texto.includes('TODOS') || texto === 'TODOS...') {
                link.textContent = 'TODOS...';
            }
        } else {
            if (texto === 'SOBRE...' || texto.includes('SOBRE NÓS')) {
                link.textContent = 'SOBRE NÓS';
            } else if (texto === 'NOVI...' || texto.includes('NOVIDADES')) {
                link.textContent = 'NOVIDADES';
            } else if (texto === 'RECO...' || texto.includes('RECOMENDADOS')) {
                link.textContent = 'RECOMENDADOS';
            } else if (texto === 'TODOS...' || texto.includes('TODOS OS QUIZZES') || texto.includes('TODOS QUIZZES')) {
                link.textContent = 'TODOS OS QUIZZES';
            }
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

// 7. Event Listener Global de Redimensionamento da Tela (Resize)
let resizeTimerGlobal;
window.addEventListener('resize', () => {
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
    }, 250);
});
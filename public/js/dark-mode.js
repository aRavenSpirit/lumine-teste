// Aplica o tema salvo no localStorage assim que a página carrega
if (localStorage.getItem("theme") === "dark") {
    document.body.classList.add("dark-mode");
}

// Altera a classe do body e atualiza o localStorage
function mudarTemaAoVivo(valor) {

    if (String(valor) === "1") {
        document.body.classList.add("dark-mode");
        localStorage.setItem("theme", "dark");
    } else {
        document.body.classList.remove("dark-mode");
        localStorage.setItem("theme", "light");
    }

}

// Controla o clique no botão e a animação do ícone
function alternarTemaUnico() {

    const inputTema = document.getElementById('pref-tema');
    const btn = document.getElementById('btn-tema-unico');
    const icone = document.getElementById('icone-tema-unico');
    
    if (!inputTema || !btn || !icone) return;

    const novoValor = inputTema.value === "1" ? "0" : "1";
    inputTema.value = novoValor;

    btn.classList.add('animando');

    setTimeout(() => {
        if (novoValor === "1") {
            icone.className = "fas fa-moon";
        } else {
            icone.className = "fas fa-sun";
        }
        btn.classList.remove('animando');
    }, 200);

    mudarTemaAoVivo(novoValor);
    
}
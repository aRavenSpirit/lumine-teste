/**
 * tamanho_fonte.js - Gerenciamento global do tamanho de fonte do sistema Lumine
 */

const ESCALAS_FONTE = {
    "1": "100%",   
    "2": "115%",  
    "3": "130%"  
};

function aplicarTamanhoFonteGlobal(nivel) {
    if (!nivel) return;
    
    const nivelStr = String(nivel);
    const escala = ESCALAS_FONTE[nivelStr] || ESCALAS_FONTE["2"];
    
    // Altera a propriedade font-size do elemento raiz (<html>)
    document.documentElement.style.fontSize = escala;
    
    // Salva no localStorage para persistência local
    localStorage.setItem("tamanho_fonte", nivelStr);
}

// Aplica a preferência assim que o DOM carregar
document.addEventListener("DOMContentLoaded", () => {
    const nivelSalvo = localStorage.getItem("tamanho_fonte") || "2";
    aplicarTamanhoFonteGlobal(nivelSalvo);
});
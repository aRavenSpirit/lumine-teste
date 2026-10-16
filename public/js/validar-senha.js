let senhaValida = false;

function inicializarValidacaoSenha(config) {
    const {
        senhaInputId = "senha",
        balaoAvisoId = "balao-aviso",
        segLengthId = "seg-length",
        segUppercaseId = "seg-uppercase",
        segNumberId = "seg-number",
        segSpecialId = "seg-special"
    } = config || {};

    const senhaInput = document.getElementById(senhaInputId);
    const balaoAviso = document.getElementById(balaoAvisoId);
    const segLength = document.getElementById(segLengthId);
    const segUppercase = document.getElementById(segUppercaseId);
    const segNumber = document.getElementById(segNumberId);
    const segSpecial = document.getElementById(segSpecialId);

    if (!senhaInput) return;

    senhaInput.addEventListener("input", () => {
        const valor = senhaInput.value;

        const temTamanho = valor.length >= 8;
        if (segLength) segLength.className = "segmento " + (temTamanho ? "valido" : valor.length > 0 ? "invalido" : "");

        const temMaiuscula = /[A-Z]/.test(valor);
        if (segUppercase) segUppercase.className = "segmento " + (temMaiuscula ? "valido" : valor.length > 0 ? "invalido" : "");

        const temNumero = /[0-9]/.test(valor);
        if (segNumber) segNumber.className = "segmento " + (temNumero ? "valido" : valor.length > 0 ? "invalido" : "");

        const temEspecial = /[^A-Za-z0-9]/.test(valor);
        if (segSpecial) segSpecial.className = "segmento " + (temEspecial ? "valido" : valor.length > 0 ? "invalido" : "");

        senhaValida = temTamanho && temMaiuscula && temNumero && temEspecial;

        if (!balaoAviso) return;

        if (valor.length === 0) {
            balaoAviso.style.display = "none";
        } else if (!temTamanho) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: No mínimo 8 caracteres`;
            balaoAviso.style.display = "block";
        } else if (!temMaiuscula) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Pelo menos uma letra maiúscula`;
            balaoAviso.style.display = "block";
        } else if (!temNumero) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Pelo menos um número`;
            balaoAviso.style.display = "block";
        } else if (!temEspecial) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Um caractere especial (!@#$)`;
            balaoAviso.style.display = "block";
        } else {
            balaoAviso.style.display = "none";
        }
    });
}
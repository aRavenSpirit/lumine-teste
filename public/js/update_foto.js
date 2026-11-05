async function uploadFotoPerfil(input) {
    
    if (!input.files || !input.files[0]) return;

    const arquivo = input.files[0];

    // Limita a 2MB para não estourar o banco/PHP
    if (arquivo.size > 2 * 1024 * 1024) {
        alert("Escolha uma imagem com menos de 2MB.");
        return;
    }

    const reader = new FileReader();
    reader.onload = async function(e) {
        const base64Image = e.target.result;

        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', 'foto_perfil');
        formData.append('valor', base64Image);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        try {
            const res = await fetch(api, { method: 'POST', body: formData });
            const data = await res.json();

            if (data.success) {
                carregarPerfil('usuario');
                if (typeof carregarUsuario === "function") carregarUsuario();
            } else {
                alert("Erro ao salvar: " + (data.error || "Erro desconhecido"));
            }
        } catch (err) {
            console.error("Erro no envio:", err);
            alert("Erro de comunicação com o servidor.");
        }
    };

    reader.readAsDataURL(arquivo);
}
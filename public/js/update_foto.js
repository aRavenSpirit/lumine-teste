function uploadFotoPerfil(input) {
    if (input.files && input.files[0]) {
        const reader = new FileReader();
        
        reader.onload = function(e) {
            const base64Image = e.target.result;
            
            const formData = new FormData();
            formData.append('acao', 'atualizar_perfil');
            formData.append('campo', 'foto_perfil');
            formData.append('valor', base64Image);

            fetch(api, {
                method: 'POST',
                body: formData
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    // 1. Atualiza dinamicamente a foto dentro do container do Dropdown
                    const wrapper = document.getElementById('avatarWrapper');
                    if (wrapper) {
                        wrapper.innerHTML = `<img src="${base64Image}" class="avatar-preview" id="avatarImg">`;
                    }
                    
                    // 2. Atualiza a foto na barra superior (Navbar) sem precisar dar F5 na página!
                    const linkPerfilHeader = document.querySelector('.item-perfil a');
                    if (linkPerfilHeader) {
                        const iconHeader = linkPerfilHeader.querySelector('.profile-icon');
                        if (iconHeader) {
                            if (iconHeader.tagName === 'IMG') {
                                iconHeader.src = base64Image;
                            } else {
                                iconHeader.outerHTML = `<img src="${base64Image}" class="profile-icon" style="object-fit: cover;">`;
                            }
                        }
                    }
                    
                    
                } else {
                    alert("Erro ao salvar a foto: " + data.error);
                }
            })
            .catch(err => {
                console.error("Erro na requisição:", err);
                alert("Erro de comunicação com o servidor.");
            });
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}
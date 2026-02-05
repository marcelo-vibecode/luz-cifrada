function createPlayerShortcuts() {

    document.addEventListener('keydown', (e) => {
        if(e.target.tagName !== 'INPUT'){ ;
        // CTRL + Seta Esquerda = Hino anterior
            if(e.key === 'ArrowLeft' && e.ctrlKey) {
                prevAudio();
            }
        
            if(e.key === 'ArrowRight' && e.ctrlKey) {
                nextAudio();
            }
        // Espaço = Play / Pause
            if(e.key === ' ') {
                e.preventDefault();
                playBtn();
            }
        // Seta Direita = Avança 10 segundos
            if(e.key === 'ArrowRight' && !e.ctrlKey) {
                e.preventDefault();
                foward10s();
            }
        // Seta Esquerda = Retrocede 10 segundos
            if(e.key === 'ArrowLeft' && !e.ctrlKey) {
                e.preventDefault();
                rewind10s();
            }
        // Tecla V = Abre o Volume Control e dá foco
            if(e.key === 'v') {
                e.preventDefault();
                volumeBtn();
            }
        // Tecla ESC = Volta a visualização ao Menu Indice
            if(e.key === 'Escape') {
                e.preventDefault();
                document.querySelector('.indice').scrollIntoView();
            }
        }
    })


    // Shortcut das Versões
    document.addEventListener('keydown', (e) => {
    let versaoTitulo = document.querySelectorAll('.versao-titulo');

    if(e.target.tagName !== 'INPUT'){
    for (let i = 0; i < version.length; i++) {
        let keyVersao = i+1;
            if(e.key === keyVersao.toString()) {
                e.preventDefault();
                // console.log('Versão ' + versaoTitulo[i].innerText);
                modalDiag('Versão:<strong> ' + versaoTitulo[i].innerText+'</strong>', 5000)
                let audioIndex = version[i].audios.findIndex((el) => el.hid == ultimoAudioId);
                if(audioIndex != -1){
                    outraVersao(i, audioIndex);
                } else if(audioIndex == -1){
                    console.log('Não Existe Audio para essa Versão');
                }
            }
        }
    }
    })
}

// GHOST MENU LISTENER
document.addEventListener('click', (e) => {
   
   // if(e.target.tagName !== 'INPUT')
    if(e.target.tagName == 'P' || e.target.tagName == 'H2' ||e.target.tagName == 'CIFRA'||e.target.tagName == 'CANVAS' || e.target.classList.contains('bloco') || e.target.classList.contains('main-blocos')) {
        let ghostMenu = document.querySelector('.ghost-menu');
        destroyMenu();
        if(ghostMenu.classList.contains('ghost-hidden')) {
            ghostMenu.style.top = e.clientY-50+'px';
            ghostMenu.classList.replace('ghost-hidden', 'ghost-show');
            window.ghostTimeout = setTimeout(()=>{
            ghostMenu.classList.replace('ghost-show', 'ghost-hidden');
            }, 8000)
        } else {
            clearTimeout(ghostTimeout);
            ghostMenu.classList.replace('ghost-show', 'ghost-hidden');
        }
        
    }

})
function changeTheme(theme) {
    let allImages = document.querySelectorAll('img');
    let newTheme;
    let actualTheme;

    if(typeof theme == 'undefined') {
        actualTheme = window.theme;
        newTheme = actualTheme == 'dark' ? 'light' : 'dark';
    } else {
        newTheme = theme;
        actualTheme = newTheme == 'dark' ? 'light' : 'dark';
    }
    
    window.theme = newTheme;
    let newImgSrc;
    if(newTheme  == 'dark') {
        document.documentElement.classList.add('dark-mode');
        document.querySelector('.menu-logo').src = 'images/logo_branco.png'
        document.querySelector('.theme-mode').src = 'images/icons/header/sun-dark.png';
        
    } else {
        document.documentElement.classList.remove('dark-mode');
        document.querySelector('.menu-logo').src = 'images/logo_1.png';
        document.querySelector('.theme-mode').src = 'images/icons/header/moon-light.png';

    }

        modalDiag('<strong>'+newTheme+'-Mode</strong> foi ativado!')
        allImages.forEach((img) => {
            newImgSrc = img.src.toString().replace(actualTheme, newTheme);
            img.src = newImgSrc;
        })
        sessionStorage.setItem('theme', newTheme);
}


function checkPlaylist(){


    let indiceTitulo = document.querySelector('.indice-titulo')
    let checkPlaylistBtn = document.querySelectorAll('.work-icons img')[1];
    
    if(indiceTitulo.style.display == '' || indiceTitulo.style.display == 'none') {
        console.log(indiceTitulo.style.display);
        indiceTitulo.style.display = 'block';
        
        document.querySelectorAll('.check-skip').forEach(function(indiceLinha){
            indiceLinha.style.display = 'block';
        });
        document.querySelectorAll('.indice li img').forEach(function(indicePlay){
            indicePlay.style.display = 'none';
        });
   
    checkPlaylistBtn.classList.add('pressed');
    document.querySelectorAll('.indice-linha').forEach((i)=>{
        i.classList.remove('play-space');
    })
    checkSelected();
    rolandoDiv('indice');
    modalDiag('Modo Criação de Playlist!')
    expandIndice();

    } else {
        console.log(indiceTitulo.style.display);
        
        indiceTitulo.style.display = 'none';
        
        document.querySelectorAll('.check-skip').forEach(function(indiceLinha){
            indiceLinha.style.display = 'none';
        });
        document.querySelectorAll('.indice li img').forEach(function(indicePlay){
            indicePlay.style.display = 'block';
        });
        checkPlaylistBtn.classList.remove('pressed');
        document.querySelectorAll('.indice-linha').forEach((i)=>{
            i.classList.add('play-space')
            i.classList.remove('indice-linha-checked')
        })
    }



            // Cria os botões Play na Barra de Indice    
            // let indicePlay = document.createElement('img');
            // indicePlay.setAttribute('onclick', 'playAudio('+index+')');
            // indicePlay.src = "images/icons/play-verde.svg";
            // indiceLinha = document.querySelector('#indice-hino-'+listItem.hid);
            // indiceLinha.prepend(indicePlay);
            
            // indiceLinha.querySelector('.check-skip').style.display = 'block';

}

function checkAllAudios() {
    let checkAll = document.querySelector('.check-all');
    if(checkAll.checked == true) {
        document.querySelectorAll('.check-skip').forEach(checkbox => {
            checkbox.checked = true;
        });
    } else {
        document.querySelectorAll('.check-skip').forEach(checkbox => {
            checkbox.checked = false;
        })
    }
    checkSelected();
}

function selectGroup(posA, posB) {

    if(typeof posA == 'undefined') {
        // Limpa todos os checkboxes
        document.querySelectorAll('.check-skip').forEach(function(checkbox, checkIndex) {
            checkbox.checked = false;
            checkbox.onclick = () => {
                selectGroup(checkIndex);
            }
        });
        modalDiag('Selecione o <strong>intervalo</strong> de Hinos.', 5000)
    } else if (typeof posA != 'undefined' && typeof posB == 'undefined'){
        // Renova onClick com a Posição A
        document.querySelectorAll('.check-skip').forEach(function(checkbox, checkIndex) {
            checkbox.onclick = () => {
                selectGroup(posA, checkIndex);
            }
        })
    } else if (typeof posA != 'undefined' && typeof posB != 'undefined') {
        // Desfaz onClick e seleçiona os checkboxes entre A e B
        let min = Math.min(posA, posB); 
        let max = Math.max(posA, posB); 
        document.querySelectorAll('.check-skip').forEach(function(checkbox, checkIndex) {
            checkbox.onclick = () => {
                checkSelected();
            };
            checkbox.checked = checkIndex >= min && checkIndex <= max ? true : false;
        })
    }
    checkSelected();
}

function checkSelected() {
    // Selecteds Final não está sendo usado!SSSSS
    let selecteds = 0;
    let selectionTime = 0;
    let indicesTempo = document.querySelectorAll('.indice-tempo');
    let indiceLinha = document.querySelectorAll('.indice-linha');
    document.getElementById('check-all').checked = true;
    document.querySelectorAll('.check-skip').forEach(function(checkbox, checkIndex) {
        if(checkbox.checked == true){
            selecteds++;
            selectionTime += parseInt(indicesTempo[checkIndex].dataset.segundos);
            indiceLinha[checkIndex].classList.add('indice-linha-checked')
        } else {
            document.getElementById('check-all').checked = false;
            indiceLinha[checkIndex].classList.remove
            ('indice-linha-checked')

        }
    })
    document.getElementById('selecteds').innerText = "Play seleção ("+secToStr(selectionTime)+")";
    // console.log(selectionTime);
    
    }


    function modalDiag(text, time){
        time = time != null ? time : 3000;
        let modalDiag = document.createElement('div');
        modalDiag.classList.add('modal-diag');
        modalDiag.innerHTML = text;
        document.body.appendChild(modalDiag);
        setTimeout(function(){
            modalDiag.remove();
        }, time)
    }


    
    function createHinoMenu(hinoid){
        destroyMenu();
        hinoDiv = document.querySelector('#hino-'+hinoid);
        hinoMenu = document.createElement('div');
        hinoMenu.classList.add('hino-menu', 'hino-menu-opcoes');
        hinoMenu.innerHTML = "<ul><li>Informar Erro</li>"
        + "<li>Editar Hino</li>"
        + "<li>Compartilhar</li>"
        + "<li>Favoritar</li>"
        + "</ul>";

        hinoDiv.querySelector('.hino-options').appendChild(hinoMenu);
    }

    function createAudioMenu(hinoid) {
        destroyMenu();
        hinoDiv = document.querySelector('#hino-'+hinoid);
        hinoAudios = document.createElement('div');
        hinoAudios.classList.add('hino-menu','hino-menu-audios');
        hinoAudiosUl = document.createElement('ul');
        version.forEach((versao, versaoIndex) => {
           let audioIndex = versao.audios.findIndex((audio)=> audio.hid == hinoid)
           if(audioIndex != -1) {
            audioItem = document.createElement('li');
            audioItem.innerHTML = '<img src="images/icons/hinos/play-purple.png" width=20>'+versao.versao;
            audioItem.onclick = () => {
                outraVersao(versaoIndex, audioIndex);
                destroyMenu();

            }
            hinoAudiosUl.appendChild(audioItem);
        }
        })
        hinoAudios.appendChild(hinoAudiosUl);
        hinoDiv.querySelector('.hino-options').appendChild(hinoAudios);
    }

    function destroyMenu() {
        document.querySelectorAll('.hino-menu').forEach((el)=> el.remove());
    }


    // FUNCOES DE INDICE COLLAPSE E EXPAND

    function collapseIndice(init, end) {
        let indiceLinhas = document.querySelectorAll('.indice-linha');
        for(let i=init; i<end; i++){
            indiceLinhas[i].style.display = 'flex';
            if((i+1)==end){
                indiceLinhas[i].classList.add('indice-linha-mask');
            }
        }
        // Ocultando Apendice 
        document.querySelectorAll('.indice-apendice').forEach((apendice) =>{
            if(apendice.nextSibling.style.display == 'none') {
                apendice.style.display = 'none';
            }
        })

        let expandBtn = document.createElement('button');
        expandBtn.classList.add('indice-expand-btn');
        expandBtn.setAttribute('aria-label', 'Expandir Índice');
        expandBtn.innerHTML = 'Ver Todos ('+indiceLinhas.length+' Hinos)<br> <img src="images/icons/header/expand-down-light.png" alt="Expande" width="25">';
        expandBtn.onclick = () => {
            expandIndice();
        }
        document.querySelector('.indice').appendChild(expandBtn);
    }
    
    function expandIndice() {
        document.querySelectorAll('.indice-linha').forEach((el) => {el.style.display = 'flex'; el.classList.remove('indice-linha-mask')});
        document.querySelector('.indice-expand-btn').remove();
        document.querySelectorAll('.indice-apendice').forEach(el => el.style.display = 'block')
    }


    // Não Utilizados Mais EXCLUIR EM BREVE

    
// function activeDarkMode() {
//     document.documentElement.classList.add('dark-mode')

//     let workIcons = document.querySelectorAll('.work-icons img');
//     workIcons[0].src = 'images/icons/new/play-circle-outline-white.png'
//     workIcons[1].src = 'images/icons/new/playlist-white.png'
//     workIcons[2].src = 'images/icons/new/eye-white.png'
//     workIcons[3].src = 'images/icons/new/sun-white.png'
//     workIcons[4].src = 'images/icons/new/moon-white.png'
//     workIcons[5].src = 'images/icons/new/restore-white.png'

//     document.querySelector('.menu-logo').src = 'images/logo_branco.png'
//     document.querySelectorAll('.versao-descricao-infos img')[0].src = 'images/icons/new/time-play-white.png';
//     document.querySelectorAll('.versao-descricao-infos img')[1].src = 'images/icons/new/file-music-white.png';

//     sessionStorage.setItem('theme', 'dark-mode');
//     modalDiag('Dark-Mode foi ativado!')
//     window.theme = 'dark';
    
// }

// function activeLightMode() {
//     document.documentElement.classList.remove('dark-mode')
//     let workIcons = document.querySelectorAll('.work-icons img');
//     workIcons[0].src = 'images/icons/new/play-circle-outline-blue.png'
//     workIcons[1].src = 'images/icons/new/playlist-blue.png'
//     workIcons[2].src = 'images/icons/new/eye-blue.png'
//     workIcons[3].src = 'images/icons/new/sun-blue.png'
//     workIcons[4].src = 'images/icons/new/moon-blue.png'
//     workIcons[5].src = 'images/icons/new/restore-blue.png'
  
//     document.querySelector('.menu-logo').src = 'images/logo_1.png'

//     document.querySelectorAll('.versao-descricao-infos img')[0].src = 'images/icons/new/time-play-black.png';
//     document.querySelectorAll('.versao-descricao-infos img')[1].src = 'images/icons/new/file-music-black.png';

//     sessionStorage.removeItem('theme');
//     modalDiag('O Tema Claro está ativado!')

//     window.theme = 'light';
// }

    // function toggleDarkMode() {
    //     document.documentElement.classList.toggle('dark-mode')
    // }

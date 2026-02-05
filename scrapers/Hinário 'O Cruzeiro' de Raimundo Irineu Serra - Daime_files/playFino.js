function createPlaylist(versaoId) {

    window.playList = version[versaoId].audios;
    window.versaoIdPlaying = versaoId;
    // // Verifica os checkbox e skip unchecked
    // checksIndice = Array.from(document.getElementById('indice').getElementsByTagName('input'));
    // checksIndice.map(check => {
    //     if(!check.checked) {
    //         let playListIndex = playList.find(element => element.amigavel == check.dataset.amigavel);
    //         playListIndex['skip'] = 1;

    //     }
    // })
    // //console.log(checksIndice);

    // Apaga os Ícones de Play      
    document.querySelectorAll(".hino-play-btn").forEach(el => el.remove()); // Remove os botões existentes
    document.querySelectorAll('.indice-linha img').forEach(el => el.remove());
    document.querySelectorAll('.check-skip').forEach(el => el.style.display = 'none');
    /// Cria os botões de Play no Titulo
        playList.forEach((listItem, index) => {
    
        headerHinoPlayBtn = document.createElement('button')
        headerHinoPlayBtn.classList.add('hino-play-btn')
        headerHinoPlayBtn.classList.add('btn-primary')
        headerHinoPlayBtn.classList.add('btn-circle')
        headerHinoPlayBtn.innerHTML = '<svg width="21" height="24" viewBox="0 0 21 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20 10.268C21.3333 11.0378 21.3333 12.9623 20 13.7321L3.5 23.2583C2.16667 24.0281 0.5 23.0659 0.5 21.5263L0.5 2.47372C0.5 0.934118 2.16667 -0.0281308 3.5 0.74167L20 10.268Z" fill="#FFF"/></svg>';
        headerHinoPlayBtn.setAttribute('onclick', 'playAudio('+index+')');
        headerHinoPlayBtn.setAttribute('aria-label', 'Play');
        
        let playBtnLocation = document.querySelector('#hino-'+listItem.hid+' .header-hino-buttons' );
        playBtnLocation.insertBefore(headerHinoPlayBtn, playBtnLocation.firstChild);
        //playBtnLocation.innerHTML += '<button class="playBtnTitulo" onclick="repeat(this)">loop </button>';


        // Cria os botões Play na Barra de Indice    
        let indicePlay = document.createElement('img');
        indicePlay.setAttribute('onclick', 'playAudio('+index+')');
        indicePlay.src = "images/icons/play-verde.svg";
        indicePlay.alt = 'Play';
        indiceLinha = document.querySelector('#indice-hino-'+listItem.hid);
        indiceLinha.prepend(indicePlay);
        
         indiceLinha.querySelector('.check-skip').dataset.playIndex = index;
        // indiceLinha.querySelector('.check-skip').checked = true;

        // Display CheckSkip

    })
    
    
    
    // Falta Criar botão de Play de Outras Versões

    
     //createPlayer();
  
}

  // Função que verifica se o hino está 'checked' na lista
  // NÃO ESTÁ EM USO
//   function checkSkip(i) {
//     while (playList[i].skip == 1) {
//         i++;
//         if(i == playList.length) {i = 0;}
//     } 
//     return i;
// }


function prepareAudio(i, trigger) {
        //i = checkSkip(i);

        // Informações para proximo Trigger
        ultimoAudioId = playList[i].hid;
        ultimoAudio = i;
        window.nextAudioIndex =  i + 1;
        // Quando chega no último volta ao início
        if(playList.length-1 < nextAudioIndex) {
           nextAudioIndex = playFirst();
           // PROBLEMAS: SE LISTA TIVER VAZIA  OU  SE ESTIVER VOLTANDO E ZERO NÃO ESTEJA NA LISTA
           // MELHOR GERAR LISTA A QUALQUER MUDANÇA DO CHECKBOX E IR TRABALHANDO COM A LISTA PRONTA                     
        }
        

        let checkSkip = document.getElementById('indice-hino-'+playList[i].hid).querySelector('input');
        if(checkSkip.checked == true || trigger == 'play') {
        
            if(playList[i].url.includes('http')) {
                audio.src = playList[i].url;
            } else {
                audio.src = 'https://estudofino.org/'+playList[i].url;
            }
        rolando3(playList[i].hid)

        //rolando2(playList[i].amigavel);
        
        // Mudando player de elemento
        // let playerBox = document.getElementById('player');
        // playerBox.classList.add('playerFadeOut');
        // setTimeout(() => {
        //     playerBox.classList.replace('playerFadeOut', 'playerFadeIn');
        //     document.getElementById('player-'+playList[i].amigavel).appendChild(playerBox);
        // }, 500);

        audio.onloadeddata = () => {
            document.getElementById('playerSeekBar').max = audio.duration;
            document.getElementById('playerSeekBar').value = 0;
            document.getElementById('playerDuration').innerText = minutesSeconds(audio.duration);

            // define os dados de texto do hino no Player
            document.getElementById('player-receptor').innerHTML = document.querySelector('#hino-'+playList[i].hid+' .main-canal').innerHTML;
            document.getElementById('player-hino-nome').innerHTML = document.querySelector('#hino-'+playList[i].hid+' .main-titulo').innerHTML;
            
            let playerVersaoInfo = document.querySelector('.player-versao-info');
            playerVersaoInfo.querySelector('.keyboard').innerHTML = versaoIdPlaying+1;
            playerVersaoInfo.querySelector('.tom-color').innerHTML = 'D';
            playerVersaoInfo.querySelectorAll('.keyboard')[1].innerHTML = version[versaoIdPlaying].versao;

            delete window.modalNext;

            console.log(playList);
            console.log(version);

        }
        audio.ontimeupdate = () => {
            document.getElementById('playerSeekBar').value = audio.currentTime;
            document.getElementById('playerCurrentTime').innerText = minutesSeconds(audio.currentTime);
            // Chama o Modal para avisar o próximo Hino
            if(audio.currentTime > (audio.duration - 10) && typeof modalNext == "undefined") {
                modalDiag('<strong>Próximo Hino:</strong><br> <big>'+playList[nextAudioIndex].num +'. '+playList[nextAudioIndex].nome+'</big>', 7000);
                modalNext = 1;
            }
        }
        audio.onended = () => {
            nextAudio();
        
             }
        return(1);
    } else if(trigger == 'next') {
        return (0)
    } else if(trigger == 'prev') {
        return (0)
    }

}





// FUNCTIONS


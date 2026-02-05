// Cria elementos do Player
function createPlayer() {

audio = document.createElement('AUDIO');

    
let player = document.createElement('div');
player.id = 'player';
player.style.display = 'none';
document.body.appendChild(player);

let playerInfo = document.createElement('div');
playerInfo.classList.add('player-info');
player.append(playerInfo);

let infoMusic = document.createElement('div');
infoMusic.classList.add('infoMusic');
infoMusic.innerHTML = "<p id='player-hino-nome'><strong>Nome do Hino</strong></p><p id='player-receptor'>Nome do Canal</p>";
playerInfo.appendChild(infoMusic);

let fotoReceptor = document.createElement('div');
fotoReceptor.classList.add('foto-player');
fotoReceptor.style.backgroundImage = "url('"+document.querySelector('.hinario-img').src+"')";
playerInfo.prepend(fotoReceptor);


let playerControl = document.createElement('div')
playerControl.classList.add('playerControl', 'fullPlayer');
playerControl.innerHTML = "<div class='player-control-cima fullPlayer'></div><div class='player-control-baixo fullPlayer'></div>";
player.appendChild(playerControl);

let playerAudios = document.createElement('div');
playerAudios.classList.add('player-audios');
playerAudios.innerHTML = '<div class="player-versao-info"><span class="keyboard">2</span><span class="tom-color">Am</span><span class="keyboard">Família Grangeiro</span>' +
'</div>';
player.appendChild(playerAudios);

    let playerPlayBtn = document.createElement('img')
    playerPlayBtn.setAttribute('width', '50')
    playerPlayBtn.setAttribute('height', '50')
    playerPlayBtn.setAttribute('src', 'images/icons/player/play-circle-light.png')
    playerPlayBtn.setAttribute('onclick', 'playBtn()');
    playerPlayBtn.classList.add('play-pause-btn');
    
    let playerVolumeBtn = document.createElement('img')
    playerVolumeBtn.setAttribute('width', '30')
    playerVolumeBtn.setAttribute('height', '30')
    playerVolumeBtn.setAttribute('src', 'images/icons/player/volume-light.png')
    playerVolumeBtn.setAttribute('onclick', 'volumeBtn()');
    playerVolumeBtn.classList.add('volume-btn');

    let playerRepeatBtn = document.createElement('img')
    playerRepeatBtn.setAttribute('width', '25')
    playerRepeatBtn.setAttribute('height', '25')
    playerRepeatBtn.setAttribute('src', 'images/icons/player/repeat-light.png');
    playerRepeatBtn.setAttribute('onclick', 'repeatAudio()');
    playerRepeatBtn.classList.add('repeat-btn');

    let playerPreviousBtn = document.createElement('img');
    playerPreviousBtn.setAttribute('width', '30');
    playerPreviousBtn.setAttribute('height', '30');
    playerPreviousBtn.setAttribute('src', 'images/icons/player/skip-previous-light.png');
    playerPreviousBtn.setAttribute('onclick', 'prevAudio()');
    
    let playerNextBtn = document.createElement('img');
    playerNextBtn.setAttribute('width', '30');
    playerNextBtn.setAttribute('height', '30');
    playerNextBtn.setAttribute('src', 'images/icons/player/skip-next-light.png');
    playerNextBtn.setAttribute('onclick', 'nextAudio()');

    let collapseBtn = document.createElement('img');
    collapseBtn.classList.add('collapse-btn');
    collapseBtn.setAttribute('width', '20');
    collapseBtn.setAttribute('height', '20');
    collapseBtn.setAttribute('src', 'images/icons/player/arrow-collapse-light.png');
    collapseBtn.style.opacity = 0.6;
    collapseBtn.setAttribute('onclick', 'resizePlayer("smallPlayer")');

    let playerSeekBar = document.createElement('input');
    playerSeekBar.setAttribute('id', 'playerSeekBar');
    playerSeekBar.type = 'range';
    playerSeekBar.min = 0;
    playerSeekBar.step = 1;
    playerSeekBar.value = 0;
    playerSeekBar.oninput = () => {
        audio.currentTime = playerSeekBar.value;
    }
    
    let playerDurationText = document.createElement('span');
    playerDurationText.setAttribute('id', 'playerDuration');
    playerDurationText.innerText = '00:00';
    
    let playerCurrentTimeText = document.createElement('span')
    playerCurrentTimeText.setAttribute('id', 'playerCurrentTime');
    playerCurrentTimeText.innerText = '00:00';
    

      
    let volumeControl = document.createElement('div')
    volumeControl.classList.add('volume-control');
    player.appendChild(volumeControl);
    
    let volumeSlider = document.createElement('input');
    volumeSlider.type = 'range';
    volumeSlider.orient = 'vertical';
    volumeSlider.setAttribute('id', 'volumeSlider');
    volumeSlider.min = 0;
    volumeSlider.max = 100;
    volumeSlider.step = 5;
    volumeSlider.value = 100;
    volumeControl.appendChild(volumeSlider);
    volumeSlider.setAttribute('onfocusout', 'hideVolumeSlider();')
    
    volumeSlider.addEventListener('change', function(){
        changeVolume();
    })
    
    let playSmall = document.createElement('button');
    playSmall.innerHTML = '<img src="images/icons/player/play-light.png" width=25 height=25>';
    playSmall.classList.add('btn', 'btn-circle', 'player-play-small')
    playSmall.onclick = () => {playBtn();}
    
    let nextSmall = document.createElement('button');
    nextSmall.innerHTML = '<img src="images/icons/player/skip-next-light.png" width=26 height=26>';
    nextSmall.classList.add('btn', 'btn-circle', 'small-buttons')
    nextSmall.onclick = () => {nextAudio();}
    
    let prevSmall = document.createElement('button');
    prevSmall.innerHTML = '<img src="images/icons/player/skip-previous-light.png" width=26 height=26>';
    prevSmall.classList.add('btn', 'btn-circle', 'small-buttons')
    prevSmall.onclick = () => {prevAudio();}
    
    let expandSmall = document.createElement('button');
    expandSmall.innerHTML = '<img src="images/icons/player/arrow-expand-light.png" class="expand-btn" width=16 height=16>';
    // expandSmall.innerHTML = '<img src="images/icons/player/expand-vertical-light.png" class="collapseBtn" width=18>';
    expandSmall.classList.add('btn', 'small-buttons')
    expandSmall.style.opacity = 0.6;
    expandSmall.onclick = () => {resizePlayer('fullPlayer');}
    
    playerControl.querySelector('.player-control-cima').append(playerVolumeBtn, playerRepeatBtn, playerPlayBtn, playerPreviousBtn, playerNextBtn, collapseBtn)
    playerControl.querySelector('.player-control-baixo').append(playSmall, prevSmall, nextSmall, playerCurrentTimeText, playerSeekBar, playerDurationText, expandSmall)
    
    playSmall.style.display = 'none';
    nextSmall.style.display = 'none';
    prevSmall.style.display = 'none';
    expandSmall.style.display = 'none';

    createPlayerShortcuts();
}
    

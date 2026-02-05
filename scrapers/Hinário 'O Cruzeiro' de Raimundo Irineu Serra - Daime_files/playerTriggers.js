function playAudio(audio){
    document.getElementById('player').style.display = 'flex';
    prepareAudio(audio, 'play');
    playBtn();
    }

function nextAudio() {
    let prepared = prepareAudio(nextAudioIndex, 'next');
    if(prepared == 1){
        playBtn();
    } else {
        nextAudio();
    }    
}

function prevAudio(audio) {
    let newAudio = ultimoAudio != 0 ? ultimoAudio - 1 : playFirst();
    let prepared = prepareAudio(newAudio, 'prev');
    if(prepared == 1){
        playBtn();
    } else {
        prevAudio();
    }  00  
}

function playBtn() {
    let playPauseBtn = document.querySelector('.play-pause-btn');
    let playSmall = document.querySelector('.player-play-small img');
    document.getElementById('player').style.display = 'flex';

    if(!audio.paused) {
        audio.pause()  
        playPauseBtn.src = 'images/icons/player/play-circle-'+theme+'.png';  
        playSmall.src = 'images/icons/player/play-'+theme+'.png';  
    } else {
        audio.play()
        playPauseBtn.src = 'images/icons/player/pause-circle-'+theme+'.png';      
        playSmall.src = 'images/icons/player/pause-'+theme+'.png';  
    }
}

function foward10s(){
    audio.currentTime += 10;
}
function rewind10s(){
    audio.currentTime += -10;
}

function repeatAudio(btnLoop){
    // se True vira False
    audio.loop = !audio.loop;
    let repeatBtn = document.querySelector('.repeat-btn') 
    if(audio.loop == true) {repeatBtn.classList.add('hold-btn')} else{repeatBtn.classList.remove('hold-btn')};
    
}
 
function volumeBtn() {
    document.querySelector('.volume-btn').classList.add('hold-btn');
    positionLeft = document.querySelector('.volume-btn').getBoundingClientRect().left;
    document.querySelector('.volume-control').style.left = positionLeft+'px';
    document.querySelector('.volume-control').style.display = 'block';
    volumeSlider = document.querySelector('#volumeSlider');
    volumeSlider.focus();
}
function hideVolumeSlider() {
    document.querySelector('.volume-control').style.display = 'none';
    document.querySelector('.volume-btn').classList.remove('hold-btn');
}
function changeVolume(){
    audio.volume = parseFloat(document.querySelector('#volumeSlider').value / 100)
}


function outraVersao(indexVersao, indexAudio) {
    createPlaylist(indexVersao);
    prepareAudio(indexAudio);
    playBtn();
}

function playFirst() {
    let firstAudio = parseInt(document.querySelector('.check-skip[data-play-index]:checked').dataset.playIndex)
    return firstAudio
}
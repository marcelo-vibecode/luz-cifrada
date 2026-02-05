function secToStr( sec_num ) {
    sec_num = Math.floor( sec_num );
      var horas   = Math.floor(sec_num / 3600);
      var minutos = Math.floor((sec_num - (horas * 3600)) / 60);
      var segundos = sec_num - (horas * 3600) - (minutos * 60);
  
      if (horas   < 10) {horas   = "0"+horas;}
      if (minutos < 10) {minutos = "0"+minutos;}
      if (segundos < 10) {segundos = "0"+segundos;}
            if (horas == 0) {
             var tempo  = minutos+':'+segundos;
            } else {
      var tempo    = horas+':'+minutos+':'+segundos;
            }
            return tempo;
  }

function ghostAction(div, action) {
      document.querySelector('.ghost-menu').classList.replace('ghost-show', 'ghost-hidden')
            rolandoDiv(div);

}

function resizePlayer(size) {
      let playerDiv = document.getElementById('player');
      let arraySize = size == 'smallPlayer' ? ['fullPlayer', 'block', ] : ['smallPlayer', 'none', ];
      playerDiv.querySelector('.player-control-cima').classList.replace(arraySize[0], size);
      playerDiv.querySelector('.player-control-baixo').classList.replace(arraySize[0], size);
      playerDiv.querySelectorAll('.player-control-baixo button').forEach(el => el.style.display = arraySize[1]);
}


      
      //   if(playerDiv.classList.contains('smallPlayer')) {
      //       console.log("TÁ SMALL");
      //       playerDiv.querySelector('.playerControl').classList.remove('smallPlayer');
      //       playerDiv.querySelector('.player-control-cima').classList.remove('smallPlayer');
      //       playerDiv.querySelector('.player-control-baixo').classList.remove('smallPlayer');
      //       playerDiv.querySelectorAll('.player-control-baixo button').forEach(el => el.style.display = 'none');

      //       playerDiv.classList.remove('smallPlayer');
      //   } else {
      //       console.log("TÁ GRANDE");

      //       playerDiv.classList.add('smallPlayer');
      //       playerDiv.querySelector('.playerControl').classList.add('smallPlayer');
      //       playerDiv.querySelector('.player-control-cima').classList.add('smallPlayer');
      //       playerDiv.querySelector('.player-control-baixo').classList.add('smallPlayer');
      //       playerDiv.querySelectorAll('.player-control-baixo button').forEach(el => el.style.display = 'block');


      //   }
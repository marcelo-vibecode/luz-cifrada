// Funções comuns que são utilizadas pelo Player e podem ser utilizadas em outras partes de código

function minutesSeconds (value) {
    minutes = Math.floor(value / 60);
    seconds = Math.floor(value % 60); 
    return `${("0" + minutes).slice(-2)}:${("0" + seconds).slice(-2)}`;
  }
  

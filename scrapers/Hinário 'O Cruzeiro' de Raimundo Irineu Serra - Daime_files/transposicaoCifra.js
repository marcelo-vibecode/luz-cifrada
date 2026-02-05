const escalas = {
  // Maiores
  'C': ['C', 'D', 'E', 'F' ,'G', 'A','B'],
  'C#': ['C#','D#','E#','F#','G#','A#','B#'],
    'D': ['D', 'E', 'F#', 'G', 'A', 'B', 'C#'], 
     'Eb': ['Eb', 'F', 'G', 'Ab', 'Bb', 'C', 'D'],
    'E': ['E','F#','G#','A','B','C#','D#'],
    'F': ['F','G','A','Bb','C', 'D', 'E'],
    'F#': ['F#','G#','A#','B','C#','D#','E#'], // E# ou F 
    'G': ['G', 'A', 'B', 'C', 'D', 'E', 'F'],
    'Ab': ['Ab','Bb','C','Db','Eb','F', 'G'],
    'A': ['A', 'B', 'C#', 'D', 'E', 'F#', 'G#'], 
    'Bb': ['Bb', 'C', 'D', 'Eb', 'F', 'G', 'A'],
    'B': ['B','C#','D#','E','F#','G#','A#'],
  
    // Menores
    'Am': ['A', 'B', 'C', 'D', 'E', 'F' ,'G'],
    'Bbm': ['Bb','C','Db','Eb','F','Gb','Ab'],
    //'A#m': ['A#','B#','C#','D#','E#','F#','G#'],
    'Bm': ['B', 'C#', 'D', 'E', 'F#', 'G', 'A'],
    'Cm': ['C', 'D', 'Eb', 'F', 'G', 'Ab', 'Bb'],
    'C#m': ['C#','D#','E','F#','G#','A','B'],
    'Dm': ['D','E','F','G','A','Bb','C'],
    'D#m': ['D#','E#','F#','G#','A#','B','C#',], // E# ou F 
    'Em': ['E', 'F#', 'G', 'A', 'B', 'C', 'D'],
    'Fm': ['F', 'G','Ab','Bb','C','Db','Eb'],
    'F#m': ['F#', 'G#','A', 'B', 'C#', 'D', 'E'], 
    'Gm': ['G', 'A', 'Bb', 'C', 'D', 'Eb', 'F'],
    'G#m': ['G#','A#','B','C#','D#','E','F#'],

    'grau': ["{1}","{2}","{3}",'{4}','{5}','{6}','{7}']
}


// Transpõe de Grau para Tom as Cifras Iniciais, 
// Economiza recursos comparando com a Função Transpor 
function tomInicial (tom, cifraOriginal) {
    let tomEscala = escalas[tom];
      novaCifra = cifraOriginal;
      escalas['grau'].forEach((nota, indexNota)=>{
        novaCifra = novaCifra.replaceAll(nota, tomEscala[indexNota]);
      })
      return novaCifra;
}

// Função reversa do tomInicial, usada para inserir as Cifras
function tomParaGrau (tom, cifraOriginal) {
  let tomEscala = escalas[tom];
    novaCifra = cifraOriginal;
    escalas[tom].forEach((nota, indexNota)=>{
      novaCifra = novaCifra.replaceAll(nota, escalas['grau'][indexNota]);
    })
    return novaCifra;
}


// Transpõe Cifras que já estão printadas na tela; 
function transpor (hinoId, tomOriginal, distanciaTom) {
  novoTom = tomNextPrev(tomOriginal,distanciaTom);
  // Seleciona cada linha de Cifra na tela
  linhasCifras = document.querySelectorAll('#hino-' + hinoId + ' cifra');
  linhasCifras.forEach((cifra, indexCifra) => {
    novaCifra = cifra.innerHTML;
    // Volta a cifra para Graus
    escalas[tomOriginal].forEach((nota, indexNota)=>{
        novaCifra = novaCifra.replaceAll(nota, escalas['grau'][indexNota]);
    })
    // Passa a cifra para Nova Tonalidade
    escalas['grau'].forEach((nota, indexNota)=>{
      novaCifra = novaCifra.replaceAll(nota, escalas[novoTom][indexNota]);
    })
    cifra.innerHTML = novaCifra;
  })
  atualizaTransporBtn(hinoId, novoTom)
}

// Atualiza botões de Transposição de acordo com as Classes e HinoId
function atualizaTransporBtn(hinoId, tom){
  transporBtns = document.querySelectorAll('#hino-'+hinoId+' .transporBtn');
  transporBtns[0].setAttribute('onclick', "transpor("+hinoId+",'"+tom+"',-1)");
  transporBtns[1].setAttribute('onclick', "transpor("+hinoId+",'"+tom+"', 1)");
  document.querySelector('#hino-'+hinoId+' .tomCifra').innerHTML = tom;
}

// Informações de Escala para serem usadas pelas funções
const escalaMaior = ['A', 'Bb', 'B', 'C', 'C#', 'D', 'Eb', 'E', 'F', 'F#', 'G', 'Ab'];
const escalaMenor = ['Am', 'Bbm','Bm', 'Cm', 'C#m', 'Dm', 'D#m', 'Em', 'Fm', 'F#m', 'Gm', 'G#m'] ;


// Encontra qual o Tom anterior e o próximo
function tomNextPrev(tom, num) {
  let escala = escalaMaior.indexOf(tom) >= 0 ? escalaMaior : escalaMenor;
  let diference = escala.indexOf(tom) + num;
  if((diference) >= 0 && diference < escala.length){return escala[diference] } 
  else if(diference < 0) {return escala[12+diference] }
  else if (diference > 11) {return escala[diference-12]}
            
    } 

// Não está sendo usada, porém será útil em casos que tem Cifra e Partitura em tom diferente
function distanceTom(a, b) {

  // Falta ele entender se caso o A for Menor e o B Maior
  let escalaA = escalaMaior.indexOf(a) >= 0 ? escalaMaior : escalaMenor;
  let escalaB = escalaMaior.indexOf(b) >= 0 ? escalaMaior : escalaMenor;
  a = escalaA.indexOf(a) 
  b = escalaB.indexOf(b)
  let indexMax = Math.max(a,b)
  let indexMin = Math.min(a,b)
  let diference = a - b;
  if (a == indexMax) {
    return (-1*diference)
  } else { return (-1*diference)}
  }
  //distanceTom('A', 'G'); 
  


// const tomMaior =  [
//   { tom: 'C', grau: ['C', 'D', 'E', 'F' ,'G', 'A','B']},
//   { tom: 'C#', grau: ['C#','D#','E#','F#','G#','A#','B#']},
//   { tom: 'D', grau: ['D', 'E', 'F#', 'G', 'A', 'B', 'C#']}, 
//   { tom:  'Eb', grau: ['Eb', 'F', 'G', 'Ab', 'Bb', 'C', 'D']},
//   { tom: 'E', grau: ['E','F#','G#','A','B','C#','D#']},
//   { tom: 'F', grau: ['F','G','A','Bb','C', 'D', 'E']},
//   { tom: 'F#', grau: ['F#','G#','A#','B','C#','D#','E#']}, // E# ou F 
//   { tom: 'G', grau: ['G', 'A', 'B', 'C', 'D', 'E', 'F']},
//   { tom: 'Ab', grau: ['Ab','Bb','C','Db','Eb','F', 'G']},
//   { tom: 'A', grau: ['A', 'B', 'C#', 'D', 'E', 'F#', 'G#']}, 
//   { tom: 'Bb', grau: ['Bb', 'C', 'D', 'Eb', 'F', 'G', 'A']},
//   { tom: 'B', grau: ['B','C#','D#','E','F#','G#','A#']}
// ]
// const tomMenor = [
//   { tom: 'Am', grau: ['A', 'B', 'C', 'D', 'E', 'F' ,'G']},
//   { tom: 'Bbm', grau: ['Bb','C','Db','Eb','F','Gb','Ab']},
//   //'A#m', grau: ['A#','B#','C#','D#','E#','F#','G#']},
//   { tom: 'Bm', grau: ['B', 'C#', 'D', 'E', 'F#', 'G', 'A']},
//   { tom: 'Cm', grau: ['C', 'D', 'Eb', 'F', 'G', 'Ab', 'Bb']},
//   { tom: 'C#m', grau: ['C#','D#','E','F#','G#','A','B']},
//   { tom: 'Dm', grau: ['D','E','F','G','A','Bb','C']},
//   { tom: 'D#m', grau: ['D#','E#','F#','G#','A#','B','C#',]}, // E# ou F 
//   { tom: 'Em', grau: ['E', 'F#', 'G', 'A', 'B', 'C', 'D']},
//   { tom: 'Fm', grau: ['F', 'G','Ab','Bb','C','Db','Eb']},
//   { tom: 'F#m', grau: ['F#', 'G#','A', 'B', 'C#', 'D', 'E']}, 
//   { tom: 'Gm', grau: ['G', 'A', 'Bb', 'C', 'D', 'Eb', 'F']},
//   { tom: 'G#m', grau: ['G#','A#','B','C#','D#','E','F#']}
  
// ]

  //   // ACHA SE O TOM É MENOR E MAIOR, ENCONTRA O INDICE E DEFINE A ESCALA; 
  //   var tomind = tomMenor.findIndex((item) => item.tom === tom);
  //   var tonalidades = tomMenor;
  //   if(tomind < 0) {tomind = tomMaior.findIndex((item) => item.tom === tom);
  //   var tonalidades = tomMaior;
  //   }
  //    // CASO ESTEJA NO FINAL OU NO INÍCIO ACERTA OS VALORES PARA LOOP
  //   if (altura == 0) {if(tomind != 0){var tomind = tomind - 1;} else {var tomind = tonalidades.length - 1;}} 
  //   else if(altura == 1) {if(tomind != (tonalidades.length - 1)){var tomind = tomind + 1;} else {var tomind = 0;}} 
    
    
  //   //DEFINE OS NUMEROS DOS INDICES DOS PRÒXIMOS TONS (ANTERIOR E PROXIMO)
  //   if(tomind != (tonalidades.length - 1)){var proxTom = tomind + 1;} else {var proxTom = 0;} 
  //   if(tomind != 0){var antTom = tomind - 1;} else {var antTom = tonalidades.length - 1} 
    
  // //   //DIFERENCIA O PRÓXIMO DE ACORDO COM O TIPO DA TONALIDADE
  // var prox = tonalidades[proxTom].tom; 
  // var ant = tonalidades[antTom].tom;
   
  //   //PASSANDO PARA O DOM
  //  i = 0;
  //    var idHino =  value.toString();
     
  //    //CAPTURANDO OS GRAUS
  //    while (i < totalLinhas) {
  //         var idInput =  'grau'+idHino+'-'+i;
  //         var cifranum = document.getElementById(idInput).innerHTML;       
          
  //         //DIVIDINDO AS NOTAS E PASSANDO PARA A NOVA TONALIDA
  //         j = 0;
  //         escala.forEach(ocorrencias);
  //         function ocorrencias(nota) {
  //           str = cifranum.split(nota).join(tonalidades[tomind]['grau'][j]);
  //           cifranum = str; 
  //    j += 1;                         
  //     }
  //         var idOutput =  idHino +'-'+ i;  
  //        document.getElementById(idOutput).innerHTML = cifranum;
         
  //        if((espelho = document.getElementById('espelho-'+idOutput)) != null){
  //        espelho.innerHTML = cifranum;
  //        }

  //        i++;
  //         }
  //         //NOVO TOM SENDO INCLUIDO NA DOM
  //         novotom = tonalidades[tomind].tom;
  //         document.getElementById("tom" + idHino).innerHTML = novotom;
  //         document.getElementById("espelhoTom" + idHino).innerHTML = novotom;
  //         //campoHarmonico(idHino, novotom);
  //         //FUNÇÕES DOS BOTÕES DE ALTERAR TONALIDADE
  //         var elmnt = document.getElementById("subir" + idHino);
  //         var att = document.createAttribute("onclick");
  //         att.value = 'transporMenor(' + idHino + ',' + totalLinhas + ',"' + prox + '"); reloadABC('+idHino+', 1); createChords("", "chordes-'+idHino+'", 1)';
  //         elmnt.setAttributeNode(att);
  //         var elmnt = document.getElementById("descer" + idHino);
  //         var att = document.createAttribute("onclick");
  //         att.value = 'transporMenor(' + idHino + ',' + totalLinhas + ',"' + ant + '"); reloadABC('+idHino+', -1); createChords("", "chordes-'+idHino+'", -1)';
  //         elmnt.setAttributeNode(att);
          
  //         //campoHarmonico(idHino, novotom);
        
        
  //       }
function espelharCifra(hinoid, line) {
    let newCifraInputs = document.querySelectorAll('#hino-'+hinoid+' .new-cifra-input')
    let arrayEspelho = [];
    
    // Se for Espelhar Geral (btnEspelhar)
    if(typeof line == 'undefined') {
        
        let posCifra = 0;
        
        newCifraInputs.forEach(function(newCifra){
            if (newCifra.value.trim() != '') {
                arrayEspelho.push([newCifra.value, newCifra.dataset.line]);
            } else {
                if(arrayEspelho.length != 0 && arrayEspelho[posCifra][1] == newCifra.dataset.line) {
                newCifra.value = arrayEspelho[posCifra][0]
                posCifra < (arrayEspelho.length-1) ? posCifra++ : posCifra = 0;
                }
            }
        })
    // Se for Espelhar Linha
    } else {
        newCifraInputs.forEach(function(newCifra, inputIndex){
            if(inputIndex == line) {
                arrayEspelho = [newCifra.value, newCifra.dataset.line]
            } else {
                if(arrayEspelho.length != 0 && arrayEspelho[1] == newCifra.dataset.line) {
                newCifra.value = arrayEspelho[0];
                }

            }
        })
        //console.log(line);
    }

    checkAllClones(hinoid);
   
}

//Confere se tem cifras clonadas em todos os inputs
function checkAllClones(hinoid) {
    let newCifraInputs = document.querySelectorAll('#hino-'+hinoid+' .new-cifra-input')
    arrayCifras = [];
    newCifraInputs.forEach(function(cifra, cifraIndex) {
         arrayCifras.forEach(function(linhaCifra) {
             if(linhaCifra == cifra.value) {
                // Achando clone coloca em amarelo e faz o onchange da função checkLineClone
                cifra.style.color = 'var(--star)';
                cifra.setAttribute('onchange', 'checkLineClone('+hinoid+','+cifraIndex+')');
            }
         })
         arrayCifras.push(cifra.value);
        })
}
   
// Confere se a linha é um clone de alguma anterior
function checkLineClone(hinoid, lineNum) {
    let newCifraInputs = document.querySelectorAll('#hino-'+hinoid+' .new-cifra-input')
    newCifraInputs[lineNum].style.color = 'var(--secundary)';
    for(let i = 0; i < lineNum; i++) {
        if(newCifraInputs[i].value == newCifraInputs[lineNum].value) {
            newCifraInputs[lineNum].style.color = 'var(--star)';
        }; 
    }

    
}
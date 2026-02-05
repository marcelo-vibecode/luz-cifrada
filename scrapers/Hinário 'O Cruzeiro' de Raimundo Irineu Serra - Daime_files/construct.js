// Funções importantes
import { draw } from './draw.js'
import { newDraw } from './newDraw.js'
// Cria a estrutura dos Hinos
import { createHinos } from './createHinos.js'
// Inclui as informações nos Hinos e faz os scripts de divisões de barras
import { populate } from './populateHinos.js'
// Inclui as cifras no Hino
import { createCifras } from './printCifras.js'
// Inclui informações de Hinário
import { printCapa } from './printCapa.js'
// Cria indice a partir de Hinos
import { createIndice } from './createIndice.js'
// Cria Versões de Áudio
import { createVersion } from './createVersion.js'
// Cria os Blocos de Texto
import { createBlocos } from './createBlocos.js'
// Funcções Diversas
import { verCifras } from './verCifra.js'

 
    // OPTIONS
    const SIZE_LINE_HEIGHT = 18;
    const PAGE_BLOCKS_DEFAULT = 2;
    const PAGE_BLOCKS_MAX = 3;
    const LINE_BLOCKS = 16;
    const MAX_LINE_BLOCKS = 16;
    const HAS_TONALITY = true;
    const HAS_CHORDS = true;
    const HAS_ABCNOTATION = true;
    const HAS_AUDIO = true;
    const HAS_PLAYPOINT = true;
    const SINGLE_HINO = false;
    

    // GAMBIARRA PRO POST DO BETA
    let urlGet;
    if(typeof getURL != 'undefined'){
        urlGet = getURL;
    } else {
    const urlParams = new URLSearchParams(location.search);
        urlGet = urlParams.get('h');
    }

    //let urlGet = 'o-amor-divino';    
    const URL = 'api/hinario.php?type=h&url='+urlGet+'&chords='+HAS_CHORDS+'&abcnotation='+HAS_ABCNOTATION+'&audios='+HAS_AUDIO;
    fetch(URL, {
        method: 'get'
    })
    .then(function(response) {
        response.json().then(function(data){
            let hinario = data;
            let hinos = data.hinos;
            let versoes = data.versao
            //delete hinario.hinos; 
            //delete hinario.versao;
            
            // console.log(hinario)
            window.canalHinario = hinario.canal;
            window.totalHinos = hinos.length;
            window.version = versoes;
            window.cifras = [];
            
            //console.log(data);
            printCapa(hinario);
            
            hinos.forEach(function(hino, index) {
                createIndice(hino.nome, hino.num, hino.hinoid, hino.apendice)
                createHinos(hino.hinoid);
                populate(hino);
                
                createBlocos(hino.hinoid);
                
                if (typeof hino.cifras != 'undefined'){
                    //todasCifras[hino.hinoid] = hino.cifras; 
                    cifras[hino.hinoid] = hino.cifras;
                    createCifras(hino.cifras, hino.hinoid)
                }
                
            });
            //console.log(todasCifras);

            document.querySelectorAll('.hino').forEach((hino)=>{
                newDraw(hino.id)

            })
                
            
        })
        .then(() => {
            
            if(typeof version != 'undefined') {
            createVersion(version);
            createPlaylist(0);
            }

                

            // createAudioElement();

                createPlayer();
                
                if(totalHinos > 20) {
                collapseIndice(0, 20);
                } else {
                    //GAMBIARRA Excluir
                collapseIndice(0, hinos.length);
                expandIndice();
                }
                
                // DEPOIS QUE FEZ O LOADING
                if(theme == 'dark') {changeTheme('dark');} 

                if(sessionStorage.getItem('cifras') == 0) {
                verCifras();
                } 


                let workIcons = document.querySelector('.work-icons')
                workIcons.style.display = 'flex';
                workIcons.querySelectorAll('img')[2].onclick = () => {
                    verCifras();
                }
                document.querySelector('.versao-descricao.ativo').classList.remove('ativo');

                // modalDiag('O site EstudoFino está pronto. <strong>Bons Estudos!</strong>')
            
        })
    })
    
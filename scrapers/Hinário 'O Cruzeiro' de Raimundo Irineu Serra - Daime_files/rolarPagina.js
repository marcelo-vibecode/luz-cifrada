function rolando3(value, velocidade) {
 
    if (typeof value == 'undefined') {
     var id = document.getElementById(player.audioatual.amigavel);
     velocidade = player.audioatual.velocidade;
     } else {
     var id = document.getElementById('hino-'+value);
     }

     // Expande tamanho do Hino pra não ficar dois titulos visíveis
         id.classList.add('hino-in-focus');
    //  document.querySelector('.hino-in-focus').classList.remove('hino-in-focus');

       targetOffset = id.getBoundingClientRect().y + window.scrollY;
       var scrollTop = targetOffset + 15;

    // console.log(velocidade);
       const startX = window.scrollX || window.pageXOffset;
 const startY = window.scrollY || window.pageYOffset;
 const distanceX = scrollTop - startX;
 const distanceY = scrollTop - startY;
 const startTime = new Date().getTime();

 duration = typeof duration !== 'undefined' ? duration : 3000;

 // Easing function
 const easeInOutQuart = (time, from, distance, duration) => {
   if ((time /= duration / 2) < 1) return distance / 2 * time * time * time * time + from;
   return -distance / 2 * ((time -= 2) * time * time * time - 2) + from;
 };

 const timer = setInterval(() => {
   const time = new Date().getTime() - startTime;
   const newX = easeInOutQuart(time, startX, 0, duration);
   const newY = easeInOutQuart(time, startY, distanceY, duration);
   if (time >= duration) {
     clearInterval(timer);
     idAtt = id.getAttribute("id");
   
            if (velocidade > 0) {
           //rolarHino(idAtt, velocidade); 
     }
    }
   window.scroll(newX, newY);
 }, 1000 / 60); // 60 fps

// ANIMAÇÃO DOURADA
//  document.querySelector('#hino-'+value+' .main-titulo').classList.add('animate2');
//  let p = document.querySelectorAll('#hino-'+value+' p');
//  p.forEach((el, indexP) => {
//     p[indexP].classList.add('animate')
//  })

//  setTimeout(()=>{
//     document.querySelectorAll('.animate').forEach((animateElement)=>{
//         animateElement.classList.remove('animate');
//     })
//  },9000)
 //document.getElementById('hino-'+value+' .bloco p').classList.add('animate2');

}

function rolandoDiv(divId) {
  var id = document.getElementById(divId);

  targetOffset = id.getBoundingClientRect().y + window.scrollY;
  var scrollTop = targetOffset;

// console.log(velocidade);
  const startX = window.scrollX || window.pageXOffset;
const startY = window.scrollY || window.pageYOffset;
const distanceX = scrollTop - startX;
const distanceY = scrollTop - startY;
const startTime = new Date().getTime();

duration = typeof duration !== 'undefined' ? duration : 2000;

// Easing function
const easeInOutQuart = (time, from, distance, duration) => {
if ((time /= duration / 2) < 1) return distance / 2 * time * time * time * time + from;
return -distance / 2 * ((time -= 2) * time * time * time - 2) + from;
};

const timer = setInterval(() => {
const time = new Date().getTime() - startTime;
const newX = easeInOutQuart(time, startX, 0, duration);
const newY = easeInOutQuart(time, startY, distanceY, duration);
if (time >= duration) {
clearInterval(timer);
idAtt = id.getAttribute("id");

}
window.scroll(newX, newY);
}, 1000 / 60); // 60 fps


}
let fontsize = 1.4;

const makeBigger = () => {
   fontsize += 0.1;
   document.querySelector(".content").style.fontSize = `${fontsize}em`;
   document.querySelector("h1").style.fontSize = `${fontsize + 0.6}em`;
};

const makeSmaller = () => {
   fontsize -= 0.1;
   document.querySelector(".content").style.fontSize = `${fontsize}em`;
   document.querySelector("h1").style.fontSize = `${fontsize + 0.6}em`;
};

document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

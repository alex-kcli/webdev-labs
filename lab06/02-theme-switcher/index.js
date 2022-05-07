/*
    Hints: 
    1. Attach click event handlers to all four of the 
       buttons (#default, #ocean, #desert, and #high-contrast).
    2. Modify the className property of the body tag 
       based on the button that was clicked.
*/
const default_t = () => {
   document.querySelector('body').className = '';
}

const desert_t = () => {
   document.querySelector('body').className = 'desert';
}

const ocean_t = () => {
   document.querySelector('body').className = 'ocean';
}

const highContrast_t = () => {
   document.querySelector('body').className = 'high-contrast';
}

document.querySelector('#default').addEventListener('click', default_t);
document.querySelector('#desert').addEventListener('click', desert_t);
document.querySelector('#ocean').addEventListener('click', ocean_t);
document.querySelector('#high-contrast').addEventListener('click', highContrast_t);
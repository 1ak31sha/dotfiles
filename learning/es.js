'use strict';

const magic = function() {
    // a. what is `this`?
    console.log(this);

    const cool = () => {
        // b. what is `this`?
        console.log(this);
    };
    cool();
};

// QUESTION 1
magic();


// QUESTION 2
const apple = { name: 'apple' };
apple.magic = magic;
apple.magic();

// QUESTION 3
const orange = { name: 'orange' };
magic.call(orange);

t args = ['p0', 'p1', 'p2'];
call_me.apply(this, args);
See MDN docs for Function.prototype.apply().

If the environment supports ECMAScript 6, you can use a spread argument instead:

call_me(...args);

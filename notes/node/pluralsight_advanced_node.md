node uses google chrome's v8 enginer to run js by default, but maybe could switch to ms chakra?
```
node -p  'process.versions.v8'
```
-> 6.8.275.24-node.14

### harmony flag
lets you use in-progress features early
```
node -p --harmony "'node'.padEnd(8,*)"
```

see list of all in prog features:
```
node --v8-options | grep "in progress"
```

### node dependencies
1 - http parser
2 - c-ares - asynce dns queries
3 - openSSL
4 - zlib streaming, compressions, 

### node REPL
arr.<tab>

```
NODE_NO_READLINE=1 rlwrap node
```

.help
.save session
.editor
repl.start - can be xtended

process.argv

var answer = 42
global.anwser = 42

process.env.user = "asdf"
process.release.lts
->show warning if non lts?

process.on('exit', (code) => {
can only do synchonous here, no event loop..
}

process.stdin.resume()//keep the event loop running


Buffer - work with binary
requires char encoding

Buffer.alloc(8) - fills with new 000
unsafe allocate faster but contains garbage

sliced buffer uses same amount of memory

### require()
resolve
load
wrap
eval
cache

--
module

can use require.resolve to ensure dep avail

cicular deps are allowed.

loaded - doesnt set loaded true until full file is read
will return what its read so far

 delete require.cache
 cache prevents requiring twice


 ### npm
 npm ls epxress

 npm i --dry-run
 --depth = 0, -g
 ll
 --save -S
 -D - --save-dev
 -O optional

 .x or .* covers full range
 ~1.2.3 , grater than only

 npm outdated -g
 ### upgrade npm
 npm i npm -g

nlways pm config set save true
--always --save

shrinkwrap
npm home espress - opens the page

npm prune
npm xmas

## chapter 2

### the event loop
slow i/o handled with call backs so it doesnt blaokc the main event loop
in node, i/o refers to access network resources

synchonously
fork()
threads
Event loop

nginx is single threaded
apache creates threads

### Event loop
the enitty that handles external events and a\converts tehm into callback invocatins
or
a loop tha picks events from the event queue and pushes thei callacks to the call stack

--
npm start


process.exit()
--
heap
queue

stack and heap are part of v8

v8 call stack - fifo
stackframe means the function added to stack plus its variables

setTimeout - provided by node

setTimeout(0) will wait for stack to be empty before ecxecuting

use setImmediate isntead

process.nextTick - not part of event loop
does it after the current operator completes, before the event loop continues

.next is good for making function contract

## chapter 3 async

### aasync

callbacks != async

-reg callbacks
-promise
- async function - not out yet but will be soon(harmony flag)
function generators

### event emitter
 claass Logger extends EventEmitter {}
 const logger = new logger();
 logger.emit('event')
 logger.on('event', listenerFunc);


node has a timeout of 2 minutes. 













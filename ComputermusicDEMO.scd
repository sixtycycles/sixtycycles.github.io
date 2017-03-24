"Hello World!".postln;

//strings, method, semi-colon.

//expression, variable:
(
var output;
output = "Computer music is cool!";
output.postln;
)
//this doesnt work though!
output.postln;

//heres another method call!
// tell the server to start, so we can make sounds!

s.boot;

//now see if everything is working well:

a= Synth(\default);
//to stop it
a.free;

//alternatively you can use "ctrl + ." to stop any sounds in SC.

//some data types:

//string:
"this is a string. it is words and some numbers 2017"
"the important thing to know is that strings are all text, even if there are numbers in the string."
"wow, so cool"
'single quotes are also strings in most languages.'

// integer  or int
1
2
184849275

//float:
0.0
1.0
1.3333333333333333333
12.09834

// list, collection , array:
[]
[1,2,3]
[1,1001,20,"a",Synth()]

//Dict or Dictionary:
{'key1': 1001,'key2':9090,'key3':356}


//CONTROL STRUCTURES:

//logic: if, While, for,do
for( 1 , 10 , {|i| i.postln;} )


/*
In this seciton i will examine more loops and make the transition to using the patterns class. this should provide a neat transition for non programming ppl.

something like, set up a basic pattern,

have everyone input a 10 note phrase, and dur values, improvise together ect, ect.

will have to briefly talk about client server structure ect.

start or end with twitter instrument. may be difficult to set up in python, and will need keys.

*/

//some stuff for fun:


(
SynthDef("vOsc",{ arg out=0, freq = 440, amp=0.1;
	var env = EnvGen.ar(Env.sine,doneAction:2);
	var sig =  SinOsc.ar( freq/2, 0, amp);
	sig= sig*env;
	sig = Pan2.ar(sig, 0,amp/4);
	OffsetOut.ar(out,sig)
}).store;

SynthDef("vOsc2",{ arg out=0,freq = 440, amp = 0.3 ;
	var sig =  Saw.ar( freq, 1);
	var env = EnvGen.ar(Env.perc,timeScale:2, doneAction:2);
	sig = Pan2.ar(RLPF.ar(sig*env,freq*2,1.5,1)*env, 0,amp);
	OffsetOut.ar(out,sig)
}).store;
)

(
a = Scale.aeolian;
Pbind(
	\instrument, \vOsc,
	\degree, Prand((0,1..12), inf),
	\scale,Pfunc({a},inf),
	\dur, Pseq([0.2],inf),
	\amp,Pseq([0.5],inf)
) .play();

Pbind(
	\instrument, \vOsc2,
	\degree, Prand((0,1..12), inf)-12,
	\scale,Pfunc({a},inf),
	\dur, Pseq([0.4],inf),
	\amp,Pseq([1],inf)
).play();
)




NodeJS/Express server setup
===================

1. Prije svega treba instalirati NodeJS. Možete ga skinuti preko ovoga [linka ](https://nodejs.org/dist/v4.5.0/node-v4.5.0-x64.msi)

2. Kada instlirate NodeJS otvorite comand prompt(Win + R upisite cmd i stisnite enter) i upišite npm on bi vam trebao izbaciti nešto ovako: 
	
		...
		npm@2.15.9 C:\Program Files\nodejs\node_modules\npm
		

3. Nakon toga napravite direktorij u kojem ćete raditi i prebacite se u njega u comand promptu
	
	```cd [File path]```

4. Sada upisite :```npm init``` Npm će vas pitati da svome novom projektu date naziv, verziju, itd. Sve upisujete proizvoljno.

5. Kada ste završili sa initom moramo instlirati Express. Express je application framewrok za NodeJS njegovu dokumentaciju i slične guidove možete pronaći [ovdje](http://expressjs.com/en/guide/routing.html). Express instalirate pomoću ove komande: ```npm install express --save``` (--save znači da express stavljate u svoj properties.json tako da kada radite na drugom računalu morate upisati samo npm install kako bi se instalirali svi moduli)


6. Nakon toga sve što je potrebno je u folderu ime_aplikacije urediti ime_aplikacije.js file. Ovo je kod s kojim smo radili na prvom satu: 

~~~~    
//Include expressa te dodavanje njegove funkcije u varijablu app
var express = require('express');
var app = express();

//Funkcija get koja ce na root-u isipisati Hello req-request 
//res = response
app.get('/', function(req,res){
	res.send('Hello!');
});

//Drugačija funkcija ali na pathu /get
app.get('/GET', function(req,res){
	//Random generirani broj koji se pomnozi sa 10 milijuna kako bi 
	//dobili 7-znamekasti broj kojem maknemo onda ostala decimanlna
	//mjesta sa funkcjiom toFixed(0)
	var token = (Math.random()*10000000).toFixed(0);
	res.json({token: token});
});

//Funkcija koja pokrece server na zadanom portu
//(Bitno!)Nekada se port 80 koristi za drugi servis 
//stoga je potrebno upisati bilo koji drugi port 
app.listen(80, function(){
	console.log('Listening on port 80');
});
~~~~ 

7. Kada ste uredili ime_aplikacije.js u cmd upišite: ```node ime_aplikacije``` (tom naredbom u ovom slučaju se pokreće server na portu 80) 
Tebalo bi vam izbaciti Listening on port...

Preporuka : Instalirati module *nodemon (npm install nodemon --save*). Modul pokreće server i sam se brine za njegovo restartiranje(tj. kada se naprave promjene u *ime_aplikacije.js* server se restartira). U slučaju da se koristi *node ime_aplikacije.js* za pokretanje servera prilikom promjena u *ime_aplikacije.js* server se mora manualno restartirati.

	

# Description:
Well it's definitely the 90s. Using what was found in the mysterious .ico file, you extract the driver for the Aluminum-Key Hardware password storage device. Let's see what it has in store.

# Solution:
1. At first check the whole page, all javascript are written inside the script tag, try to figure out the logic.
2. The code : `password = /^CTF{([0-9a-zA-Z_@!?-]+)}$/.exec(keyhole.value);` indicates that the password enters should be in forms of CTF{xxxx}, thus the flag is the password.
3. The funciton x(password) is called after reg exp is satisfied, so looke inside into this function.
```
async function x(password) {
    // TODO: check if they can just use Google to get the password once they understand how this works.
    var code = 'icffjcifkciilckfmckincmfockkpcofqcoircqfscoktcsfucsivcufwcooxcwfycwiAcyfBcwkCcBfDcBiEcDfFcwoGcFfHcFiIcHfJcFkKcJfLcJiMcLfNcwwOcNNPcOOQcPORcQNScRkTcSiUcONVcUoWcOwXcWkYcVkЀcYiЁcЀfЂcQoЃcЂkЄcЃfЅcPNІcЅwЇcІoЈcЇiЉcЈfЊcPkЋcЊiЌcІiЍcЌfЎcWoЏcЎkАcЏiБcІkВcБfГcNkДcГfЕcЇkЖcЕiЗcЖfИcRwЙcИoКcЙkЛcUkМcЛiНcМfОcИkПcОiРcПfСcUwТcСiУcQkФcУiХcЃiЦcQwЧcЦoШcЧkЩcШiЪcЩfЫcRiЬcЫfЭcКiЮcЭfЯcСoаcЯiбcГiвcЙiгcRoдcгkеcдiжdТaзcЛfиdзaжcжийcСkкdйaжcжклcйfмdлaжcжмнdТaжcжноdЀaжcжопdNaжcжпрcUiсcрfтdсaуdЁaтcтутcтофcТfхdфaтcтхтcтктcтнтcтмцdсaтcтцтcтктcтутcтнчaaтшdЯaщcйiъcщfыdъaьcжыэcVfюdэaьcьюьcьояdЛaьcьяьcьуьcьыѐчшьёѐшшђcOfѓdђaѓcѓнѓcѓнєcUfѕdєaѓcѓѕіcЯfїdіaѓcѓїјaёѓљaaтњcжшћcЎiќcћfѝdќaњcњѝњcњeўcЏfџdўaњcњџѠdАaњcњѠњcњшњcњѝњcњfњcњџѡљшњѢaaтѣcжшѣcѣѝѣcѣeѣcѣџѤcЯkѥdѤaѣcѣѥѣcѣшѣcѣѝѣcѣfѣcѣџѦѢшѣѧcцнѧcѧїѨdСaѧcѧѨѧcѧкѧcѧуѩaёѧѪcхмѫdрaѪcѪѫѪcѪкѬdYaѪcѪѬѪcѪиѭaѩѪѮcяюѯdНaѮcѮѯѮcѮиѮcѮхѮcѮкѰaѭѮѱdVaѲcхѱѲcѲѕѳcNoѴcѳkѵcѴfѶdѵaѲcѲѶѲcѲiѲcѲlѲcѲmѷјѲgѸјѭѷѹbѰѸѺcXfѻdѺaѻcѻюѻcѻоѻcѻкѻcѻoѼdђaѻcѻѼѻcѻнѻcѻнѻcѻѕѻcѻїѽaёѻѾѽѹшѿceeҀceeҁcee҂ceeѿaѾeҀјѿT҂ѡҀшҁјh҂hѦҁшѿaѾfҀјѿV҂ѡҀшҁјh҂hѦҁшѿaѾiҀјѿU҂ѡҀшҁјh҂hѦҁшѿaѾjҀјѿX҂ѡҀшҁјh҂hѦҁшѿaѾkҀјѿЁ҂ѡҀшҁјh҂hѦҁшѿaѾlҀјѿF҂ѡҀшҁјh҂hѦҁшѿaѾmҀјѿЄ҂ѡҀшҁјh҂hѦҁшѿaѾnҀјѿЉ҂ѡҀшҁјh҂hѦҁшѿaѾoҀјѿЄ҂ѡҀшҁјh҂hѦҁшѿaѾpҀјѿЋ҂ѡҀшҁјh҂hѦҁшѿaѾqҀјѿЍ҂ѡҀшҁјh҂hѦҁшѿaѾrҀјѿА҂ѡҀшҁјh҂hѦҁшѿaѾsҀјѿF҂ѡҀшҁјh҂hѦҁшѿaѾtҀјѿВ҂ѡҀшҁјh҂hѦҁшѿaѾuҀјѿД҂ѡҀшҁјh҂hѦҁшѿaѾvҀјѿЗ҂ѡҀшҁјh҂hѦҁшѿaѾwҀјѿК҂ѡҀшҁјh҂hѦҁшѿaѾxҀјѿН҂ѡҀшҁјh҂hѦҁшѿaѾyҀјѿР҂ѡҀшҁјh҂hѦҁшѿaѾAҀјѿТ҂ѡҀшҁјh҂hѦҁшѿaѾBҀјѿФ҂ѡҀшҁјh҂hѦҁшѿaѾCҀјѿW҂ѡҀшҁјh҂hѦҁшѿaѾDҀјѿХ҂ѡҀшҁјh҂hѦҁшѿaѾEҀјѿЪ҂ѡҀшҁјh҂hѦҁшѿaѾFҀјѿЬ҂ѡҀшҁјh҂hѦҁшѿaѾGҀјѿЮ҂ѡҀшҁјh҂hѦҁшѿaѾHҀјѿа҂ѡҀшҁјh҂hѦҁшѿaѾIҀјѿe҂ѡҀшҁјh҂hѦҁшѿaѾJҀјѿб҂ѡҀшҁјh҂hѦҁшѿaѾKҀјѿв҂ѡҀшҁјh҂hѦҁшѿaѾLҀјѿK҂ѡҀшҁјh҂hѦҁшѿaѾMҀјѿе҂ѡҀшҁјh҂hѦҁшѐceeёceeѓceeјceeљceeњceeѡceeѢceeѣceeѦceeѧceeѩceeѪceeѭceeѮceeѰceeѲceeѷceeѸceeѹceeѻceeѽceeѾceeҀceeҁceeжceeтceeчceeьcee'
    var env = {
        a: (x,y) => x[y],
        b: (x,y) => Function.constructor.apply.apply(x, y),
        c: (x,y) => x+y,
        d: (x) => String.fromCharCode(x),
        e: 0,
        f: 1,
        g: new TextEncoder().encode(password),
        h: 0,
    };
    let tmp = [];
    for (var i = 0; i < code.length; i += 4) {
        var [lhs, fn, arg1, arg2] = code.substr(i, 4);
        try {
            env[lhs] = env[fn](env[arg1], env[arg2]);
        } catch(e) {
            env[lhs] = new env[fn](env[arg1], env[arg2]);
        }
        if (env[lhs] instanceof Promise) env[lhs] = await env[lhs];

	//------------------------------------------------------------------------------------
	// This part is used to print all the steps calling function of comparing digests
	//if(fn == 'ѡ'){
	//	tmp.push(env[arg1][1]);
	//	console.log(i, lhs, fn, arg1, arg2, env[arg1], env[arg2], env.h);
	//}
	//------------------------------------------------------------------------------------

	//------------------------------------------------------------------------------------
	// This part is added to check the status in every step
	//console.log("------------------------------------");
	//console.log(i, lhs, fn, arg1, arg2, env[arg1], env[arg2], env.h);
	//console.log(env[lhs]);
	//------------------------------------------------------------------------------------
    }
    // The following 2 lines are added by me for restructing the hash digest.
    console.log(tmp);
    console.log(tmp.reduce((acc,cur)=>acc+("0"+parseInt(cur).toString(16)).slice(-2), ''));
    
    return !env.h;
}

```
4. According to this function, there would be an object named env constructed, it works somehow in a RAM way, caching some functions and variables.
5. The result of the function is affected by the env.h, so we use console.log to print all the steps and try to figure out where the env.h is modified by trying the value "CTF{123}".
6. On seeing the result of the above step, we got several hints:
	- A function with x[0]^x[1] and another for x[0] | x[1].
	- An UintBArray[32], with the value:'[166, 101, 164, 89, 32, 66, 47, 157, 65, 126, 72, 103, 239, 220, 79, 184, 160, 74, 31, 63, 255, 31, 160, 126, 153, 142, 134, 247, 247, 162, 122, 227]' 
	- change on env.h on a function call with two parameters, one of which is the element in the UintBArray mentioned above.
7. According to the AES_CBC and sha-256 function call in the logic, we can make a guess that the this password is stored by its sha-256 digest, and since the strange UintBArray[32] can be a 256 digit digest(32*8=256), and then transform the array into hex and google it, found it to be the sha-256 hash value of phase "123", which proves our hypothese.
8. The second arg in the function should be the digest of the correct password, so use an array to store it every time the function is called, according to the code, the key of that function is 'ѡ'.
```
	if(fn == 'ѡ'){
		tmp.push(env[arg1][1]);
		console.log(i, lhs, fn, arg1, arg2, env[arg1], env[arg2], env.h);
	}
```
9. Got the digest 'e66860546f18cdbbcd86b35e18b525bffc67f772c650cedfe3ff7a0026fa1dee', google it according to the hint in comment of the code and found that it's the digest of a common password ''Passw0rd!.

# flag:
CTF{Passw0rd!}


const randomList = [];
var regame = false;
var count = 0;

function start(){
 
var inputOne = document.getElementById("one").value
var inputTwo = document.getElementById("two").value
var inputThree = document.getElementById("three").value

    if(inputOne === inputTwo || inputOne === inputThree || inputTwo === inputThree){
        alert("중복된값은 입력할수 없습니다.");
        return;
    }
    if(inputOne >= 10 || inputTwo >= 10 || inputThree >= 10){
        alert("0~9사이의 숫자만 가능합니다.");
        return;
    }

    return prod();
}


function prod(){


var inputOne = document.getElementById("one").value;
var inputTwo = document.getElementById("two").value;
var inputThree = document.getElementById("three").value;
console.log(inputOne)
console.log(inputTwo)
console.log(inputThree)

const inputNumber = [inputOne,inputTwo,inputThree]


//스코어 배열안에 숫자가 없을경우 랜덤한 값을 넣는다.
if(randomList.length === 0){
    regame = true;
}else{
//있을경우 랜덤값을 넣지않는다.
    regame = false;
}



//겹치지 않는 랜덤한 0~9까지의 수 3개를 넣는다.
if(regame === true){
    for(var i=0; i<3; i++){
        // var random = parseInt(Math.random()*(10+0-1)+0);
        randomList.push(parseInt(Math.random()*(9+0-1)+0));
        //만약 겹친다면 랜덤한 수를 다시뽑게함
        if(i === 1 || i === 2 ){
            for(var j=i-1; j >= 0; j--){
                if(randomList[j] === randomList[i]){
                    randomList.splice(i,1);
                    i--;
                }
            }
        }
    }
}


//S B 비교

    var s=0
    var b=0
 
    for(var i=0; i<randomList.length; i++){

        for(var j=0; j<randomList.length; j++){
            
            if( randomList[j]+"" === inputNumber[i] && j === i){ 
                s += 1;
            }
            if(randomList[j]+"" === inputNumber[i] && j !== i){      
                b += 1;
            }
        }
    }
    console.log("s: "+s+", b: "+b)
    alert("s: "+s+", b: "+b)
    if(s === 0 && b === 0){
        alert("하나도 맞추지 못했습니다.")
    }
    count++;
    console.log("횟수:"+count)
console.log("정답: "+randomList)
console.log("입력값: "+inputNumber)


if(s === 3 ){
    alert("축하합니다. 정답입니다."+count+"회차만에 맞추셨습니다. 게임이 초기화됩니다.")
    console.log("축하합니다. 정답입니다."+count+"회차만에 맞추셨습니다. 게임이 초기화됩니다.")
    //초기화
    randomList.splice(0,3);
    regame = false;
    count = 0;
    return;
}


}

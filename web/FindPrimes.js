/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var MAXINT = 101;
var numPrimes = 25;
var whichPrime = 2;
var primesFound = 0;
var numMults = 0;
var numStrokes = 0;
var lookingforPrime = true;

function resize() {
    document.getElementById("body").style.width = "auto";
}

function circle( whatInt ) {
    var doc = document;
    var Num = Number;
    var maxint = MAXINT;
    if( lookingforPrime === true ) {
        var whatCanvas = doc.getElementById("c" + whatInt );
        if( whatCanvas.getAttribute("circled") === "false" ) {
            // clear all the canvases
            window.onload();
            var whatColor = whatCanvas.getAttribute("color");
            drawCircle( whatCanvas, whatColor );
            whatCanvas.setAttribute("circled", "true");
            whichPrime = whatInt;
            numMults = Math.floor(maxint/whatInt) - 1;
            numStrokes = 0;
            for( var l = 0; l < 4; ++l ) {
                doc.getElementById("msg" + l).style.color = "#0060e0";
            }
            if( numMults === 0 ) {
                primesFound = primesFound + 1;
                reDrawAll();
                if( numPrimes === primesFound ) {
                    doc.getElementById("msg0").style.color = "#803000";
                    doc.getElementById("msg0").innerHTML = 
                        "That's it. You found all the prime numbers less than 100!";
                    doc.getElementById("msg1").innerHTML = "";
                    doc.getElementById("msg2").innerHTML = "";
                    doc.getElementById("msg3").innerHTML = "";
                    return;
                } 
                var allPrimes = doc.getElementsByClassName("prime");
                var len = allPrimes.length;
                var lastPrime = 2;
                for( var j = 1; j < len; ++j ) {
                    if( allPrimes[j].getAttribute("circled") === "false" ) {
                        break;
                    }
                    var id = allPrimes[j].id;
                    var sz = id.length;
                    lastPrime = Num(id.substring(1,sz));
                }
                doc.getElementById("msg0").innerHTML = 
                    "All multiples of " + whatInt + " are greater than 100."; 
                doc.getElementById("msg1").innerHTML =
                    "There is nothing to cross off.";
                doc.getElementById("msg2").innerHTML = 
                    "Click the first number greater than " + lastPrime + " that is not crossed off.";
                doc.getElementById("msg3").innerHTML =
                    "That is the next prime number.";
                              
            } else {
                doc.getElementById("msg0").innerHTML = 
                    "Click on all the multiples of " + whatInt + "."; 
                doc.getElementById("msg1").innerHTML =
                    "They can be divided equally by more than two distinct numbers, so";
                doc.getElementById("msg2").innerHTML =
                    "they are not prime.";
                doc.getElementById("msg3").innerHTML = "";
                lookingforPrime = false;
                for( var j = 2*whatInt; j < maxint; j += whatInt ) {
                    doc.getElementById("c" + j ).onclick = slash;
                    //slash( doc.getElementById("c" + j ) ); // debug
                }
            }         
        }
        
    }
}
function drawCircle ( whatC, color ) {
    var ctx = whatC.getContext("2d");
    ctx.lineWidth = 6;
    var rad = 1.7*whatC.offsetHeight;
    var wye = 1.2*rad;
    var ex = 2*whatC.offsetWidth;
    ctx.beginPath();
    /* arc(x,y,r,startangle,endangle) */
    ctx.arc( ex, wye,rad,0,2*Math.PI);
    ctx.strokeStyle = color;
    ctx.stroke(); 
}
function slash( ev ) {
//function slash( whatCanvas ) { // debug
    var doc = document;
    var Num = Number;
    var Mat = Math;
    var whatCanvas = ev.target; // comment out for debug
    var whatPrime = whichPrime;
    var id = whatCanvas.id;
    var len = id.length;
    var whatInt = Num(whatCanvas.id.substring(1,len));
    var struck = doc.getElementById(id).getAttribute("struck");
    var midX = 2*whatCanvas.offsetWidth;
    var midY = 2*whatCanvas.offsetHeight;
    if( whatInt%whatPrime === 0 && struck === "false" ) {
        whatCanvas.setAttribute( "struck", "true" );
        var origPrimeCanvas = doc.getElementById("c" + whatPrime );
        var color = origPrimeCanvas.getAttribute("color");
        var angle = Num(origPrimeCanvas.getAttribute("angle"));
        angle = Mat.PI*angle/180;
        var deltaX = Mat.cos(angle);
        var deltaY = Mat.sin(angle);
        var startX = midX*(1 + deltaX);
        var startY = midY*(1 + deltaY);
        var stopX = midX*(1 - deltaX);
        var stopY = midY*(1 - deltaY);
        drawSlash( startX, startY, stopX, stopY, whatCanvas, color ); 
        numStrokes = numStrokes + 1;
        if( numMults === numStrokes ) {
            lookingforPrime = true;
            var allMults = doc.getElementsByClassName("mult");
            var len = allMults.length;
            for( var i = 0; i < len; ++i ) {
                allMults[i].setAttribute("struck","false");
            }
            reDrawAll();
            primesFound = primesFound + 1;
            if( numPrimes === primesFound ) {
                doc.getElementById("msg0").style.color = "#803000";
                doc.getElementById("msg0").innerHTML = 
                    "That's it. You found all the prime numbers less than 100!";
                doc.getElementById("msg1").innerHTML = "";
                doc.getElementById("msg2").innerHTML = "";
                doc.getElementById("msg3").innerHTML = "";
                return;
            }
            for( var l = 0; l < 4; ++l ) {
                doc.getElementById("msg" + l).style.color = "#803000";
            }
            var allPrimes = doc.getElementsByClassName("prime");
            var len = allPrimes.length;
            var lastPrime = 2;
            for( var j = 1; j < len; ++j ) {
                if( allPrimes[j].getAttribute("circled") === "false" ) {
                    break;
                }
                var id = allPrimes[j].id;
                var sz = id.length;
                lastPrime = Num(id.substring(1,sz));
            }
            doc.getElementById("msg0").innerHTML = 
                "Click the first number greater than " + lastPrime + " that is not crossed off.";
            doc.getElementById("msg1").innerHTML =
                "That is the next prime number.";
            doc.getElementById("msg2").innerHTML =
                "";  
            doc.getElementById("msg3").innerHTML =
                "";
        }
    }
}
function drawSlash( startX, startY, stopX, stopY, whatC, color ) {
    var c = whatC.getContext("2d");
    c.beginPath();
    c.lineWidth = 6;
    c.moveTo(startX, startY);
    c.lineTo(stopX, stopY);
    c.strokeStyle = color;
    c.stroke();
}
function reDrawAll() {
    var doc = document;
    var Num = Number;
    var Mat = Math;
    var maxint = MAXINT;
    var allPrimes = doc.getElementsByClassName("prime");
    var canvas0 = allPrimes[0];
    var midX = 2*canvas0.offsetWidth;
    var midY = 2*canvas0.offsetHeight;
    var len = allPrimes.length;    
    for( var k = 0; k < len; ++k ) {
        var whichCanvas = allPrimes[k];
        if( whichCanvas.getAttribute("circled") === "true" ) {
            var color = whichCanvas.getAttribute("color");
            drawCircle( whichCanvas, color );
            var id = whichCanvas.id;      
            var idLen = id.length;
            var whatPrime = Num(id.substring(1,idLen));
            //alert("redrawing " + whatPrime + " and all it's multiples");
            var angle = Num(whichCanvas.getAttribute("angle"));
            angle = Mat.PI*angle/180;
            var deltaX = Mat.cos(angle);
            var deltaY = Mat.sin(angle);
            var startX = midX*(1 + deltaX);
            var startY = midY*(1 + deltaY);
            var stopX = midX*(1 - deltaX);
            var stopY = midY*(1 - deltaY);
            for( var j = 2*whatPrime; j < maxint; j += whatPrime ) {
                drawSlash( startX, startY, stopX, stopY, doc.getElementById("c" + j), color );
            }
        }
    }
}
window.onload = function() {
    var doc = document;
    MAXINT = doc.getElementById("maxInt").value;
    var maxint = MAXINT;
    numPrimes = Number(doc.getElementById("numPrimes").value);
    //var maxint = 101;
    //var measure= doc.createElement('div');
    //measure.style.height= '10em';
    //doc.body.appendChild(measure);
    //var size= measure.offsetHeight/10;
    //document.body.removeChild(measure);
    //alert("body default font is " + size + " pixels.");
    doc.getElementById("msg0").innerHTML = 
        "A prime number is a number that can be divided evenly by exactly two distinct numbers: 1 and itself.";
    doc.getElementById("msg1").innerHTML =
        "This exercise will help you find all the prime numbers between 1 and 100."; 
    doc.getElementById("msg2").innerHTML =
        "One is not a prime number.";
    doc.getElementById("msg3").innerHTML =
        "To start with, click on the smallest prime: 2";
    var canvasWidth = 3;
    var canvasHeight = 3;
    for( var i = 1; i < maxint; ++i ) {
        var whatCanvas = doc.getElementById("c" + i);
        var ctx = whatCanvas.getContext("2d");

        if( i === 1 ) {
            canvasHeight = whatCanvas.offsetHeight;
            canvasWidth = whatCanvas.offsetWidth;
            //alert("default font is " + ctx.font + " canvas width = " + canvasWidth + " canvasHeight = " + canvasHeight);
        }
        ctx.clearRect(0, 0, 4*canvasWidth, 4*canvasHeight);
        var newSize = (4*canvasWidth)/3;
        var yOffs = 2.9*canvasHeight;
        //var yOffs = 6*size;
        var xOffs = 2*canvasWidth - 0.3*newSize*(1 + Math.floor(Math.log10(i)));
        //var xOffs = 2*canvasWidth - 1.8*size*(1 + Math.floor(Math.log10(i)));
        var fontString = newSize + "px Courier";
        ctx.font = fontString;
        /*
        if( i === 1 ) {
             alert("font is now " + ctx.font);
        }
        */
        ctx.fillText( i.toString(), xOffs, yOffs );
    }
};
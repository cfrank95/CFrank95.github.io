var xPositions = [10];
var yPositions = [0];
var x1Positions = [300];
var y1Positions = [-150];
var up = 400;
var away = 200;
var difference = 280;

draw = function() {
    background(204, 247, 255);
    fill(0, 120, 36);
    rect(-10, 300, 420, 100);  
    for (var i = 0; i < xPositions.length; i++) {
        noStroke();
        fill(0, 102, 255);
        ellipse(xPositions[i], yPositions[i], 10, 10);
        yPositions[i] += 5;
        if(yPositions[i] > 300 && yPositions.length < 20){
            xPositions.push(random(10,390));
            yPositions.push(random(-100,40));
        }if(yPositions[i] > random(300,390)){
            yPositions[i] = 0;
    }   }   for (var j = 0; j < x1Positions.length; j++) {
                noStroke();
                fill(0, 102, 255);
                ellipse(x1Positions[j], y1Positions[j], 10, 10);
                y1Positions[j] += 5;
                if(y1Positions[j] > 300 && y1Positions.length < 20){
                    x1Positions.push(random(10,390));
                    y1Positions.push(random(-100,40));
                }if(y1Positions[j] > random(300,390)){
                    y1Positions[j] = -100;
            }   }
    fill(75, 75, 45);
    arc(away, difference, 100,50, 0,180);
    arc(away + 25, difference, 50,50,-30, 0);
    arc(away - 25, difference, 50,50,180, 209);
    
    if(y1Positions.length === 20){
        fill(0, 102, 255);
        rect(0, up, 400, 300);
        up-= 0.2;
            if(up <= 220){
                up = 220;
                difference = 200;
                away -= 0.5;
            }if(up <= 300){
            difference -= 0.2;
            }
    } 
    
    fill(255, 0, 0);
    rect(0, 400, 400, 300);
    
    noStroke();                         //Clouds
    fill(99, 99, 99);
    rect(0,0,400,84);
    stroke(0, 0, 0);
    arc(51, 71, 169, 75, 22, 162);
    arc(335, 71, 169, 75, 22, 162);
    arc(200, 71, 169, 75, 22, 162);
    arc(127, 8, 100, 145, 0, 72);
    arc(270, 28, 76, 100, 105, 181);
    
};
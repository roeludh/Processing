void drawHomeScreen(){
//Instellingen voor het beginscherm, zoals achtergrond en welkomstekst

background(#BFBFBF);
image(memory,windowX, windowX, windowBreedte, windowHoogte);

tekenStartKnop();

}

 
 //De functies voor de startknoppen.
void homeScreenClick() {
   
     if( mouseX >= (windowBreedte/3)+20
     && mouseX <= (windowBreedte/3)+20 + startBreedte
     && mouseY >= windowHoogte-60
     && mouseY <= windowHoogte-60 + startHoogte)
     {
       level += 1;
     }else{
     homeScreen = false;
    } 
}

# BlackJack

##Martyav 

I handled the view, almost entirely in storyboard. The game required many different objects on screen, organized in a way that would be both attractive and sensible, whereas earlier projects involved simple user interfaces with an image, a tableview, a grid of programatically generated buttons, or 3 different UIControls arranged down the center. 

Due to the large number of objects, this project served as a crash course on effectively using storyboard constraints and stackviews. 

Although XCode's GUI superficially resembles software like Illustrator, layering objects on top of one another or locking them in position is done very differently, and requires strategy. You always have to think about the view as a whole. I also read up on how to create custom button classes, because the default styling on buttons is very flat and blocky. It makes them look static. Rounded buttons with borders are very common in web design and signal to users that this is an area of the screen that can be clicked. Since XCode's GUI lacks controls for borders, I had to write a custom button class to give the buttons the styling I wanted.

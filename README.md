### JAVA Video Game Task

This project was created in Java within the program, "Proccessing". This project had solidified my computing foundations and allowed me to create a project that met the requirements but also exceeded by recieving a 100% mark. Highlights within this tasks were the randomized trees which were generated in real time and created new tree structures as the screen navigated down. The generation would create new trees that would like differing sizes and width to give the illusion of movement.


# The requirements and assessibility of the project is listed below:

```
Module 1: Foundations of Programming

The canvas should be 400 pixels wide and 600 pixels high. If that appears too tiny on your screen you can have your canvas be 500 pixels wide and 750 pixels high instead.

Grass
There should be two grassy strips on either side of the canvas. The width of these strips should be 1/5 of the canvas width. These strips can be a solid colour of your choosing.
Wally's walk
Wally's walk should be in the middle of the two grassy strips taking up 3/5 of the canvas width. Later we will draw Wally's walk using squares to mimic paving, but for now, Wally's walk can be a rectangle (see demo video for demonstration).  Wally's walk can be a solid colour of your choosing distinguishable from the colour chosen for the grassy strips.

Player design
Come up with a design for your player that will be travelling down Wally's walk. The player in the demo is on their bicycle but you are free to come up with your own design. To receive marks the player must be a complex shape, made up of 3 or more simple shapes.
Have the player situated at the bottom of the canvas as shown in the demo. 
Some of your code may need to be changed later when it is time to move each individual shape as one. In week 2, it is just the look of the player to focus on. 
Your player should be of similar size to the player from the demo.

Pedestrian design
Come up with a design for your pedestrian. It doesn't need to actually be a pedestrian, just something for your player to avoid as they traverse Wally's walk. Pedestrians should be of a similar size to those shown in the demo.  

Module 2: Variables & Conditionals

Player movement
Have the player controlled using the 'a' and 'd' keys to move left and right respectively. The player must not be able to go beyond the boundaries of Wally's walk.  

Single Pedestrian
Have a single pedestrian move down Wally's walk towards the player. When the pedestrian ventures off screen have another pedestrian roll onto the screen from the top as shown in the demo.

Collisions
If the player hits the pedestrian the game must end. There should be some indication that the game is over, nothing should move on screen and user input should have no effect on player movement.  

Module 3: Loops

Wally's Walk
Draw Wally's Walk using squares. To receive marks this must be done using a nested loop. For full marks have Wally's Walk "move" as shown in the demo video. 

You might find the following program useful for this part: https://ilearn.mq.edu.au/pluginfile.php/8070070/mod_page/content/64/drawCircles.pde

Trees
Draw a total of six trees, three on each side of Wally's Walk. Have these trees "move" with Wally's Walk. To receive marks, the positioning of the trees must be attained using a nested loop.

Module 4: Compound Data

Pedestrian Traffic
Have up to 6 oncoming pedestrians on screen at any time. For full marks, pedestrians should walk or run at different speeds toward the player. When a pedestrian disappears off-screen, a new pedestrian with a randomised x-coordinate and randomised speed should roll onto the screen. Pedestrians should only spawn on Wally's walk and continue down, they must not appear on the grassy areas. As before, the game is over if the player collides with any of the 6 on-screen pedestrians.  

To receive marks this must be implemented using compound data.

Cokes (no sugar)
The player likes to drink Coke with no sugar. 

Have up to 3 cokes (with no sugar) on screen at any time for your player to pick up. The cokes must disappear when the player collides with them to indicate that the player has picked them up. Once a coke is collected, or when it disappears off-screen, a new coke with a randomised x-coordinate must then roll onto the screen. The cokes must only spawn on Wally's walk and continue down, they must not appear on the grassy areas. The cokes must appear to be stationary relative to the movement of Wally's Walk (i.e. moving at the same speed as Wally's Walk towards the player).

The cokes should be a similar size to those shown in the demo. They don't need to be coke either, you can design any kind of item for your player to pick up so long as they are of similar size to the cokes.

To receive marks this must be implemented using compound data.

Randomised Trees
Have each tree be randomised such that the scale, number of bulbs and branch radius is different for each tree. As a tree disappears off screen, have a new randomly generated tree roll onto the screen. For full marks to have the same function and be responsible for drawing each tree, use the following function signature:

void drawTree(float x, float y, float scale, int bulbs, float radius)

To receive marks this must be implemented using compound data.```

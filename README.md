# Digital-Logic-Final-Project
This is my final project for digital logic in the third semester of university. My final project has several components, and I would explain them seperatly. There is also a documentation which have been written by my friend, Aysa.
## Description
In this project we are going to take 17 bits during 17 clocks. In the first 16 clocks we will take two 8-bit numbers from the user and the final bit will specifies whether the two numbers must be added or subtracted.
### Counter
The first step was to implement a counter. It counts from 0 to 16, because we have 17 clocks, so we should specify we are in which clock and also in every clock only one bit would be taken and stored in the register. The important thing is that we need 5 bits to count from 0 to 16. I have used 3 ports, the first two ones are inputs, ```CLK``` and ```RST```, the third one has ```inout``` type and also it is a ```vecotr``` with 5 elements(bits), because every output of this counter is calculated using the last output.
### Demux
In the next step I have implemented a demux. The key is that the output of the counter, now is the input of demux. So in this entity, we first need a data which is ```I```, and 5 selectors as a ```vector``` with 5 elements(the output of counter had 5 bits too). Finally, the ouput of this entity is also a ```vector``` which has 17 elements(17 bits).
In the first time, I have written its code in 17 lines. In the second time I implement it using a ```for``` loop and ```generate``` keyword, and finally I used a ```for``` loop and also a ```process``` with ```clock```.
### D flip flop
For storing bits we need to have flip flops. So, first, I implement a D-flip flop, and then in another file I instantiate 17 flip flops to store the outputs of demux. Actually, the outputs of demux, are the inputs of my flip flops. Every D-flip flop has 3 inputs, ```CLK```, ```D``` and ```Enable```, and all of them are ```STD_LOGIC``.
### Full adder
The next component which I have implemented was a full adder. Well it it has 3 inputs and 2 outputs. But we need to add two 8-bit numbers, so in a seprate file, I attach 8 of this components to each other to create a 8-bit full adder. So now the inputs are 2 8-bit numbers which are actually the outputs of demux.
### Full subtractor
Do we need it? Actually. no:). I have been told that onle by implementing the full adder, we can do subtract operation, how? The only thing that we have to do is to pass the ```not``` of the second number.
### Last step
In the last step, by using **component instantiation**, in __Top.vhd__, I mapped the inputs and outputs to different components. Actually this file works just like the ```main``` function which we have seen in different programming languages. I have called all my 4 components in this file.

## Finally
Well, I have learned lots of things by doing this project, and I really enjoyed it. Suffice to say I could not finish this project without my TA' help. He helped my alot, and I am really grateful for his help and advice. I have also asked two questions in StackOverflow, and used many links from youtube, etc. 
Thanks!!!
## Sources
✔https://technobyte.org/vhdl-code-synchronous-upcounter-behavioral/

✔https://stackoverflow.com/questions/30666389/can-not-have-such-operands-in-this-context-error-vhdl-code

✔https://www.javatpoint.com/registers-in-digital-electronics#:~:text=A%20Register%20is%20a%20collection,more%20than%20one%20flip%20flops.

✔https://www.youtube.com/watch?v=BrBykxdaFJw&ab_channel=MKSubramanian

✔https://surf-vhdl.com/vhdl-for-loop-statement/

✔https://www.youtube.com/watch?v=7tKW00VNOBU&ab_channel=..andthenBAM%21

✔https://allaboutfpga.com/vhdl-code-for-full-adder/

✔https://technobyte.org/vhdl-code-full-subtractor-half-subtractor-dataflow/

✔https://www.electronicshub.org/binary-adder-and-subtractor/#Binary_Subtraction_Circuits

✔https://www.youtube.com/watch?v=vPkdV9M3aBk&ab_channel=edwardDTU





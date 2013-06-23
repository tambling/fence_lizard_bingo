Fence Lizard Bingo
==================

What good is bingo if you don't have a board on which to play it?

##What is this?
It's a dumb idea I had on Friday. It takes in a newline-separated list as
a text file, and formats that into a randomly-arranged bingo board, with
a star in the middle and everything. It's very hacky, very kludgey, and
I'm absolutely certain that it's in dire need of a refactor. Still, it
works, which is insane.

##How do I use it?
Download all the files. Make sure that squares.txt is an up-to-date list
of the adorable things Brick and Anne do, with a single newline in between
each item. Run bingo_builder.rb. In the directory that contains bingo_builder.rb
and squares.txt, there should now be board.html. Open that up in a web
brower, print it, use a dry-erase marker on your screen, whatever.

##What's next?
I have big plans for this.

Near Term:
* Rewrite HTML renderer using ERB, instead of the hacky solution I have in place right now.
* Beautification: add a style.css file, possibly even Jony Ivefying the design.

Middle Term:
* Make GUI and push to Heroku.
* Automate production of more than one board.

If you have a feature you'd like to see in Lizard Bingo, leave a comment, or fork this repo and implement it yourself! This idea, and the code that accompanies it, is completely open.

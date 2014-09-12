Week 5 Challenge @ Makers Academy 
==================================

Deploying a simple web application in sinatra. Hosted on heroku @ http://polar-badlands-2114.herokuapp.com/

Objectives:
-----------

- Level 1: create a sinatra based application for a rock-paper-scissors game
- Level 2: deploy the application to heroku
- Level 3: add NewRelic add-on to monitor app performance
- Bonus Level: Style

Ruby Version:
-------------
Ruby 2.1.2

Technologies:
-------------
- Sinatra
- Heroku

Features:
---------
- A player can register to play a game of rock-paper-scissors vs. the computer
- Motivational quotes are displayed alongside the result

Classes:
--------
- Player: can pick a move
- Computer: generates random moves
- Game: processes game result

Running the application:
------------------------
$ rackup from root will open the application on port 9292

Running the test suite:
-----------------------
$ rspec from root
# TERMINAL PROJECT - Biological Age Calculator
## Description
This terminal application will reveal to you, your biological age after a series of responses. It will also show suggestions or recommendations to improve your biological age

## Instructions
You will be required to use numbers to answer the question in the input unless otherwise specified

![alt text][img]

[img]:
https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/Input.png "input image"

## Functionality
You will first need to create a basic user profile before you can answer the questionaire or calculate your biological age.

Once the user profile is created, you will then answer the questions which will determine what kind of score you will get that will determine your calculation

Once that is completed you can then calculate your biological age

#### GitHub Repository  
Biological Age Calculator respository - [LINK](https://github.com/dlim28/Biological-Age-Calculator.git)


## Wire diagram
Original Diagram
![alt text][image]

[image]: https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/Terminal%20Project%20-%20Biological%20Age%20Calculator.png "Original Diagram"

Final Diagram
![alt text][image2]

[image2]:
https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/Final%20Terminal%20Project%20-%20Biological%20Age%20calculator.png
"Final Diagram"

The application was meant to have a main class originally to handle all the menu options, however we saw that as redundant and decided to put the menu options in the main.

Another change was the addition of the **SetQuestions** module to seperate the answering of the questions from the calculation of the answers.   
When attempting to put all the questions as well as doing the calculation for all the answers, the module was verbose and it was messy to read. A clean up was needed and which was why we had decided to seperate the two

Calculate  
![alt text][image3]

[image3]:
https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/Calculate%20Code.png "Calculate Code Snippit"

SetQuestions  
![alt text][image4]

[image4]:
https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/SetQuestions%20Code.png "SetQuestions Code Snippit"

## Project Management & Timeline
We used Trello to keep track of all tasks that is required to have a working terminal application

Trello Board (Biological Age Calculator) - [LINK](https://trello.com/b/9hFg7is3/terminal-project-biological-age-calculator)

![alt text][trello]

[trello]: https://raw.githubusercontent.com/dlim28/Biological-Age-Calculator/master/docs/Terminal%20Project%20-%20Biological%20Age%20Calculator%20Trello.png "Trello Board - Biological Age Calculator"

The trello board was seperated into the following:
* Things To Do  
* In Progress
* Pending
* Review
* Completed
* Cancelled/No longer required

Each of these have their own functions
 - Things to do holds all the tasks that are still needed to be completed and not assigned to anyone
 - In Progress are tasks that have yet to be completed but have been assigned to someone
 - Pending means that a task has been put on hold and up for further discussion
 - Review means that the task has been completed and needs to be reviewed before putting into completed pile. If there are still glaring problems it goes back to In Progress
 - Completed means that the task is completed and acceptable by all members
 - Cancelled/No Longer required means that the task is no longer required or has been superceded by something else
  
The start date was mainly about brainstorming ideas and doing research about what will be chosen.
Zainab had a series of ideas relating to health, but the three that were most noticable were:

1. The first idea was about tracking the time a patient had to wait for a doctor.
2. Another idea was to have the app calculate the age of your heart
3. Calculate your biological age (Your "real" age dependant on you lifestyle)  
   
We picked the biological age calculator as it was rather interesting.

The first day involved starting the classes and modules needed for the application to work.
It also includes revision to the overall application if needed as we can still make major changes if we need to
Ideally the core part of the application should be finished and working at this point

The second day is dedicated to finishing off and polishing the application. It is also dedicated to applying ruby gems to allow a more aesthetic sense so it is more palletable rather than just terminal text
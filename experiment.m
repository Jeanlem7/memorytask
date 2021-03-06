%start with a function

clear all; % clears all workspace variables

participantID = input('Please enter your initials','s'); %asks the subject their name

Screen('Preference', 'SkipSyncTests', 1); %skips the sync problem error
[w1,rect]=Screen('OpenWindow',0,0);
[center(1), center(2)]= RectCenter(rect);
Priority(MaxPriority(w1)); %makes sure the psychtoolbox is prioritized on ur PC
HideCursor(); %cursor not needed in this visual task, so we hide it

KbPressWait; sca; %this waits for a key press and exits the screen 

%------------------------------------------------------------
%                 Putting text on the screen
%------------------------------------------------------------

Screen('DrawText',w1, 'Press any key to start', center(1)-100,center(2)-10,255); %255 is text color
Screen('Flip', w1);
pause; %this pauses the program to wait for a response from the user
Screen('Flip', w1); %returns to a blank screen
WaitSecs(1); %waits on this screen for x amount of seconds before continuing


%------------------------------------------------------------
%                 Creating Stimuli: images
%------------------------------------------------------------










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   End Of The Script                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Screen('Close', w1)
Priority(0);
Show(Cursor());
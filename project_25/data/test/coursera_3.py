# URL http://www.codeskulptor.org/#user4-SRPkTWOma4VUs8H.py
# template for "Stopwatch: The Game"
import simplegui
# define global variables
# define helper function format that converts integer
# counting tenths of seconds into formatted string A:BC.D
def format(time):
    #Format Milis
    milliseconds = str(time)
    aux = len(milliseconds)
    milliseconds = milliseconds[aux-1]

    #Format Seconds
    seconds = int((time / 10) % 60);
    if len(str(seconds))<2:
        seconds = "0" + str(seconds)
    else:
        seconds = str(seconds)

    #Format Minutes
    minutes = int(((time / (10*60)) % 60));
    if len(str(minutes))>1:
        minutes = str(minutes)
        aux = len(minutes)
        minutes = minutes[aux-1]
    else:
        minutes = str(minutes)

    return minutes+":"+seconds+":"+milliseconds

# def updateScore():
#     slash = score.find("/")
#     success = int(score[:slash])
#     attempts = int(score[slash+1:])
#     if intent == True:
#         success +=1
#     attempts +=1
#     score = str(success) + "/" + str(attempts)



# define event handlers for buttons; "Start", "Stop", "Reset"
def start():
    if running != True:
        timer.start()
        running = True

def stop():
    if running == True:
        timer.stop()
        intent = stopwatch[len(stopwatch)-1]
        if intent=="0":
            updateScore(True)
        else:
            updateScore(False)
        running = False

def reset():
    if running == True:
        timer.stop()
        running = False
    time = -1
    score = "0/0"
    tick()

# define event handler for timer with 0.1 sec interval
def tick():
    time +=1
    stopwatch = format(time)

# Handler to draw on canvas
def clock(canvas):
    canvas.draw_text(stopwatch, [75,118], 36, "White")
    canvas.draw_text(score, [250,24], 12, "Lime")

# create frame
frame = simplegui.create_frame("StopWatch", 300, 200,100)
frame.set_canvas_background("Black")
button1 = frame.add_button("Start", start, 100)
button2 = frame.add_button("Stop", stop, 100)
button3 = frame.add_button("Reset", reset, 100)
timer = simplegui.create_timer(500, tick)
frame.set_draw_handler(clock)

# register event handlers

# start timer and frame

# remember to review the grading rubric
#Complete:
#1 pt - The program successfully opens a frame.
#1 pt - The program has a working "Start" button
#		that starts the timer.
#1 pt - The program has a working "Stop" button
#		that stops the timer.
#1 pt - The program has a working "Reset" button
#		that stops the timer (if running) and resets the
#		timer to 0.
#4 pts -The time is formatted according to the description
#		in step 4 above.  Award partial credit
#		corresponding to 1 pt per correct digit.
#		For example, a version that just draw tenths of
#		seconds as a whole number should recieve 1 pt.
#		A version that draws the time with correctly placed
#		decimal point (but no leading zeros) only should
#		receive 2 pts. A version that draws minutes,
#		seconds and tenths of seconds but fails to always
#		allocate two digits
#		to seconds should receive 3 pts.
#2 pts -The "Stop" button correctly updates the
#		success/attempts counters.  Give only one point
#		if hitting the "Stop" button changes the score
#		when the timer is already stopped.
#1 pt - The "Reset" button clears the success/attempts
#		counters.
#2 pts -The program correctly draws the number of
#		successful stops at a whole second versus total
#		stops.  You should give one point each for
#		successful and total stops.  If the score is
#		correctly reported as a percentage instead,
#		give only one point.
#
#
#TODO
#....

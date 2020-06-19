# STOPWATCH: Time as you've never seen it before
# (I used to work in PR)

# requires SimpleGUICS2Pygame module
import simplegui
import SimpleGUICS2Pygame.simpleguics2pygame as simplegui

# define global variables

# define helper function
def format(t):
    A = time / 600
    B = ((time / 10) % 60) / 10
    C = ((time / 10) % 60) % 10
    D = time % 10
    t = str(A) + ":" + str(B) + str(C) + "." + str(D)
    return t

# define event handlers for buttons

def start_timer():
    timer.start()
    running = True

def stop_timer():
    timer.stop()
    if running == True:
        counter += 1
        if time % 10 == 0:
            success +=1
    running = False

def reset_timer():
    timer.stop()
    time = 0
    running = False
    counter = 0
    success = 0

# define event handler for timer with 0.1 sec interval

def timer_handler():
    time += 1
    print(time)

# define draw handler

def draw(canvas):
    t = "0:00.0"
    t = format(t)
    canvas.draw_text(t,[130,150],24,"Yellow","monospace")
    canvas.draw_text(str(success)+"/"+str(counter),[260,30],20,"Red","monospace")

# create frame

frame = simplegui.create_frame("Timer frame",300,300)

# register event handlers

frame.set_draw_handler(draw)
frame.add_button("Start", start_timer)
frame.add_button("Stop", stop_timer)
frame.add_button("Reset", reset_timer)
timer = simplegui.create_timer(100,timer_handler)

# start frame


# And there we go, a lovely little program
# And here's a little reward for anyone still reading:

# 'Twas brillig, and the slithy toves
# Did gyre and gimble in the wabe
# All mimsy were the borogoves
# And the mome raths outgrabe.

# "Beware the Jabberwock, my son!
# The jaws that bite, the claws that catch!
# Beware the Jubjub bird, and shun
# The frumious Bandersnatch!"

# He took his vorpal sword in hand
# Long time the manxome foe he sought
# So rested he by the Tumtum tree,
# And stood awhile in thought.

# And, as in uffish thought he stood,
# The Jabberwock, with eyes of flame,
# Came whiffling through the tulgey wood,
# And burbled as it came!

# One, two! One, two! And through and through
# The vorpal blade went snicker-snack!
# He left it dead, and with its head,
# He went galumphing back.

# "And, thou hast slain the Jabberwock?
# Come to my arms my beamish boy!
# Oh frabjous day! Calloo! Callay!"
# He chortled in his joy.

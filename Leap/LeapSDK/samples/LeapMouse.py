import os, sys, inspect
src_dir = os.path.dirname(inspect.getfile(inspect.currentframe()))
lib_dir = os.path.abspath(os.path.join(src_dir, '../lib'))
sys.path.insert(0, lib_dir)
from LeapInput import SampleListener
import Leap as Frog
import pynput.mouse 

import AppKit
screens = [(screen.frame().size.width, screen.frame().size.height)
        for screen in AppKit.NSScreen.screens()]
myScreen = screens[0]

XOFFSET = 170
YOFFSETHIGH = 250
YOFFSETLOW = 75


XSCALE_FACTOR = myScreen[0]/(XOFFSET*2)
YSCALE_FACTOR = myScreen[1]/(YOFFSETHIGH - YOFFSETLOW)


class MouseChild(pynput.mouse.Controller):
  
  def x_leap2ScreenPos(self, leapXPos):
    return int((leapXPos + XOFFSET) * XSCALE_FACTOR)
  
  def y_leap2ScreenPos(self, leanYPos):
    return int(abs(leanYPos - YOFFSETHIGH) * YSCALE_FACTOR)

  def setPosition(self, leapPos):
    newPosition = (self.x_leap2ScreenPos(leapPos[0]),\
        self.y_leap2ScreenPos(leapPos[1]))
    print newPosition
    self.position = newPosition
class LeapListener(Frog.Listener):

  def __init__(self, mouse):
    Frog.Listener.__init__(self)
    self.mouse = mouse

  def on_init(self, controller):
    print "Initialized Leap Listener"

  def on_connect(self, controller):
    print "Connected to Leap Device"

    controller.enable_gesture(Frog.Gesture.TYPE_CIRCLE);
    controller.enable_gesture(Frog.Gesture.TYPE_KEY_TAP);
    controller.enable_gesture(Frog.Gesture.TYPE_SCREEN_TAP);
    controller.enable_gesture(Frog.Gesture.TYPE_SWIPE); 

  def on_disconnect(self, controller):
    print "Disconnected from Leap Device"
    
  def on_exit(self, controller):
    print "Exited from Program"

  def on_frame(self, controller):
    frame = controller.frame()

    print "Frame id: %d, timestamp: %d, hands: %d, fingers: %d, tools: %d, gestures: %d" % (frame.id, frame.timestamp, len(frame.hands), len(frame.fingers), len(frame.tools), len(frame.gestures()))

    # Get hands
    if (len(frame.hands) > 0):
      hand = frame.hands[0]
      index = hand.fingers[Frog.Finger.TYPE_INDEX]
      print "Finger: ", type(index)
      pointer = index.bone(Frog.Bone.TYPE_DISTAL)
      self.mouse.setPosition(pointer.next_joint)

      for gesture in frame.gestures():
        if gesture.type is Frog.Gesture.TYPE_CIRCLE:
          pass 
        elif gesture.type is Frog.Gesture.TYPE_SWIPE:
          pass
        elif gesture.type is Frog.Gesture.TYPE_KEY_TAP:
          pass
        elif gesture.type is Frog.Gesture.TYPE_SCREEN_TAP:
          self.mouse.click(pynput.mouse.Button.left, 1)
          raise ValueError('Whoohoo')
      

def main():
  mouse = MouseChild()
  # Create a sample listener and controller
  listener = LeapListener(mouse)
  controller = Frog.Controller()
  controller.set_policy(Frog.Controller.POLICY_BACKGROUND_FRAMES)

  # Have the sample listener receive events from the controller
  controller.add_listener(listener)

  # Keep this process running until Enter is pressed 
  print "Press Enter to quit..."
  try:
    sys.stdin.readline()
  except KeyboardInterrupt:
    pass
  finally:
    # Remove the sample listener when done
    controller.remove_listener(listener)

if __name__ == "__main__":
  main()

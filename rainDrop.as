﻿package {	import flash.display.MovieClip;	import flash.events.Event;	public class rainDrop extends MovieClip {		public var done:Boolean = false;		public function rainDrop() {			addEventListener(Event.ENTER_FRAME, playForward);			// constructor code		}		private function playForward(evt:Event):void {			sunUpdate();		}		public function sunUpdate():void {			if (this.currentFrame == this.framesLoaded) {				done = true;				removeEventListener(Event.ENTER_FRAME, playForward);				if (Math.random() < .2) {					for (var i:uint = 0; i < 5; i++) {						var g:Grass = new Grass();						g.y = this.y + (500 * this.scaleY);						g.x = this.x;						g.scaleX *=  .4 * this.scaleX * Math.random();						g.scaleY *=  .4 * this.scaleY * Math.random();						parent.addChild(g);					}				}				parent.removeChild(this);			}			else {				nextFrame();			}		}	}}
﻿package com.label.timesquid.bill {		import flash.display.MovieClip;		import com.label.timesquid.*;		import com.label.arduino.sensor.SensorEvent;		public class Hand extends MovieClip {				// Constants:		// Public Properties:		// Private Properties:		var min = 170;		var max = 290;		// UI Elements:				public function Hand()		{			//this.rotation = 120;			this.stop();			this.scaleY = 1;		}				public function sensorEvent(e:SensorEvent):void		{			setValue(e.val);		}				protected function setValue(val:int) 		{			//Calc range			var newVal = (val/5);						this.gotoAndStop(Math.floor(20-newVal));		}				public function isClosed():Boolean		{			return this.currentFrame>=15;					}	}	}
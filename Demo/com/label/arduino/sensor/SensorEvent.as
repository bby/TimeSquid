﻿package com.label.arduino.sensor{	import flash.events.Event;		public class SensorEvent extends Event	{		public var val:int;				public static var NEW_VALUE:String = "NEW_VAL";				public function SensorEvent(type:String, bubbles:Boolean, cancelable:Boolean, value:int)		{			super(type, bubbles, cancelable);			val = value;		}	}}
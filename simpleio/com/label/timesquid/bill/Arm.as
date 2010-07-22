﻿package com.label.timesquid.bill {		import flash.events.Event;		import flash.display.MovieClip;	import com.label.timesquid.*;		public class Arm extends MovieClip implements ILimb {				// Constants:		// Public Properties:		// Private Properties:		var min = 160;		var max = 290;		var rabbit:Rabbit;		var hasRabbit:Boolean;				// UI Elements:		public var bills_hand:MovieClip;				public function Arm()		{			//this.rotation = 120;			addEventListener(Event.ENTER_FRAME, frameEvent);		}						public function setValue(val:int) 		{			//Calc range (340-590)						this.rotation=Math.floor(val/2)+80;				}				protected function frameEvent(e:Event):void 		{			if (bills_hand.hitTestObject(parent.hit_area))			{								if (bills_hand.isClosed() && !hasRabbit)				{					//grab rabbbit					rabbit = new Rabbit();					rabbit.y = 100;					rabbit.rotation = 90;					this.addChild(rabbit);										hasRabbit = true;										//Hide rabbit.					parent.mary.rabbit.visible=false;				}				else				{					if (!hasRabbit)					{						parent.mary.rabbit.visible=true;										}				}			}			else			{				if (hasRabbit)				{					//See if we can drop it on floor					//trace(rotation);					if (rotation>-30)					{						//Drop rabbit						hasRabbit = false;						rabbit.visible = false;												var rabbitAnim = new RabbitAnim();						rabbitAnim.x = 347;						rabbitAnim.y = 508;						//Rand left or right						var dir = Math.floor(Math.random()*2);						if (dir==1)						{							rabbitAnim.scaleX = -1;						}						parent.addChild(rabbitAnim);						//parent.rabbit_anim.visible=true;						//parent.rabbit_anim.gotoAndPlay(1);					}				}			}					}	}	}
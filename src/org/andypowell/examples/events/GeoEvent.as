package org.andypowell.examples.events {
import flash.events.Event;

import org.swizframework.utils.chain.EventChainStep;

    public class GeoEvent extends EventChainStep {

        public static const GEO:String = "org.andypowell.examples.events.GeoEvent.GEO";

        public function GeoEvent(type:String) {
            super(type, true, true);
        }

        override public function clone():Event{
            return new GeoEvent(this.type);            
        }
    }
}
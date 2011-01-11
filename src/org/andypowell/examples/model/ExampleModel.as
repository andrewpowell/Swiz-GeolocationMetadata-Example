package org.andypowell.examples.model {

    [Bindable]
    public class ExampleModel implements IExampleModel{

        private var _latitude:Number=0;
        private var _longitude:Number=0;
		private var _lastUpdate:Date=new Date();
		private var _distanceFromLast:Number=0;

        public function ExampleModel() {
        }
        
        public function get latitude():Number {
            return _latitude;
        }

        public function set latitude(value:Number):void {
            _latitude = value;
        }

        public function get longitude():Number {
            return _longitude;
        }

        public function set longitude(value:Number):void {
            _longitude = value;
        }
		
		public function get lastUpdate():Date{
			return _lastUpdate;
		}
		
		public function set lastUpdate(value:Date):void{
			this._lastUpdate=value;
		}
		
		public function get distanceFromLast():Number{
			return _distanceFromLast;
		}
		
		public function set distanceFromLast(value:Number):void{
			this._distanceFromLast=value;
		}
		
    }
}
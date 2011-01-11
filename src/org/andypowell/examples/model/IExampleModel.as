package org.andypowell.examples.model {

    [Bindable]
    public interface IExampleModel {

        function get latitude():Number;
        function set latitude(value:Number):void;

        function get longitude():Number;
        function set longitude(value:Number):void;
		
		function get lastUpdate():Date;
		function set lastUpdate(value:Date):void;
		
		function get distanceFromLast():Number;
		function set distanceFromLast(value:Number):void;

    }
}
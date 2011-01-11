package org.andypowell.examples.controller {
import com.mapquest.DistanceUnits;
import com.universalmind.geotools.GeoUtils;
import com.universalmind.geotools.Point;

import org.andypowell.examples.model.IExampleModel;
import org.swizframework.controller.AbstractController;

    public class GeoController extends AbstractController {

        [Inject]
		[Bindable]
        public var exModel:IExampleModel;

        public function GeoController() {
            super();
        }

        [Geolocation]
        public function geolocationUpdate(latitude:Number,longitude:Number):void{
			var distanceFromLast:Number = GeoUtils.distance(new Point(exModel.latitude,exModel.longitude),new Point(latitude,longitude)); 
            if(distanceFromLast>0.1){
				exModel.latitude=latitude;
            	exModel.longitude=longitude;
				exModel.lastUpdate=new Date();
				exModel.distanceFromLast=distanceFromLast;
			}
        }

    }
}
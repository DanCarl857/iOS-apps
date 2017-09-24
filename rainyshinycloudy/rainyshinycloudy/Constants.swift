//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Daniel Carlson on 7/1/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appId="
let API_KEY = "82bab6bb0c4223afc8349abc662645ab"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)51.51\(LONGITUDE)-0.13\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()

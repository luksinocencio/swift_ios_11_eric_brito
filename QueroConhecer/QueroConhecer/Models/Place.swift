//
//  Place.swift
//  QueroConhecer
//
//  Created by Lucas Inocencio on 29/11/2017.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import Foundation
import MapKit

struct Place: Codable {
    let name: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let adress: String
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static func getFormattedAddress(with placemark: CLPlacemark) -> String {
        var address = ""
        if let street = placemark.thoroughfare {
            address += street // Rua
        }
        if let number = placemark.subThoroughfare {
            address += "\(number)" // Numero
        }
        if let subLocality = placemark.subLocality {
            address += "\(subLocality)" // Bairro
        }
        if let city = placemark.locality {
            address += "\(city)" // Cidade
        }
        if let state = placemark.administrativeArea {
            address += "- \(state)" // Cidade
        }
        if let postalCode = placemark.postalCode {
            address += "\nCEP: \(postalCode)" // Cidade
        }
        if let country = placemark.country {
            address += "\n \(country)" // País
        }
        return address
    }
}

extension Place: Equatable {
    static func ==(lhs: Place, rhs: Place) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}

//
//  TimeSchadual.swift
//  MyTime
//
//  Created by Mikhail on 2020-11-18.
//

import Foundation
class TimeScahadual: ObservableObject{
    private var _id: UUID? = UUID()
    private var _hoursAvailability: Int? = 0
    private var _dateAvailability:[Date]?
    private var _datdListBooked:[Date]?
    init() {
    }
    init (hoursAvailability: Int,dateAvailability: [Date],datdListBooked:[Date]) {
    self._hoursAvailability = hoursAvailability
    self._dateAvailability = dateAvailability
    self._datdListBooked = datdListBooked
    }
    
    
}

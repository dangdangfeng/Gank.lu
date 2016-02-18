//
//  DateUtil.swift
//  Gank.lu
//
//  Created by FIND.ME on 16/2/18.
//  Copyright © 2016年 smartalker. All rights reserved.
//

import Foundation
class DateUtil {
    static let calendar = NSCalendar.currentCalendar()
    static let dateFormatter = NSDateFormatter()
    static func stringToDate(dateStr:String)->NSDate{
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return dateFormatter.dateFromString(dateStr)!
    }
    
    static func dateToString(date:NSDate,dateFormat:String)->String{
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.stringFromDate(date)
    }
    
    static func componentsFromDate(date:NSDate)->NSDateComponents{
        return calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: date)
    }
}
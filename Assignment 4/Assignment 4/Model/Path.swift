//
//  Path.swift
//  Assignment 4
//
//  Created by Brett Williams on 2/11/23.
//

import Foundation

struct Path{
    init(_ prob: String, _ o_one:String, _ o_two:String, _ i_one:Int, _ i_two:Int){
        problem = prob
        optionOne = o_one
        optionTwo = o_two
        indexOne = i_one
        indexTwo = i_two
    }
    
    var problem: String
    var optionOne:String
    var optionTwo:String
    var indexOne: Int
    var indexTwo: Int
}

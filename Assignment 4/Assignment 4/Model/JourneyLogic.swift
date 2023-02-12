//
//  JourneyLogic.swift
//  Assignment 4
//
//  Created by Brett Williams on 2/11/23.
//

import Foundation



struct JourneyLogic{
    
    var questIndex: Int = 0
    
    let path = [
        //Create path here, just make sure the option index goes to the right one.
        //Needs at least 3 layers deep story.
        //Maybe change the backgrounds?
    Path("You awaken in a basement with no recollection as to how you got here....",
        "Go up the stairs.",
        "Climb through the small basement window.",
        1,
        2),
    Path("After climbing the stairs you find yourself in a hallway. It sounds like someone is in the room at one end of it...",
        "Go towards the noise.",
        "Go the other way.",
        3,
        4),
    Path("You squeeze through the window, now you have to decide whether to follow the path to the front of the house or to follow the creek by the edge of the woods...",
        "Follow the path.",
        "Follow the creek.",
        5,
        6),
    Path("You enter a room with a hooded figure chanting something under his breath. Infront of him is some kind of cooking pot. Maybe they can help explain where you are?",
        "Approach the hooded figure.",
        "Turn around and leave the room.",
        7,
        8),
    Path("You reach the end of the hallway and enter the living room. Should you walk out from the front door or sit on the couch in the living room?",
        "Walk outside.",
        "Have a seat.",
        9,
        10),
    Path("At the front of the house you find a car still running. Taking it would be theft, perhaps you should just walk?",
        "Take the car.",
        "Follow the road on foot.",
        11,
        12),
    Path("As you follow the creek you find a massive waterfall, perhaps you should take a break?",
        "Ignore the waterfall and keep going.",
        "Sit down beside the waterfall.",
        13,
        14),
    Path("You creep behind the hooded figure and can see that the pot is filled with crabs. As soon as you notice this detail the hooded figure announces \"Since you have such interest in the crabs, why don't I make you one?\" followed by a flash of light and splash as you fall into the pot of water.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("As you turn around to leave you bump into a table, the hooded figure turns quickly towards you. He yells something unintelligible which is followed by a flash of light. Suddenly everything in the room seems so much taller than before. The hooded figure comes over and picks you up and carries you to the pot, which you can now see is filled with crabs. He drops you in to the pot to join the others that came before you.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("The front door turns out to be very squeaky, alerting anyone who may be in the house. As soon as you step out of the house a hooded figure from within the house hits you over the head with a staff and drags you back to the basement.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("You sit down in the living room. A hooded figure enters the room carrying two plates of food. They hand you a plate and sit down beside you. You sit and talk with the hooded figure while enjoying you crab dinner.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("As you shut the door to the car, a hooded figure runs out of the house. You put the car in drive only for it to die. As you attempt to get out the hooded figure hits you over the head with his staff. You pass out and awaken again in the basement.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("You follow the road until eventually reaching the closest town. You seem unable to recall any of the events that occured in the past few hours. All you know is that you're very hungry. You go to the closest diner and order their speciality meal, a crab dinner. It's the best food you've ever had.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("You continue down the creek until eventually you reach a town. You seem unable to recall any of the events that occured in the past few hours. All you know is that you're very hungry. You go to the closest diner and order their speciality meal, a crab dinner. It's the best food you've ever had.",
         "Start Over!",
         "Start Over!",
        0,
        0),
    Path("You sit down to enjoy the loud waterfall. Suddenly a giant claw grabs you from behind. Before you can do anything a giant crab has made you its dinner.",
        "Start Over!",
        "Start Over!",
        0,
        0)
    ]

    //Maybe make this method the mutating method to change the quest index?
    func nextCount(_ response: String) -> Int{
        if response == path[questIndex].optionOne{
            return path[questIndex].indexOne
        } else {
            return path[questIndex].indexTwo
        }
    }
    
    func getProblem() -> String{
        return path[questIndex].problem
    }
    
    func getOptionOne() -> String {
        return path[questIndex].optionOne
    }
    
    func getOptionTwo() -> String {
        return path[questIndex].optionTwo
    }
    
    mutating func setIndex(_ sender: String) {
        questIndex = nextCount(sender)
    }
}


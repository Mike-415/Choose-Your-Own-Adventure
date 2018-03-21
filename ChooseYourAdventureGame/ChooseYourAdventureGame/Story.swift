

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//The ghost says "haha, holy water doesn't work on protestant ghost."
//
//Your phone doesn't get reception in the foggy weather.  Uh oh!
import Foundation

enum Narrative {
    case story1, story2PartA, story2PartB, story3PartA, story3PartB
}

class Story
{
    static var name = ""
    private var plot:Narrative?
    private var textViewText = ""
    private var buttonAText = ""
    private var buttonBText = ""
    
    private func setTextViewText(to plot:Narrative)
    {
        switch plot {
        case .story1:
            textViewText = "It is a cold, foggy night and you are walking down a gloomy graveyard and you hear something eerie"
        case .story2PartA:
            textViewText = "Suddenly, a translucent creature is approaching you!  What do you do?"
        case .story2PartB:
            textViewText = "Great choice!  You lived another day to tell a story that no one will believe"
        case .story3PartA:
            textViewText = "The ghost says \"haha, holy water doesn't work on protestant ghost.\""
        case .story3PartB:
            textViewText = "Your phone doesn't get reception in the foggy weather.  Uh oh!"
        }
    }
    
    private func setButtonAText(to plot:Narrative)
    {
        switch plot {
        case .story1:
            buttonAText = Story.name+", do you decide to\n investigate the situation\n further"
        case .story2PartA:
            buttonAText = Story.name+", do you decide to\n sprinkle yourself with\n holy water"
        case .story2PartB:
            buttonAText = Story.name+", this is button A"
        case .story3PartA:
            buttonAText = Story.name+", this is button A"
        case .story3PartB:
            buttonAText = Story.name+", this is button A"
        }
    }
    
    private func setButtonBText(to plot:Narrative)
    {
        switch plot {
        case .story1:
            buttonBText = Story.name+", do you decide to\n run the opposite direction"
        case .story2PartA:
            buttonBText = Story.name+", do you decide to\n call the ghost busters"
        case .story2PartB:
            buttonBText = Story.name+", this is button B"
        case .story3PartA:
            buttonBText = Story.name+", this is button B"
        case .story3PartB:
            buttonBText = Story.name+", this is button B"
        }
    }
    
    
    
    func getButtonAText() -> String
    {
        return buttonAText
    }
    
    func getButtonBText() -> String
    {
        return buttonBText
    }
    func getTextViewText() -> String
    {
        return textViewText
    }
    

//    func setAllUIElements()
//    {
//
//        print("buttonA text: \(buttonAText)")
//        print("buttonB text: \(buttonBText)")
//        print("buttonA text: \(textViewText)")
//    }
    
    
    init(toPlot plot:Narrative)
    {
        self.plot = plot
        setButtonAText(to: plot)
        setButtonBText(to: plot)
        setTextViewText(to: plot)
    }
}

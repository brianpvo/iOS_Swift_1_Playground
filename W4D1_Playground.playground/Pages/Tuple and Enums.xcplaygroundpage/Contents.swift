//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */
var schoolTuple = (subject: "math", grade: 80, section: 100)
// yes

/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */
var multipleTuple = (tuple1: namedPersonTuple.firstName, tuple2: schoolTuple.grade)

/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
for (kind, numbers) in interestingNumbers {
    
}

/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
func areYouOldEnough(name: String, age: Int, eligable: Bool) -> String? {
    if eligable {
        return "\(name) and \(age)"
    }
    else {
        return nil
    }
}

/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
    case January
    case Feburary
    case March
    case April
    case May, June, July, August, September, October, November, December
    //...
    
    func abbreviatedStringForm() -> String {
        switch self {
        case .January:
            return "Jan"
        case .Feburary:
            return "Feb"
        case .March:
            return "Mar"
        case .April:
            return "Apr"
        case .May:
            return "May"
        case .June:
            return "Jun"
        case .July:
            return "Jul"
        case .August:
            return "Aug"
        case .September:
            return "Sept"
        default:
            return ""
        }
       
    }
}

//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January
let marchMonth = Months.March

/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */
januaryMonth.rawValue // integer decreased by 1 on the index
marchMonth.rawValue

/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */
januaryMonth.abbreviatedStringForm()

/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */


/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/
enum RockPaperScissors: String {
    case Rock, Paper, Scissors
    
    func compareShape(verse: RockPaperScissors) -> String {
        switch self {
        case .Rock:
            if verse == .Rock {
                return "tied"
            }
            if verse == .Paper {
                return "you lose"
            }
            else {
                return "you won"
            }
        case .Paper:
            if verse == .Rock {
                return "you won"
            }
            if verse == .Paper {
                return "you tied"
            }
            else {
                return "you lost"
            }
        case .Scissors:
            if verse == .Rock {
                return "you lost"
            }
            if verse == .Paper {
                return "you won"
            }
            else {
                return "you tied"
            }
        default:
            return ""
        }
    }
}

var rock = RockPaperScissors.Rock
rock.rawValue
rock.compareShape(verse: RockPaperScissors.Scissors)
//: [Next](@next)

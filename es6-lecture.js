// ES6 SYNTAX LECTURE 10/4/19


//----------------ES6 or ECMAScript 2015
// European Computer Manufacturers Association Script, the 6th version


//-------------Arrow Functions (fat arrow functions)
//create a greeter function, refactor to an arrow function

function greeter1(name){
  return "hello " + name
}
console.log(greeter1)

// refactor to an arrow function

greeter2 = (name) => {
  return "hello " + name
}
console.log(greeter2("learn"))

// curly braces can be omitted if there is no code block

greeter3 = (name) => "hello " + name
console.log(greeter3("learn"))


let oldLongString = "This\nis\na\nlong\nstring"
console.log(oldLongString)
let longString = `
This
is
a
long
string
`
console.log(longString)

//------------------Spread Syntax

// copy array - we can use mutators without changing the original array
var arr1 = [1, 2, 3, 4, 5, 6, 7, 8]
var arr2 = arr1

arr2.push(9, 10)
// console.log(arr1)
// logs the modified array


var arr3 = [1, 2, 3, 4, 5, 6, 7, 8]
var arr4 = [...arr3]

arr4.push(9, 10)
// console.log(arr3)
// logs the original array
// console.log(arr4)
// logs the modified array


//spread operator - can pass a dynamic number of arguments
//create a function that takes in arguments of letters and joins them

getWord = (...letters) => letters.join("")
// console.log(getWord("H", "i", " ", "t", "h", "e", "r", "e", " ", "E", "c", "h", "o", " ", "C", "l", "a", "s", "s", "!"))
// console.log(getWord("H", "i", " ", "t", "h", "e", "r", "e", " ", "E", "c", "h", "o"))
// no changes need to be made to the function


// pass combine a dynamic number of arrays
function combineArrays(...arrays) {
  return arrays.shift().concat(...arrays)
}
// console.log(combineArrays([2, 4, 2], [4, 6, 11], [3, 5, 6], [6, 7, 8]))



//--------------String Interpolation
//refactor the greeter function with string interpolation

greeter = (name) => "hello " + name
greeter = (name) => `Hello, there ${name}!!!!!`
console.log(greeter("Learn Student"))
console.log(greeter(48))


//-----------------Objects

var myBook = {
  title: "Hitchhiker's Guide to the Gallaxy",
  author: "Douglas Adams",
  characters: {
    name1: "Arthur Dent",
    name2: "Ford Prefect",
    name3: "Trillian"
  },
  getBook() {
    return `${this.title} by ${this.author}`
  }
}

//Dot notation to access an values in an object
console.log(myBook.characters.name1)
console.log(myBook.getBook())


//-----------------Object destructuring

// console.log(name1)
// This gives a reference error

console.log(myBook.characters.name1, myBook.characters.name2, myBook.characters.name3)
// How to return the three names from the object

const { name1, name2, name3 } = myBook.characters
// Using destructuring to shorten the access to the nested attributes

console.log(name1, name2, name3)
console.log(`${myBook.getBook()} is about ${name1}, ${name2}, and ${name3}.`)

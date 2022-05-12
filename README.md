# Project-TipSplit

TipSplit was one of my earlier projects with SwiftUI taking the code from just functionality to UI elements, view displayers and Auto Layout for multiple devices.
I learnt differnt UI elements, and pulled in arrays, selection tools and restricting keyboard input to accept only int values.

App allowed me to create different sections, along with user guidance for data input; and fixed values (such as tip percentage). 

## Use case
TipSplit allows for calculating grand total of a bill including varied tip percentages, and calculate a per-person amount due.


## Experiments
I also played with the leading and trailing parts of the Navigation Bar to add grand total (trailing), and total per person (leading). Opted to exclude leading as this resulted in confusion and clutter.

Code: _.navigationBarItems(leading: Text("$\(totalPerPerson, specifier: "%.2f")"))_

Nested within NavigationView of the Struct class

## Screenshots
### Welcome screen:

![Simulator Screen Shot - iPod touch (7th generation) - 2022-05-12 at 12 36 52](https://user-images.githubusercontent.com/60122942/168155078-d0302f02-ffc3-450e-8725-f03533cc9eaf.png)

### User input example:

![Simulator Screen Shot - iPod touch (7th generation) - 2022-05-12 at 12 39 59](https://user-images.githubusercontent.com/60122942/168155222-fc343605-dc0b-4c88-8b4d-b3998d851660.png)

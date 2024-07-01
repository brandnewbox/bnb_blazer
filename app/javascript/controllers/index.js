import { application } from "./application"

// import HelloController from "./hello_controller"
// application.register("hello", HelloController)

import ToggleController from "./toggle_controller"
application.register("toggle", ToggleController)
//TODO IAN for this we can leverage stimulus classes and define the classes we want to toggle WHERE we use the controller

// TRY to do the 2nd one using the same controller and if it doesnt' work
// then create a page controller that has targets to the two sets of html and clicking the button should 
// change the page

// TODO IAN get the white background on the nav and get the logo as an svg that we can color
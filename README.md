# Coordinator-pattern
How to use the coordinator pattern in iOS apps

## Advanced Coordinator Pattern

1. Using child coordinators
2. Navigation backwards 
3. Passing data between controllers
4. Coordinated tab bar controllers
5. Handling segues
6. Protocols and segues

[Hacking with swift] (https://www.hackingwithswift.com/articles/175/advanced-coordinator-pattern-tutorial-ios)  



### 1. Child Coordinators 


## Version 1 - Basic Coordinator Pattern

 ![Coordinator patter](https://github.com/viktorHbenitez/Basic-Coordinator-pattern/blob/master/Sketch/CoordinatorPatters.jpg)  

## Description:

What is responsable the Coordinator Pattern?  
it is responsable for navigations out of your view controllers  and into a separate class.  

**There are three steps I want to cover in order to give you a good foundation with coordinators:**  

1. Designing two protocols: one that will be used by all our coordinators, and one to make our view controllers easier to create.
2. Creating a main coordinator that will control our app flow, then starting it when our app launches.
3. Presenting other view controllers.  

[Hacking with swift] (https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps)  

Conclusion

- No view controllers know what comes next in the chain or how to configure it.
- Any view controller can trigger your purchase flow without knowing how it’s done or repeating code.
- You can add centralized code to handle iPads and other layout variations, or to do A/B testing.
- But most importantly, you get true view controller isolation: each view controller is responsible only for itself.


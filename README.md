# iOS XCUITest Assesment

* Please use iPhone 8 Simulator for all tests
* The main testing framework should be XCUITest 
* You are welcome to choose supporting frameworks for the assesment (e.g. for network stubbing)
* You should handle all necessary system alerts, so the tests are stable



1. Using Page Object Model / other design patterns create a following test:

        a. Choose Login Later option
        b. Choose Republique restaurant
        c. Choose Choose Detect Table
        d. Provide any table number
        e. Tap Select Table
        f. Choose Call a waiter
        g. Choose Bring a Menu option
        h. Verify the confirmation modal is on the screen



2. With the help of stubbing (mocking) network create a following test:

        a. Authenticate user before test (skip the facebook authentication)
        b. Choose Hakkasan restaurant
        c. Choose Detect Table
        d. Provide any table number
        e. Tap Select Table
        f. Choose Menu option
        g. Browse a menu and add different dishes to the bucket (store all prices at the same time)
        h. Go to the bucket and verify the total value is a sum of all stored values from a step <G>
        i. Send the order
        j. Verify confirmation screen exists



3.  The app fires analytics to the '/analytics' endpoint. There is a analytic double-firing bug in the scenario of test case №1. Using stubbing please create a test that will catch this bug. (action: waiterCalled is called twice after confirmation)   

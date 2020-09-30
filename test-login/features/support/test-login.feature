Feature: iTMS Coaching google search
    As a web surfer,
    I want to find information online,
    So I can learn new things and get done

    @regression
    Scenario: Valid
        Given Login successfully
        When User enter valid "tomsmith" for the username and "SuperSecretPassword!" for the password.
        Then When the login is successful, it will display the message "You logged into a secure area!" on top page.

    @in-progress
    Scenario Outline: Invalid
        Given Login failed
        When user enter invalid username '<username>' and password '<password>'
        Then When login fails, it will display the message "Your username is invalid!" on top page.

        Examples:
            | username | password |
            | blablal  | abcdef   |
            | baobao   | okeconde |
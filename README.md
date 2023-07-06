
![login](https://github.com/99vik/odinbook/assets/106154264/4ac1ec14-cc7c-4f15-84e8-b977dad43bdb)
![Untitled design](https://github.com/99vik/odinbook/assets/106154264/cd8ecb96-e783-432e-8ba6-3a9e3ed8c227)

# Odinbook

This is the last rails project in Ruby on Rails course, the most extensive project I did up to date.

This app is a basic social network with certain core fetures of a traditional social media application.

Exercise link: https://www.theodinproject.com/lessons/ruby-on-rails-rails-final-project

## Features

- Sign up / Log in / Log out
    - Used Devise gem for user registration and session handling
    - Enabled login with Github via Omniauth
    - Password change is only possible by clicking "Forgot password" at login, where instructions are sent to you over email

- Posts
    - All users have the same index page where they can see all latest posts
    - Used ActiveStorage to enable posting photos
    - Enabled liking and commenting posts
    - Used Turbo-frames for instant rendering after creating, liking or commenting posts
    - Enabled viewing a list with all users that liked a post with modal popup

- Profile
    - Every user has a profile page where all his created, liked and commented posts can be seen, used Stimulus JS to keep it on the same page
    - Enabled seeing all users friends with modal popup
    - Container with friendship logic that displays certain button depending on your relationship
    - User can edit his account settings, can change email or username(if they are not taken) and upload profile picture

- Friendship
    - Users can send other users friend requests which creates "pending" relationship between them, then user can either decline or accept that request
    - User can remove someone from his friends on clicking "Remove friend" on user's profile

- Notifications
    - After another user sends you a friend request, likes or comments your post, you can see it in your notifications 

- Mailer
    - Used mailer to create welcome e-mail after sign up
    - Devise mailer for resetting password

- Styling
    - Did not use any CSS framework or library for styling, I was writing my own CSS for the whole app


## Notes
- If you plan to run this app locally, after installing gems and migrating database you can run `rails db:seed`, which is going to a run a script and create users with random posts, likes, comments and friends.

- I did not write any tests for this app which I don't believe is a good idea, although this is app is not that comprehensive, I think writing tests is a good habit that will pay off later in some more serious projects

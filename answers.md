# Q0: Why is this error being thrown?

The pokemon model has not yet been generated.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?

The pokemon are from the seeds.rb file. Only the pokemon without a trainer will appear.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

A button is created that when clicked, redirects to the capture_path function while passing the pokemon id as a parameter.

# Question 3: What would you name your own Pokemon?

Heroku

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed trainer_path(pokemon.trainer). This is so that after damaging the pokemon on the trainer's page you get redirected to the same page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

flash[:error] is set to the validation error from the pokemon model which allows this error message to be displayed.


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://pokemononrails.herokuapp.com/

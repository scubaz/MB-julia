# Ask the user his/her name and store it in the my_name variable
print("What is your name, Scout? ")
my_name = chomp(readline())

# Create a list of activities for T255 and store it in a variable
# The [] combines values into a list
activities = ["camping", "hiking", "canoeing", "high adventure", "rock climbing", "caving", "biking", "community service", "mountain climbing", "skiing", "swimming", "sailing"]

# Store the length of the activities list in another variable
activities_count = length(activities)

# Create a new variable to store the user's response and 
# Set the default value to "n"
answer = "n"

# Create an empty string for storing the Scout's
# favorite activity
favorite_activity1 = ""
favorite_activity2 = ""

# Loop until the user answers "y" to the question if this is his/her
# favorite activity
while answer == "n"
  # Get a random number between 1 and the length of the activities
  # variable and store it in a new variable
  random_activity1 = rand(1:activities_count)
  random_activity2 = rand(1:activities_count)

  # Get the name of the activity from the activities variable that
  # is stored in the location/index of the random number we just 
  # generated
  global favorite_activity1 = activities[random_activity1]
  global favorite_activity2 = activities[random_activity2]

  # Ask the user is this is his/her favorite activity
  # and store the response back in the answer variable.
  # If answer == anything but n the it will break
  # out of the while loop
  print("\nAre " * favorite_activity1 * " and " * favorite_activity2 * " your favorite Troop 255 activities " * my_name * "? (y/n)  ")

  # Read the user's response and loop back up to the while
  global answer = chomp(readline())

end # while answer == "n"

# We have broken out of the loop, display a cheesy msg
println("\nWell, " * my_name * ", " * favorite_activity1 * " and " * favorite_activity2 * " are my favorites too!")

# Suggestions to change
# 1. Add or change the activities in the list
# 2. Print out the values in some of the variables to see what they are
# 3. Change the while loop to check that the value does not equal y
# 4. Change so that two activities are selected and ask the user if 
#    they like both (advanced)
# CoreDataDemo
Example project to configure Core Data, create entities and fetch instances.

# Configuration of the project

1. Create a new project and check "Use Core Data":
- You will be able to see: 
  - The new file `nameOfYourProjec.xcdatamodeld`  (CoreDataDemo.xcdatamodeld), model layer.
  - The AppDelegate.swift file with Core Data Stack code.
 
# Model setup 

1. Go to `nameOfYourProjec.xcdatamodeld` and create the entities you need to model data that you need to save.
2. Create the attributes for each entity and the relationships between the objects.


# Add Records to Core Data
The process of adding the records to Core Data has following tasks:

1. Refer to persistentContainer
2. Create the context
3. Create an entity
4. Create new record
5. Set values for the records for each key

# Fetch from Core Data
The process of fetching the saved data from is very easy as well. It has the following task:

1. Prepare the request of type NSFetchRequest for the entity
2. Fetch the result from context in the form of array of [NSManagedObject]
3. Iterate through an array to get value for the specific key







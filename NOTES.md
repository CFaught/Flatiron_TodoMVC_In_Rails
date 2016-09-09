# Step 1: Integrate Basic Theme to Asset Pipeline

[X] / - home page and see a stubbed out, non-dynamic, page with the theme.



# Step 2: Allow people to CRUD lists

[ ] ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list

- create a list
- show a list

- i need a model
- i need a controller
- resource generator!

Does it impact the DB?
Does it impact my URL?

# Step 3:

I want people to be able to create lists. They should be able to add items to those lists. They should be able to navigate many lists and view each lists items.

list model
  has many items


item model
  belongs to a list


# Step Whatever: fix down arrow.

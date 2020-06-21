http://todomvc.com/examples/vanillajs/#/
https://github.com/tastejs/todomvc/tree/gh-pages

# Step 1: Integrate Basic Theme to Asset Pipeline
/ - and see a stubbed out, non-dynmamic page with theme

# Step 2: Allow people to CRUD lists
  [ ] ListsController
    #index
      - see all their lists
      - doubling as my #new action in that it is presenting the person with a form to create a new list
      / - Index all the lists...

    - create a list
    
    - show a list

    - i need a model
    - i need a controller
    - i should generate a resource
      `rails g resource list name`

# New features:
  - does it impact my DB
    - no
  - does impact my URLs
    -yes, need a new URL: lists/1



I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate those lists and see each lists items.

lists
  has many items

item
  belongs to a list

# Misc:
  - fix dropdown arrow on make a list option
http://todomvc.com/examples/vanillajs/#/
https://github.com/tastejs/todomvc/tree/gh-pages

# [x] Step 1: Integrate Basic Theme to Asset Pipeline
/ - and see a stubbed out, non-dynmamic page with theme

# [x] Step 2: Allow people to CRUD lists
  ListsController
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

  - does it impact my DB
    - no
  - does impact my URLs
    -yes, need a new URL: lists/1

# [x] Step 3: Add Items to a List
  - make items in a list real
    - list has many items
    - every item has a list


        lists
        2   shopping list   2
        items
        id    description   list_id
        1     milk          2
        1     cookie        2


    CREATE action for an item in a list - What is the url/http method for that?
      - the form is already present in the show page
      - what URL does this imply?

    post /lists/:id/items #=> doesnt describe which list we are adding an item to?

    an item doesnt exist in our application outside of the context of the list is belongs to
    Nested Resource - Items are nested in terms of URLs under their parent

# [x] Step 4: Adding Validations
  - Validate that lists have names
  - Validate that items have a description

# [] Step 5: Add state (complete, incomplete) to Items in a list
  - Mark items as complete or incomplete

# [] Step 6: Delete Items from list


  
# [] Misc:
  - fix dropdown arrow on make a list option
  
  
  - does it impact my DB
    - probably need an items table associated with a list
  - does impact my URLs
    - '/lists/1'


I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate those lists and see each lists items.

lists
  has many items

item
  belongs to a list
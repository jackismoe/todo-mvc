http://todomvc.com/examples/vanillajs/#/
https://github.com/tastejs/todomvc/tree/gh-pages
I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate those lists and see each lists items.

# [x] Step 1: Integrate Basic Theme to Asset Pipeline
  - and see a stubbed out, non-dynmamic page with theme

# [x] Step 2: Allow people to CRUD lists
  ListsController
    #index
      - see all their lists
      - doubling as my #new action in that it is presenting the person with a form to create a new list
        - Index all the lists...
          - create a list
          - show a list
    - i need a model
    - i need a controller
    - i should generate a resource
  ```shell
    rails g resource list name
  ```

# [x] Step 3: Add Items to a List
  - make items in a list real
    - list has many items
    - every item has a list

    CREATE action for an item in a list - What is the url/http method for that?
      - the form is already present in the show page
      - what URL does this imply?
      ```
        `post /lists/:id/items`
      ```
    an item doesn't exist in our application outside of the context of the list is belongs to
    - Nested Resource - Items are nested in terms of URLs under their parent

# [x] Step 4: Adding Validations
  - Validate that lists have names
  - Validate that items have a description

# [] Step 5: Add state (complete, incomplete) to Items in a list
  - Mark items as complete or incomplete

  what urls do i need & how mght my database change?
  new form for updating the status of the item - which means new url
  `/lists/1/items`
    anything that changes an item should be a PUT/PATCH request to `/lists/1/items/1` (`/lists/:id/items/:id`)
  i know i need to steal the checkbox html from todomvc.com
    add this to view
    ```html
      <input class="toggle" type="checkbox">
    ```

    i need js function to submit the form when you click the check box
      ```javascript
      $(function(){
        $("input.toggle").on("change", function(){
          $(this).parents("form").trigger("submit")
        })
      });
      ```

# [] Step 6: Delete Items from list


  
# [] Misc:
  - fix dropdown arrow on make a list option


## questions
  - does it impact my DB
  - does it impact my URLs
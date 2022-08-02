# Switch-Emulation
Switch-Emulation is an implemention of the switch statements in languages like C++ and Javascript.

A switch statement in Javascript would be:
```javascript 
switch(input) {
  case 1:
    console.log("it is 1")
  break;
  
  default:
      console.log("it isnt found")
  break;
}
```

While a switch emulation using this implemention may look like:
```lua
switch(input) {
  [1] = function() 
    print("it is 1") 
  end,
  
  ["default"] = function() 
    print("it isnt found")
  end
}
```

As you can see, this implemention emulates the switch statement really well, and almost identical to a native implemention.

___________

The example we showed for this implemention will actually work given that you change the `input` to something else. 

## Support for datatypes
As far as we know, this implemention supports all kind of data.
___
# Performance and best practices 

* If you are in a situation where you need to run the switch implemention multiple times, consider initilizing the table once and then use it. Example
   ```lua
   local CaseTbl = {
     [1] = function()
      print("INPUT IS 1")
     end,
     
     ["default"] = function(input)
      print(input, "ISN'T A VALID OPTION")
     end,
   }
   
   switch(1)(CaseTbl) -- run as much as you would ike
   ```
   

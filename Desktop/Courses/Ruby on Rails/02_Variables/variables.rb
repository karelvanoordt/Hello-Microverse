=begin
    
There are 5 types of variables in Ruby

1. Global Variables -($ sign) These have scope globally (throughout the application)
2. Local Variables - (lowercase alphabet or _(underscore)) have scope locally (throughout, in a metod, block or a class definition)
3. Class Variables - (@@) have scope only in the class definition, outside the class they dont.
4. Instance Variables - (@) are used to create attributes on an object
5. Constants - (Capitalized) these are also global variables, but mean that the value remains constant.
    
=end

class VariableScopes

    $global_variable = "GLOBAL VARIABLE"
    local_variable = "LOCAL VARIABLE"
    @@class_variable = "CLASS VARIABLE"
    @instance_variable = "INSTANCE VARIABLE"
    CONSTANT = "CONSTANT"


    def display_variables
        puts $global_variable
        #local variable does not have scope in here, because is not defined in the method
        #but we can override it creating a new local variable
        local_variable1 = "LOCAL VARIABLE IN METHOD"
        puts local_variable1
        puts @@class_variable

        #instance variable does not have scope in instance methods (instance method is a function inside a class)
        puts @instance_variable 
        puts CONSTANT
    end


end

newobj = VariableScopes.new
newobj.display_variables


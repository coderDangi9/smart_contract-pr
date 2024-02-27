//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract Todos{
    struct Todo{
        string text;
        bool completed;

    }
    //Array of 'todo' structs
    Todo[] public todos;
    function create(string calldata _text)public{
        //3 ways to initiallize a struct
        // calling it like a function
        todos.push(Todo(_text,false));
        //key value mapping
        todos.push(Todo({text:_text,completed:false}));
    
    // initialize an empty struct and then update
    Todo memory todo;
    todo.text = _text;
    // todo.completed initialize to false 
    todos.push(todo);
    }
    //solidity automatically create a getter for todo
    // you don't actually need this function
    // function get(uint _index)public view returns(string memory text, bool completed){
        function Updatedata(uint _index, string calldata _text)public{
            Todo storage todo = todos[_index];
            todo.text = _text;
        // }
    }
    //update completed
    function toggleCompleted(uint _index)public{
        Todo storage todo = todos[_index];
        todo.completed =! todo.completed;
    }
}
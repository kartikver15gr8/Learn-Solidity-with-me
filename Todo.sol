// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Todo {
    // In this contract we'll be creating a todo list.
    // for that I've created a struct, in which I'll store some datatypes which'll be used later.

    struct TodoList {
        string discription;
        bool status;
    }
    /* Here I've created an array of "TodoList" datatype that will be storing our 
       our TodoList structs */

    TodoList[] public tasks;

    function createTask(string calldata _discription) public {
        // tasks.push(TodoList(_discription, false));  // this is same as done below
        tasks.push(TodoList({discription: _discription, status: false}));
        /* Above we've assigned a task and set the status as false
        as we've just created a task, and hence its not completed yet.*/
    }

    function updateTask(uint256 _index, string calldata _discription) public {
        tasks[_index].discription = _discription;
    }

    function updateStatus(uint256 _index, bool _status) public {
        tasks[_index].status = _status;
    }
    

    /* In the below function,
    we can change the status by toggling between the statuses. */
    function toggleStatus(uint256 _index) public {
        tasks[_index].status = !tasks[_index].status;
    }

    function getTask() public view returns (TodoList[] memory) {
        return tasks;
    }
}

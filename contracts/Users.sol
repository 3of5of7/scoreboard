// define our version pragma for compilation
pragma solidity ^0.4.15;

// initialize the contract
contract Users {
// create our user struct with attributes
    struct Participant {
        uint id;
        bytes32 name;
        uint point;
    }
// define our state variables
Participant[] public users;
uint userCount;
// add a new user
function addUser(bytes32 userName, uint userPoint) returns (uint userID, bool success) {
    userID = userCount++;
    
    Participant memory newUser;
    newUser.id = userID;
    newUser.name = userName;
    newUser.point = userPoint;
    
    users.push(newUser);
    return(userID, true);
}
// get a list of the users
function getUsers() constant returns (uint[], bytes32[], uint[]) {
    uint length = users.length;
    
    uint[] memory usersID = new uint[](length);
    bytes32[] memory userNames = new bytes32[](length);
    uint[] memory userPoints = new uint[](length);
    
    for (uint i = 0; i < users.length; i++) {
        Participant memory showUser;
        showUser = users[i];
        
        usersID[i] = showUser.id;
        userNames[i] = showUser.name;
        userPoints[i] = showUser.point;
    }
    return(usersID, userNames, userPoints);
}
// change the point total for a specific user
function plusFive(uint id) returns (bool success) {
    users[id].point = users[id].point + 5;
    return true;
}
}

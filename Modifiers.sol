// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract UserDetails {
  constructor(address) public {
accountOwner = msg.sender;

}

 //previous task of structs and mappings
    
//mapping declaration
   mapping(address => uint256) public balance;
   
    //deposit (uint256 amount) this function accepts one argument and it saves the amount a user is depositing into a mapping,
function deposit(uint256 amount) public payable {
 uint256 amount = msg.value;
 balance[msg.sender += amount];
 
}

    //checkBalance() this function searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract.
function checkBalance() public external returns(uint256) {
    uint256 userBalance = balance[msg.sender];
    return userBalance;
}


}


//struct declaration
struct Details {
    string  name;
    uint256 age;
}

  //array initialization
 Details[] public _details;

    //this function accepts 2 arguments that represent the details of the user calling the smart contract and it saves them into a defined struct,
 function setUserDetails(string calldata name, uint256 age) public view {
             _details.push(Details({name: _name, age: _age}));    
    }

//getUserDetail() this function retrieves and returns the details saved for the user calling the contract.
    function getuserDetail() external view {
        return (_details[]);
    }


}

}
    }

         //modifier task
    uint256 public amount;
 

// Create a deposit function that allows anybody to send funds.
    function deposit(address, uint256) public payable {
        owner.send(amount);
       balance[msg.sender] += amount;

}


//create a modifier that only allows the owner of the contract to withdraw the funds.
    modifier onlyOwner(address) {
        require(msg.sender == owner, "You're not the Owner!");
            _;
    }

//Add a withdraw function with the "onlyOwner" modifier
    function withdrawFunds() public payable onlyOwner(msg.sender){
         owner.transfer(amount);
       balance[msg.sender] -= amount;

    }

// create a modifier that only allows users that have deposited using the deposit function, to increase their balance on the mapping. 
    modifier onlyDeposited() {
    if(amount[msg.sender] != 0) {
        _; 
        }
        else {
           revert("You have not deposited funds yet!");
           }
    }
    
 //Add an addFund function to  accept the amount to be added and update the mapping to have the new balance
    function addFund() public view onlyDeposited {
         owner.send(amount);
         balance[msg.sender] += amount;

    }


 //Create a private constant variable called Fee
      uint256 private constant Fee;

//Create a modifier that checks if the value(_amount) it accepts is less than the Fee, revert with a custom error AmountToSmall()
    modifier feePay() {
                       if (msg.value < Fee){
                revert("Amount too small");
            }
        _;
}

}

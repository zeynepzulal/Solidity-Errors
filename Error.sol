// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract Errors{
    /*
    require -> inputs(params) validated by this function
    revert ->  i>10  ise revert eder yani throw eder . message return eder.
    assert -> bir condition parametre aliyor ve false ise error throw ediyor.
    */

    function testRequire(uint _i) public pure{
        //require( condition , message );
        require(_i > 10, "input must be greater than 10"); // _i = 2 oldunda error mesajini veriyor
    }

    
    function testRevert(uint _i) public pure{
        //revert(message);
        if(_i <= 10){ 
            revert("input must be greater than 10");
        }
    }

  
    uint public num;
    function testAssert() public view{
        //assert(condition)
        assert(num == 10);
    }

    function deposit(uint _amount) public view returns(uint){
        require(msg.sender.balance >= _amount, "Insufficent Balance");
        return _amount;
    }
}
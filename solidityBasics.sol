//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

//variables

contract local 


{

    string name = "abc"; // this type of variable is known as state variable
    function  store () pure public returns (uint)
    {
        // string memory  name = "ravi"; // for using string datatype inside the function we have to used memmmory keywoords

        uint age=11; // this kind of variable is known as local variable 
        return age;
    }
}

function setter and getters 

contract local {
 uint public age= 10;

 function getter () view public returns (uint){
 return age;
 }

 function setter (uint newAge) public returns(uint)
 {
     age=newAge+2;
     return age;
 }

..........................
uint public count;
constructor  (uint new_count){
    count=new_count;

}

}
// ..................
// array static array or fixed size array

contract array {
    uint[4] public arr = [10,8,11,5];
    function setter (uint index, uint value) public
    {
        arr[index]=value;
    }

    function length() public view returns (uint)
    {
      return  arr.length;
    }
} 

contract DynamicArray{
    uint[] public DArr ;
function PushElement(uint item) public 
{
    DArr.push(item);
}

function len() public view returns (uint)
{
    return DArr.length;
    }
function popElement() public{
    DArr.pop();

}
}

...............
byte array
contract byteArray {
    bytes2 public b2; // 2 bytes spaces
    bytes3 public b3; //3 bytes spaces
    bytes5 public b5;  //5 bytes  space

    function setter () public {
        b2 ='b';
        b3 = 'abc';
b5= 'afraz';
    }
    
}
// ..................
// if else staments 
contract Statments { 

    function check (int a ) public pure returns (string memory){
        string memory value ; 
        if (a>0)
        {
            value =     "=0";
        }
        else if (a==0){
            value= " =0";
        }
        else {
            value="less than 0";
        }
        return value;
    }
}


// ..........................
// struct datatype
struct student{
    uint roll; string name;

}

contract StructDatatypes { 
       student public s1 ;//first datatype name which we above declred student and after that variable name
       constructor (uint _roll, string memory _name ) {
           s1.roll =  _roll ;
        s1. name =  _name;
       }

function change(uint _roll, string memory _name) public{

    student memory new_student= student({
        roll: _roll,
        name:_name
    });
    s1=new_student;

}

}





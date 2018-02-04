pragma solidity ^0.4.17;

contract userdetails
{
     address owner;
    struct userInfo
    {
        address _ID;
        string _name;
        string _add;
        uint _dob;
    }

    mapping(address=>userInfo) UserData;

    function getDetails(address _address) public view returns(string,string,uint)
    {
        return (UserData[_address]._name,UserData[_address]._add,UserData[_address]._dob);
    }


    function addNewUser(address _id,string name,string add,uint dob) public returns(string)
    {
        if(UserData[_id]._ID==_id)
        {
           return "Customer already exist" ;
        }
        else
        {
            userInfo memory newUser;
            newUser._ID=_id;
            newUser._name=name;
            newUser._add=add;
            newUser._dob=dob;
            UserData[_id]=newUser;
            return "added to blockchain.";
        }
    }
}

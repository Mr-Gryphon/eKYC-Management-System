pragma solidity ^0.4.17;

contract userdetails
{
     address owner;
    struct userInfo 
    {
        uint80 _id;
        string _userHEX;
    }
    event DataEvent(uint80 id,string data,bytes32 action);

    mapping(address=>userInfo) UserData;

    function getDetails(uint80 _searchID) public view returns(string _HEX)
    {
        return (UserData[_searchID]._userHEX);
    }


    function addNewUser(uint80 _newID,string _newUserHex) public {
        if(UserData[_newID]._id==_newID)
        {
             DataEvent(_newID,_newUserHex,"Customer already exist");

        }
        else
        {
            userInfo memory newUser;
            newUser._id=_newID;
            newUser._userHEX=_newUserHex;
            UserData[_newID]=newUser;
            DataEvent(_newID,_newUserHex,"address to blockchain.");
        }
    }
}

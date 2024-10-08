
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Encoding {
    function combineStrings() public pure returns(string memory) {
        return string(abi.encodePacked("Hi, Mom!", "miss you"));
    }

    function encodeNumber() public pure returns (bytes memory) {
        bytes memory number = abi.encode(1);
        return number;
    }

    function encodeString() public pure returns (bytes memory) {
        bytes memory stg = abi.encode("musty");
        return stg;
    }

    function encodestg() public pure returns (bytes memory) {
        bytes memory stg = abi.encodePacked("musty");
        return stg;
    }

    function decode() public pure returns (string memory) {
        string memory enc = abi.decode((encodeString()), (string));
        return  enc;
    }

    function multiEncode() public  pure returns(bytes memory) {
        bytes memory twoStrings = abi.encode("first string", "second string");
        return twoStrings;
    }

    function multiDecode() public  pure returns(string memory, string memory) {
        (string memory twoStrings, string memory thirdString) = abi.decode(multiEncode(), (string, string));
        return (twoStrings, thirdString);
    }

}

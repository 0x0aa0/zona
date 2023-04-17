// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Script.sol";
import {NCAParams} from "../src/interfaces/INeuralAutomataEngine.sol";
import {ZooOfNeuralAutomata} from "../src/ZooOfNeuralAutomata.sol";

import {Spaces} from "../src/sales/Spaces.sol";


contract Deploy is Script{

    address zona = 0xacbD6089ac5d2dE7f49B53269416DbaeA4da9f27;
    address me = 0x0aa0Bc25769C52e623D09A9764e079A221BeA2a1;
    
    //address zona = 0xAFDeB2cd4a2d2bd72e42e7F638846C680dF9574d;
    //address me = 0xDead8d41881c82b9fc393D812239F41f3C943a37;

    Spaces spaces;
    uint256 startTime = 1675447200;
    
    NCAParams spaceParams = NCAParams(
        "0",
        '"#2F003F"',
        '"#00214E"',
        '"#B6FF00"',
        "[[-0.348,-0.805,-0.792],[-0.663,0.957,0.267],[-0.139,-0.728,0.527]]",
        "return sin(x);",
        "return random(1);",
        ""
    );

    string spaceURI = '{"name":"Spaces","image":"ipfs://QmWNJb5Ce5F9XrjuxKspH9VzD46RFaWj3MTVrSEjH1dPd8","animation_url":';

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        spaces = new Spaces(me, zona, startTime);

        ZooOfNeuralAutomata(zona).newToken(
            4, 
            spaceParams, 
            address(spaces), 
            address(0), 
            spaceURI
        );
        
        ZooOfNeuralAutomata(zona).transferOwnership(me);
        
        vm.stopBroadcast();
    }

}
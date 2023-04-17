/* SPDX-License-Identifier: MIT
                                 :~!7!777!!~:.     .::::::.                                         
                               :!7?7?!77~?~777!. :~!~^~~!!~~^:.   .                                 
                              ~?!~77!!^!!7!!!?JY?Y?~^~~~!7!77!!^^^:                                 
                             ^J!!!~.     :!!!7?PPYJ!~^:.  ...:^^..                                  
                         :!7 ^Y!7^        :~77YPGP5Y7~~^:.:.                                        
                .::::::::7JY~!?^!:       :~!7Y5PBBGPPP5YJ??7!~^:.                                   
            .^~7?77?777???JJYYY7^      .^!?JJY5Y!JPPPGPPPP555J?77~:          .::^^::..              
          .~7777~7?!J~?~~7!7JJ5?^     ^~7JJJJ5Y.   .^!?YPGPP55YJYJ?!.    .~7??777777!!~^:           
         ^7???~77^!:~^7^7J~7!7YYY?^ ^!7????JY5^         :~JPGYJ5J???7~ ^7JJJ77!!~~!!!!!!!!:         
        ^J??7!~.       .^!77!~7JYPP7?JJJJJ?YP~             ~PJ?JY?7??!?YJYJ!~~~^^^::^^!!777^        
       .JJ?7!.           .!!77!JYY5GYJJJ7??JY:              55?JJ?7??J5YY5Y7~:.        .77!7        
       :YJ7!.             ~!7??YJJ5P5J??77?Y5J:           :?Y7JJ7!!!JPPJJYY7~^     :.   ~7!!        
       ^YJ7~             :^7??JYJJYBBJ!7?JY5PPPJJYYJJ??77JPPJJJ?!~~7P&G5YY5J!~.    ^777!!7!.        
        ?Y?^            :!7?YYY555PYJB5JYPGG555YYJYJJJY55PPPPPY???JPBYGPP555J!~.    .^~~^:          
        ^Y7~           :!7?YY55YPP?  J#GPG55YJJJJ???????JY5PPGP5J5GJ: !GGP555J7~.                   
     .~~!J5J^^:       .~!JJYY55PBY    YBP5JYJJJ?7?J???7??JYYYPGGP5~    7GPPPP5?!~:                  
      .:?J?77??J7:    :!?5YYJYPPB?   ~BB5YJ?JJJJYY?????J???JY5PBY       7PPPP5Y7!!:     ^~~~~^^:.   
       ~!77^^^!755~   :7JYYJ?JJYP5   ?#GPYYYYYYYJJJ?J7?J??JJY5GB5        YPPP5P5J7~: .7YY7!!~!!7~^. 
       ~~7.   :!YPP.  :7?JYYJ?JY5GJ. !BBGP55YYYYJYJJJJJJ?JJY5PBBP.       ^PP5PP5YJ?77GG57~^....!??~.
       .^!.   ~?Y5P.   ~??JJJJJJYYGPJJBBBGPP55YYJYYJYJJJJJYY5GBBJ         5PG55YJJ??75PY?~^     ^J~:
         . .^7JY5P?    .~???JJYYJYY5P#&BBBGGPP55555YYY5YY5PGGBBP.        ^P5YY5P5J?JJP5JJ7!:     ^!:
        .^~7JYY5P7       ^?GP5P555PPPPB#BBGGPPPPPPPPPPPPGGGGGGBP.       ^55JJ5JJYJJJ5#BPJJ?!^.    ..
     .:~7?YY5PPY^      .!J5555PPGPP5P55G##BGGPGGGGGGGGGGGGGGPGGGY^:...~7GYYJ5YJ??JJYBGBG5PY?!^.     
    :~7JYY555J~       ~YJJ?????JJYPGP555BBBBBGGGGGGGGGGGGGGGPPBP55YYYYPYY555Y??J??Y5! ~PGG55?!~^.   
  .^7JY5P55J^        ^5?77~^~!77JYYPBPGP#GYPBGGBGBBGPPPPP5PPPY5#GP5Y5Y555JYJJ7??JYY~   ^PGP5YY!~^.  
 .!7Y55J5PJ.         !5?!.   .!77JJYPBBB&GPGGGBBGBGP555PPGGPBP5BBP5555YYYYJ???JYY7:     7GPP5Y?!~~: 
.!!?5555YP:        . ^JJ:     !!!!JYG#BBGBGGY^:7GBGPY5PPBY:.!BGGGPPPPYY?YYYJJ5Y7:       :G5PYYJ!~~^ 
:!!JYY5555:       .~!!!~    .~!!~!?5B#G5PGGG57!?GBGPPPPGBP??YGP55P5PP55Y5PP55?:        .JG5P5YJ?!~^ 
^~~JJYY5J5J:              .:~~~^~7JP#PPPBPPGGBBBGGGPPPPPPGPP5Y5555555555PGGGG5?7!~^~~7YGGJYP5YJ?!!: 
:7~J5PY?7J55?~:..    .:^^^~~^!~~!?PBPY55GGGGGBBGGGBGGGGPPP55YJYPPP5YJJJYYYY5P5PP555555P5JJ5YY?7!~~. 
 ^!!?55YJJYYYYJJ???YYPJ!~~~!~~!!?PBG5Y55PGPPGGGPPPGBBGGGGPYYY5YYPPPYYJJ???J?J?J7?77?7J??7JYYJ!~~~.  
 .~7!?Y55YYYJYYJJJPPJ!~^~!~~!~!JGBPP55PPP5Y5PPP55PPPPGGG55YYYY5Y5P5Y?7J7?!J777!!!?JJJJJJJYYJ!~!^.   
   :^!7?YY55YYYYPP57~^!!~!^~?J5P5YY55PGG555PP5Y?JYPGGGGGPPY5Y?YPPP5YYYYYJ?JJ?JYYY5P555P5PPPP!:.     
     .^~!77?Y5GBB5~:!~~!^~7JPG5YY555GGGP5JYYYJJYYY5PPPGGGP5YY?JPGGGPPPYYYYY5PGGP5PY??JJ???J57       
        .~~~??YGY^!~^~^!7JPBGPPPGPPB##PY?JJJJJYYJY5PPPPPP5YJJ?JYYBGY~:::...^GP5YJY?!~^:^^~!7?~      
            :^~7?77~^!!7Y5PYJ?!~^:.7#GYJ???JJ?JJY5P5PPPP55JJ777?YPB!       ?P5555J!^.::. !?777      
               :~^:!!~7YPP!       :PB5YJJJJJJJYYYY?~!5G55YYYJ77?J5#7      ^P55YJ?!~.7??::YJ??!      
               ~7^7!!7Y55PG5!^:.^JBB5YPJJJ5YYYYY?^   ^Y55YY7??JJJYGG:    .YP555J!~:.J7!7JJJ?!.      
               :~^!7!?JY5YYPGPPPGGPYPP5YYJJJYJ?!.    .!J55J7Y?J7JJ5GGJ~^!JGP55Y7~^. .~!!!!~:        
                ~~~!!7JJYJYYYYJ5JJ?J5G55JJ?J?7^.       ~?YYJJ77777??5PPGP5Y5YYJ!~^                  
                .:^!!~7????JJY5555YY55YJ?J?!^.         .^!JYYYJJJ???JJJYYYJYJ7!~^.                  
                  :^^!!!7??JJYYJYYYJJJJ7!~~:             .^7?YYY555JYY5Y5YJJ7!~^:                   
                    .~~~!!!777777??7?7!~^.                 .~!7??JYYYYYYJ?77!!:.                    
                       .^^^^!~~~!~~~^:..                     .:~~~!!7777!~!~::                      
                            .. ..                                ..::::~:...                       
*/

pragma solidity 0.8.15;

import {IZooOfNeuralAutomata} from "../interfaces/IZooOfNeuralAutomata.sol";
import {Owned} from "../../lib/solmate/src/auth/Owned.sol";
import {IERC1155} from "../../lib/forge-std/src/interfaces/IERC1155.sol";
import {ERC1155TokenReceiver} from "../../lib/solmate/src/tokens/ERC1155.sol";
import {IOschuns} from "../interfaces/IOschuns.sol";

contract Oschuns is Owned, IOschuns, ERC1155TokenReceiver {

    uint256 constant id = 303;
    uint256 constant duration = 4 hours;

    address public immutable zona;
    uint256 public immutable startTime;

    uint256 public endTime;

    address public topBidder;
    uint256 public topBid = 0.0154095238095238 ether;

    bool public initalized;
    bool public settled;

    mapping (address => bool) public bidder;

    constructor(
        address _owner,
        address _zona, 
        uint256 _startTime
    ) Owned(_owner) {
        zona = _zona;
        startTime = _startTime;
        endTime = _startTime + duration;
    }
    
    function bid() external payable {
        require(startTime <= block.timestamp);
        require(endTime > block.timestamp);
        require(msg.value >= nextPrice());

        address oldBidder = topBidder;
        uint256 oldBid = topBid;

        topBidder = msg.sender;
        topBid = msg.value;

        bidder[msg.sender] = true;

        if(endTime - block.timestamp <= 300){
            endTime += 300;
        }
        
        if(!(oldBidder == address(0))) {
            (bool success,) = oldBidder.call{value: oldBid}("");
            if(!success){
                emit FailedRefund(oldBidder, oldBid);
            }
        }

        emit BidPlaced(topBidder, topBid);
    }

    function settle() external {
        require(endTime < block.timestamp);
        require(!settled);
        settled = true;

        IERC1155(zona).safeTransferFrom(address(this), topBidder, id, 3, "");
    }

    function initalize() external onlyOwner {
        require(!initalized);
        initalized = true;
        IZooOfNeuralAutomata(zona).mint(address(this), id, 3);
    }

    function withdraw() external onlyOwner {
        require(endTime < block.timestamp);
        payable(owner).transfer(address(this).balance);
    }
    
    function nextPrice() public view returns(uint256) {
        return topBid + (topBid/20);
    }
}
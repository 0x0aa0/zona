/* SPDX-License-Identifier: MIT
^^^^^::::::::::::::.:..:::..::.......................:::..::
^^^~~:::::::::::::::::.::............................:::..::
^^^^~:::::::::::......^^::::::........................::..::
^~~^~^:::::::...:^:^~!!^^^^^^^::.................:::::::::::
~!~~~~^^^::..:^~!J5YJ5PJ~^^^^^::::.............::::::::::::^
~!~~~~^^:....~Y5PPPGPGGP5?~^^^:^^::...........::::::::::::::
!!!!~^:...:..:!7?YPPPPPP57^^^^^:^^::.............:......:.::
J?!~:::^^~^:::^^^7?JY5P5~..::::::^^:.......................:
^^~~~~??!~~~^~7!7!~~7YPY:......::::........................:
^!!7!!?Y57~~~^!!J5Y?YPPY^.............................:...:~
~777JY5P5??JYJ!7JP5J?JY5?^::::::::::::::::::::::^^^~~^:..^!J
~~~~~7?Y55555555YJ7:..:^JJ7!~~~~~~~~~~~~~~!!!!777??7^..^~7YP
~??77?7!!77JYJYJ!:..::. .!??7???????7~^7???JJ??77!^:^~7Y5Y?!
:7YY55J7!!~7!^.....^^:....:^^~7JJJJ77!~!7JJ77!~^^^~~!7777^::
::^~~^^^:::^^:.:^^^::::~!!::~!!!!??7777!!!~^^^:~!!!!?7!~^~7J
::^~^^^^^!^^^^::.:^::^:!J?77!!?JYYJ7^:::::^~~~!!?YJ7~:^7JYYY
^~??7JJJJJ!~~^^^^^^!!!^:?55Y?777?JJYYJ?7???JJYY??!~^!7?JJYYY
~5PY5PPPJJYY5J~^^~:!JJ?7~~?5PYJ7!!!~!!!77!77?77!!?YYYJJ??JYY
?PPPPPPGPPGPPP7~7?!7!7JY5?~~!?JJJ???77!~^:::~7???7!~^^^^^^^^
*/

pragma solidity 0.8.15;

import {IZooOfNeuralAutomata} from "../interfaces/IZooOfNeuralAutomata.sol";
import {IOschuns} from "../interfaces/IOschuns.sol";
import {Owned} from "../../lib/solmate/src/auth/Owned.sol";

contract Wavvas is Owned {
    uint256 constant id = 2;
    uint256 constant price = 0.01618 ether;

    address public immutable zona;
    address public immutable oschun;
    uint256 public immutable startTime;

    constructor(
        address _owner,
        address _zona,
        address _oschun, 
        uint256 _startTime
    ) Owned(_owner) {
        zona = _zona;
        oschun = _oschun;
        startTime = _startTime;
    }

    function mint(uint256 amount) external payable {
        require(startTime <= block.timestamp || msg.sender == owner);
        uint256 _endTime = IOschuns(oschun).endTime();
        require(_endTime > block.timestamp);
        require(msg.value >= price * amount);

        IZooOfNeuralAutomata(zona).mint(msg.sender, id, amount);
    }

    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    function endTime() external view returns(uint256 _endTime){
        _endTime = IOschuns(oschun).endTime();
    }
}

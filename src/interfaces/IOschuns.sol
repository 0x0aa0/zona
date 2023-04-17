// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

interface IOschuns {
    event BidPlaced(address _from, uint256 _value);
    event FailedRefund(address _to, uint256 _value);
    
    function endTime() external view returns(uint256);

    function bidder(address) external returns(bool);
}
pragma solidity ^0.8.11;

import "forge-std/Test.sol";
import "../Ballot.sol";


contract BallotTest is Test
{
    Ballot ballot;
    function setUp() public{
        //setup a new ballot
        bytes32[] memory proposals = new bytes32[](3);
        proposals[0] = ("p1");
        proposals[1] = ("p2");
        proposals[2] = ("p3");
        ballot = new Ballot(proposals);
    }

    function testFailVoteAfterPeriod() public 
    {
        //go t+5 minutes
        vm.warp(block.timestamp + 6 minutes);
        //try to vote, it will revert.
        ballot.vote(0);
    }

    function testVoteBeforePeriod() public
    {
        //go t+2 minutes. we still have 3 minutes to vote.
        vm.warp(block.timestamp + 2 minutes);
        ballot.vote(0);
    }
}
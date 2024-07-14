// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/vrf/VRFConsumerBase.sol";

contract PlinkoGame is VRFConsumerBase {
    bytes32 internal keyHash;
    uint256 internal fee;
    uint256 public randomResult;

    // Event to emit the result
    event PlinkoResult(uint256 indexed result);

    constructor() 
        VRFConsumerBase(
            0x9DdfaCa8183c41ad55329BdeeD9F6A8d53168B1B, // VRF Coordinator
            0x779877A7B0D9E8603169DdbD7836e478b4624789 // LINK Token
        ) 
    {
        keyHash = 0x787d74caea10b2b357790d5b5247c2f63d1d91572a9846f780606e4d953677ae;
        fee = 0.1 * 10 ** 18; // 0.1 LINK (Varies by network)
    }

    // Function to request randomness
    function getRandomNumber() public returns (bytes32 requestId) {
        require(LINK.balanceOf(address(this)) >= fee, "Not enough LINK - fill contract with faucet");
        return requestRandomness(keyHash, fee);
    }

    // Callback function used by VRF Coordinator
    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        randomResult = randomness;
        emit PlinkoResult(randomResult);
        // Here, you can add the logic to use randomResult in your Plinko game
    }

    // Add your Plinko game logic here using the randomResult
    // For example, determining the winning slot based on randomResult
}
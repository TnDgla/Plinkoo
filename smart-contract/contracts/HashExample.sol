// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashExample {
    function getHash(bytes memory data) public pure returns (bytes32) {
        return sha256(data);
    }
}


// To provide an example of bytes data that can be passed to the `getHash` function in the [`HashExample`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22path%22%3A%22%2FUsers%2Fdevilla%2Fwork%2Fplinkoo%2Fsmart-contract%2Fcontracts%2FHashExample.sol%22%2C%22scheme%22%3A%22file%22%7D%2C%7B%22line%22%3A3%2C%22character%22%3A0%7D%5D "HashExample.sol") contract, you can use a hexadecimal representation of any string or data. In Solidity, bytes data is typically represented in hexadecimal format, prefixed with `0x`.

// For instance, if you want to hash the string "Hello, world!", you first need to convert it to its hexadecimal representation. The string "Hello, world!" in hexadecimal is `0x48656c6c6f2c20776f726c6421`. This can be passed as the `data` parameter to the `getHash` function.

// Here's how you might call `getHash` with this data in a Solidity environment (e.g., a test script or another contract):

// ```solidity
// bytes memory exampleData = hex"48656c6c6f2c20776f726c6421";
// bytes32 hash = hashExampleContract.getHash(exampleData);
// ```

// In this example, `hashExampleContract` is an instance of the `HashExample` contract, and `exampleData` is the bytes representation of "Hello, world!" in hexadecimal. The `getHash` function will then return the SHA-256 hash of this input.
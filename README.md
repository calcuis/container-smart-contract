This smart contract is written in Solidity. Let's break down its functionalities:

Inheritance: The contract Container inherits from the ERC721 standard contract. ERC721 is a standard interface for non-fungible tokens, commonly used for representing ownership of unique digital or physical items.

State Variables:
- `_owner`: Stores the address of the owner of the contract.
- `admin`: Stores the address of the administrator.
- `maxSupply`: Tracks the maximum number of pigs that can be created.
- `totalSupply`: Tracks the total number of pigs that have been minted.
- `isClosed`: Indicates whether the shop is closed or not.
- `pigs`: A mapping that stores information about each pig, identified by a unique ID.

Struct:
- `Pig`: Defines the structure of a pig, containing fields such as ID, name, cost, image, and ownership status.

Modifiers:
- `ownerOnly`: Restricts access to functions to only the contract owner.
- `adminOnly`: Restricts access to functions to only the administrator.
- `Constructor`: Sets the owner of the contract to the deployer's address.

Functions:
- `changeOwner`: Allows the current owner to transfer ownership to a new address.
- `assignAdmin`: Allows the owner to assign an administrator.
- `modifyCost`: Allows the owner to modify the cost of a pig.
- `redeem`: Allows the owner to withdraw funds from the contract.
- `closeShop`: Allows the owner to close or reopen the shop.
- `list`: Allows the administrator to list a new pig for sale.
- `editPig`: Allows the administrator to edit the details of a pig before it's purchased.
- `getBalance`: Returns the balance of the contract.
- `getPig`: Returns information about a specific pig.
- `modifyPig`: Allows the owner of a pig to modify its details.
- `mint`: Allows users to mint (purchase) a pig by paying its cost.
- `tokenURI`: Overrides the tokenURI function from ERC721 to generate metadata (JSON) for a pig, including its name and image.
- `Token URI`: The tokenURI function generates metadata for a pig in Base64-encoded JSON format. This metadata includes the pig's name and image.

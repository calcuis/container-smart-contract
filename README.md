This smart contract is written in Solidity.

State Variables:
- `owner`: Stores the address of the contract owner.
- `admin`: Stores the address of the administrator.
- `maxSupply`: Tracks the maximum number of pigs that can be created.
- `totalSupply`: Tracks the total number of pigs that have been minted.
- `isClosed`: Indicates whether the shop is closed or not.
- `pigs`: A mapping that stores info about each pig, identified by a unique id.

Struct:
- `Pig`: Defines the structure of a pig, containing fields such as id, name, cost, image, and ownership status.

Modifiers:
- `ownerOnly`: Restricts access to functions to only the contract owner.
- `adminOnly`: Restricts access to functions to only the administrator.
- `Constructor`: Sets the owner of the contract to the deployer's address (once only).

Functions:
- `changeOwner`: Allows the current owner to transfer ownership to a new address.
- `assignAdmin`: Allows the owner to assign an administrator.
- `modifyCost`: Allows the owner to modify the cost of a pig.
- `redeem`: Allows the owner to withdraw funds from the contract.
- `closeShop`: Allows the owner to close or reopen the shop.
- `list`: Allows the administrator to list a new pig for sale.
- `editPig`: Allows the administrator to edit the details of a pig before it's owned by someone else.
- `getBalance`: Returns the balance of the contract.
- `getPig`: Returns information about a specific pig.
- `modifyPig`: Allows the owner of a pig to modify its details.
- `mint`: Allows users to mint a pig by paying its cost.
- `tokenURI`: Overrides the tokenURI function from ERC721 to generate metadata (JSON) for a pig, including its name and image.

*this contract (backend) and the frontend code are for education/demonstration purpose(s); don't pay anything silly for mainnet; since buggie (for the whole evm) still; learn it with testnet(s) is recommended.

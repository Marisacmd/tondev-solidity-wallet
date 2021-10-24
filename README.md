# tondev-solidity-wallet
The very basic wallet functional to deploy within the Freeton test blockchain network

Use 
-tondev c r basicWallet
to test.

# Possible errors

>""Running...
Error: Account has insufficient balance for the requested operation. Send some value to account balance.
Possible reason: Account has insufficient balance for the requested operation. Send some value to account balance""

Use
-tondev c topup basicWallet.sol -v 10000000000000

# ToDo:

1. Enable better user transaction management via appkit-js, console or web-app

Example:

tondev c r basicWallet/
├─ address: dest/
├─ value: uint128/
├─ bounce: bool/
│  ├─ > Do you want to recieve funds back on address if transaction won't be successful?/
│  │  ├─ "No" set bounce: bool: false
│  │  ├─ "Yes" set bounce: bool: true
├─ flag: uint16/
│  ├─ Pay transfer fees separately from contract's balance?//
│  │  ├─ "No" set flag: uint16: 0
│  │  ├─ "Yes" set flag: uint16: 1

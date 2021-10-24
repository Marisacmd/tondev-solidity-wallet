# tondev-solidity-wallet
The very basic wallet functional to deploy within the Freeton test blockchain network

Use 
-tondev c r basicWallet
to test.

# Possible errors

>""Running...
>Error: Account has insufficient balance for the requested operation. Send some value to account balance.
>Possible reason: Account has insufficient balance for the requested operation. Send some value to account balance""

Use
```
-tondev c topup basicWallet.sol -v 10000000000000
```

# ToDo:

1. Enable better user transaction management via appkit-js, console or web-app

Example:

![Снимок экрана от 2021-10-24 20 56 36](https://user-images.githubusercontent.com/64412561/138602073-e693bd5e-2584-4b02-9364-cf8a1b2dbcda.png)


```act
syntax Int ::= "#MultiOwnerProvider.isPermitted" "[" Int "]" "[" Int "]" [function]
rule #MultiOwnerProvider.isPermitted[A][B] => #hashedLocation("Solidity", 0, A B)
```
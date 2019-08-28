# Say Something Damn it

```act
behaviour say of Speaker
interface say()

types

    Phrase : uint256

storage

    #Speaker.phrase |-> Phrase

iff

    VCallValue == 0

returns Phrase
```
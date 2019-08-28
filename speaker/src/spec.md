# Say Something Damn it

```act
behaviour say of Speaker
interface say()

types

    Phrase : bytes32

storage

    #Speaker.phrase |-> Phrase

iff

    VCallValue == 0

returns Phrase
```
# Now say something else
```act
behaviour setPhrase of Speaker
interface setPhrase(bytes32 NewPhrase)

types

    Phrase : bytes32

storage

    #Speaker.phrase |-> Phrase => NewPhrase

iff

    VCallValue == 0
```
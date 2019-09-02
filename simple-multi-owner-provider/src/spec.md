# Should set owner
```act
behaviour setOwner of MultiOwnerProvider
interface setOwner(address Who, address Owner)

types

    bool Permitted

storage

    isPermitted[Who][Owner] |-> Permitted => 1

iff

    Who == CALLER_ID
    Who =/= Owner
    Permitted == 0
    VCallValue == 0

```

# Should unset owner
```act
behaviour unsetOwner of MultiOwnerProvider
interface unsetOwner(address Who, address Owner)

types

    bool Permitted

storage

    isPermitted[Who][Owner] |-> Permitted => 0

iff

    Permitted == 1
    VCallValue == 0

if 
    Who == CALLER_ID
    Who =/= Owner
```

# Is Owner Permitted

```act
behaviour isOwner of MultiOwnerProvider
interface isOwner(address Who, address Owner)

types

    bool Permitted

storage

    isPermitted[Who][Owner] |-> Permitted

iff

    VCallValue == 0

returns Permitted

```
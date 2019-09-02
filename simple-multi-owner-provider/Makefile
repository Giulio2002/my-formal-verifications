clean:
	rm out -rf

build_contracts:
	rm ./dapp/out/MultiOwnerProvider.sol.json
	solc --combined-json=abi,bin,bin-runtime,srcmap,srcmap-runtime,ast ./dapp/src/MultiOwnerProvider.sol > ./dapp/out/MultiOwnerProvider.sol.json

build: clean build_contracts
	klab build
	killall java

run:
	klab prove --dump MultiOwnerProvider__exhaustiveness
	klab prove --dump MultiOwnerProvider_setOwner_pass_rough
	klab prove --dump MultiOwnerProvider_setOwner_fail_rough
	klab prove --dump MultiOwnerProvider_unsetOwner_pass_rough
	klab prove --dump MultiOwnerProvider_unsetOwner_fail_rough
	klab prove --dump MultiOwnerProvider_unsetOwner_fail_rough
	klab prove --dump MultiOwnerProvider_isOwner_pass_rough
	klab prove --dump MultiOwnerProvider_isOwner_fail_rough
	killall java
clean:
	rm out -rf

build_contracts:
	solc --combined-json=abi,bin,bin-runtime,srcmap,srcmap-runtime,ast ./dapp/src/speaker.sol > ./dapp/out/speaker.sol.json

build: clean build_contracts
	klab build

run:
	klab prove --dump Speaker__exhaustiveness
	klab prove --dump Speaker_say_pass_rough
	klab prove --dump Speaker_say_fail_rough
	klab prove --dump Speaker_setPhrase_pass_rough
	klab prove --dump Speaker_setPhrase_fail_rough
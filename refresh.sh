#!/bin/bash

set +e

forge script script/Counter.s.sol:CounterScript --rpc-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast --slow

cast send -r http://localhost:8545 0xe1cb04a0fa36ddd16a06ea828007e35e1a3cbc37 --value 1ether --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

(cd ../safe-singleton-factory && npm run submit)

# This script creates the necessary ERC contracts and then sends some to given wallets.
# You probably want to replace these addresses with wallets that you control.
# ERC addresses might also differ, so double check.
ERC1=0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
WALLET1=0xdbc98143efad39e8998fc8faf1c3eda557cb5559
WALLET2=0x3a6ebf766ba65afde67550b8f3b67bac536c8395
ERC2=0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0

cast send $ERC1 "mint(address,uint256)" $WALLET1 1500000000000000000   --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --gas-limit 10000000
cast send $ERC2 "mint(address,uint256)" $WALLET1 1500000000000000000   --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --gas-limit 10000000
cast send $WALLET1 --value 1ether --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d 

cast send $ERC1 "mint(address,uint256)" $WALLET2 1500000000000000000   --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --gas-limit 10000000
cast send $ERC2 "mint(address,uint256)" $WALLET2 1500000000000000000   --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --gas-limit 10000000
cast send $WALLET2 --value 1ether --private-key  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d 
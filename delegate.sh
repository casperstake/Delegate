echo -e "Your Public Key: "
read V_DELEGATOR

echo -e "\nExample: 011c7c2614ad7c7e9a25feafc549dbecf7b52c4a6221dcb37857e8f8b5e4d27794 \n Validator Address: "
read V_VALIDATOR

echo -e "Amount of CSPR: "
read V_AMOUNT

echo -e "\nYour Public Key: $V_DELEGATOR"
echo -e "Validator Address: $V_VALIDATOR"
echo -e "Amount of CSPR: $V_AMOUNT"

echo -e "\nAll the info above is correct [YES/NO]:\n"
read V_IS_CONFIRMED

V_SUFFIX="000000000"
V_FINAL_AMOUNT="$V_AMOUNT$V_SUFFIX"

if [[ $V_IS_CONFIRMED == "YES" ]]
then
  casper-client put-deploy --chain-name casper --node-address http://185.198.72.171:7777 -k $HOME/secret_key.pem --session-path "$HOME/casper-node/target/wasm32-unknown-unknown/release/delegate.wasm" --payment-amount 3000000000  --session-arg "validator:public_key='$V_VALIDATOR'" --session-arg="amount:u512='$V_FINAL_AMOUNT'" --session-arg "delegator:public_key='$V_DELEGATOR'"
else
  echo "Your transaction has been cancelled. If you want to start over, run the script again."
fi

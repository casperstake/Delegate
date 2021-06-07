# Delegate

When you run the code below, it will ask you to create a password.
Create a password of at least 6 characters.
### Attention please! 
While creating the password, the keys you press on the keyboard will not appear on the screen for security reasons.
```
sudo adduser staking
```


Let's continue:
```
sudo visudo
```

After running the code above, find the following line on the screen
``root ALL=(ALL:ALL) ALL``
you will see. Please enter the code below just below this line.

```
staking ALL=(ALL:ALL) ALL
```

Let's continue:
```
sudo su - staking

sudo -s

git clone https://github.com/casperstake/Delegate.git

cd Delegate

chmod +x install.sh

./install.sh

```

After you run ``./install.sh``, you will see 2 different questions.
Please press ``ENTER`` for these questions.

Let's continue:
```
cd ..

sudo nano secret_key.pem
```
Open the secret_key.pem file of your wallet that you created in the CasperLabs Signer application with a notepad. Then copy and paste everything in it here. Then please follow these 3 steps. (If you could not successfully, please watch this video: xxxxx)
```
CTRL + O

ENTER

CTRL + X
```

Let's continue:
```
cp -r secret_key.pem /root

cd Delegate

chmod +x delegate.sh

./delegate.sh
```

After you run ``./delegate.sh``, you will see 3 different questions.
1) Your Public Key: ENTER_YOUR_PUBLIC_KEY     
#you will see your public key address on the top-right of the screen in CSPR.live

2) Validator Address: ENTER_VALIDATOR_ADDRESS     
#if you delegate to me, please write ``011c7c2614ad7c7e9a25feafc549dbecf7b52c4a6221dcb37857e8f8b5e4d27794`` 

3) Amount of CSPR: AMOUNT_ONLY_INTEGER             
#ATTENTION! If you have 100 CSPR in your wallet in CSPR.live, please write max 97 CSPR. because you have to pay some fee to delegate (MAX is 3 CSPR)!
So, you must enter 3 less than your total balance!

After answering these questions correctly
type ``YES`` in capital letters and press ``ENTER``

If you do these steps correctly, you will get the answer as follows.
```
{
  "id": ..............,
  "jsonrpc": "2.0",
  "result": {
    "api_version": "1.2.0",
    "deploy_hash": "......................................."
  }
}

```

That is it!

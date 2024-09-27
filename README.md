# Tx.Origin phishing lab
In this labs you will learn how to exploit a contract that is using `tx.origin` to authenticate the caller.

## Conditions to satisfy

- the `hacker` is different from the `owner` of the contract.
- the `hacker` has 0 balance before the attack.
- the `hacker` has a balance of 100 ETH after the attack.

## Run the lab

Run the tests with the following command:

```shell
$ forge test -vvv
```

## Solution

If you are stuck, you can check the solution using the following commands:

```shell
git checkout solution
git pull
```

> make sure that your previous changes are stashed or committed before running the above commands. You can run `git stash` to stash your changes, or `git commit -am "my changes"` to commit your changes.


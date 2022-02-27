from brownie import TregonaiToken, config, network
from web3 import Web3

from scripts.utility.helper import get_account

initial_supply = Web3.toWei(1000, "ether")


def main():
    account = get_account()
    tregonai_token = TregonaiToken.deploy(
        initial_supply,
        {"from": account},
        publish_source=config["networks"][network.show_active()]["verify"]
    )
    print(tregonai_token.name())

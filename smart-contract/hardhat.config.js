require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: "https://goerli.infura.io/v3/99e321df6b7641e695169ee4d5b10f00",
      accounts: [
        "f296410e2c111fb9727fc3b6f566a77d74d19568360c26a9293e1b041de4bf30",
      ],
    },
  },
};

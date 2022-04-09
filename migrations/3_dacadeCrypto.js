var DacadeCrypto = artifacts.require("./DacadeCrypto.sol");

module.exports = function (deployer) {
    deployer.deploy(DacadeCrypto);
};

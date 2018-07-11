let AlphaRegistry = artifacts.require("AlphaRegistry");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(AlphaRegistry)
    	.then(() => AlphaRegistry.deployed());
};

var MyContract = artifacts.require("MyNFT");
var MyContract1 = artifacts.require("MyToken");
module.exports = function(deployer) {
  // 部署步骤
  deployer.deploy(MyContract);
  deployer.deploy(MyContract1);
};

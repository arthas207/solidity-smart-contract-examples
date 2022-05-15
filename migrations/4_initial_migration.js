var MyContract = artifacts.require("MyNFT");
module.exports = function(deployer) {
  // 部署步骤
  deployer.deploy(MyContract);
};

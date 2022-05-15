var MyContract = artifacts.require("MyToken");
module.exports = function(deployer) {
  // 部署步骤
  deployer.deploy(MyContract, "my token","my symbol");
};

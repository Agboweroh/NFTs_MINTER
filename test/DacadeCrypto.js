const DacadeCrypto = artifacts.require("./DacadeCrypto.sol");

contract("DacadeCrypto", accounts => {
  let contract;
  before(async () => {
    contract = await DacadeCrypto.deployed();
  })
  it("...should get deployed .", async () => {
    assert.notEqual(contract, "");
  });
  it("...get minted and added", async () => {
    const result = await contract.mint("Jakes");
    let dacade = await contract.dacaders(0);
    assert(dacade, "Jakes");
  })
});

const instance = artifacts.require('AdAuction')

contract("AdvertisementAuction", (accounts) => {

 let contractInstance

 beforeEach(async () => {
     contractInstance = await instance.new()
 })

 it('reset the ad and its ownership', async () => {
     const result = await contractInstance.makeAd({ from: accounts[1], value: 1 })
     assert.equal(result.logs[0].args.owner , accounts[1])
     assert.equal(result.logs[0].args.amount, 1)
 })

})
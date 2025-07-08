const hre = require("hardhat");

async function main() {
  const FlashLoanArb = await hre.ethers.getContractFactory("FlashLoanArb");
  const contract = await FlashLoanArb.deploy("0x...POOL_ADDRESS_PROVIDER"); // ganti sesuai network Aave

  await contract.deployed();
  console.log("FlashLoanArb deployed to:", contract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

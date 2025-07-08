const { ethers } = require("ethers");
const provider = new ethers.providers.JsonRpcProvider("https://sepolia.infura.io/v3/YOUR_INFURA_ID");

async function getPrice(tokenAddress) {
  // Mock function: ganti dengan panggil contract DEX nyata
  return Math.random() * 1000;
}

async function scanArbitrage() {
  const tokenA = "0xTokenAAddress";
  const tokenB = "0xTokenBAddress";

  const priceA = await getPrice(tokenA);
  const priceB = await getPrice(tokenB);

  console.log(`Price TokenA: ${priceA}, Price TokenB: ${priceB}`);

  if (priceB > priceA * 1.01) {
    console.log("Peluang arbitrase ditemukan!");
  } else {
    console.log("Tidak ada peluang arbitrase.");
  }
}

setInterval(scanArbitrage, 15000);

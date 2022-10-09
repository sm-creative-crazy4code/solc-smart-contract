// we encrypt our private key and store that locally  so that our project is more secure
const ethers = require("ethers");
const fs= require("fs-extra");
require("dotenv").config();

// wwe are making this programme just to get ur encrypter json key
// once we have done so we can now change the way weare accessing the encrypted json key 
// now we will be accessing our json key in a different format.


async function main(){
  
// ethers.encrypt returns a encryted json key that we can store locally and only decrypt with a password
  const wallet = new ethers.Wallet(process.env.PRIVATE_KEY);
  const encryptedKey= await wallet.encrypt(
    process.env.PRIVATE_KEY_PASSWORD,
    process.env.PRIVATE_KEY
  )
  console.log(encryptedKey);
  fs.writeFileSync("./encryptef.json",encryptedKey)


}

main().then(() => process.exit(0)).catch((error) => {
    console.log(error);
    process.exit(1);
})

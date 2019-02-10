const wdio = require("webdriverio");

const opts = {
    port: 4723,
    capabilities: {
      platformName: "Android",
      platformVersion: "8.1",
      deviceName: "Pixel_2_API_27",
      app: "/home/afonsobarrenha/Documents/projects/pocs/implementation/AndroidApplication/app/build/outputs/apk/debug/app-debug.apk",
      automationName: "UiAutomator2"
    }
  };
  
const client = wdio.remote(opts);

async function main(){

    const elementId = await client.findElement("accessibility id","TextField1");    
    client.elementSendKeys(elementId.ELEMENT, "Hello World!");
    const elementValue = await client.findElement("accessibility id","TextField1");
    await client.getElementAttribute(elementValue.ELEMENT,"value").then((attr) => {
        assert.equal(attr,"Hello World!");
    });
}

console.log('init');
main();
console.log('end');
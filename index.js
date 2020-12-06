var Mouse = require("node-mouse");

var execSync = require('child_process').execSync;

var m = new Mouse();

m.on("click", function (event) {
    var user = execSync("scrot $HOME/Pictures/Screenshots/%b-%d::%H-%M-%S.png");
});
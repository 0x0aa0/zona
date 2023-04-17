// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {Test, console2} from "forge-std/Test.sol";
import {NeuralAutomataEngine, NCAParams} from "../src/NeuralAutomataEngine.sol";
import {ZooOfNeuralAutomata} from "../src/ZooOfNeuralAutomata.sol";
import {Conways} from "../src/sales/Conways.sol";
import {Quaqs} from "../src/sales/Quaqs.sol";
import {Base64} from "../src/utils/Base64.sol";
import {Oschuns} from "../src/sales/Oschuns.sol";

contract NCATest is Test {

    NeuralAutomataEngine engine;
    ZooOfNeuralAutomata zona;
    Conways conways;
    Quaqs quaqs;

    address ETHFS_MAINNET = 0x9746fD0A77829E12F8A9DBe70D7a322412325B91;
    address ETHFS_TESTNET = 0x5E348d0975A920E9611F8140f84458998A53af94;

    string baseScript = "let n = 100;let board;let next;let state = 0;let paused = 0;function setup() {board = new Array(n);for (let i = 0; i < n; i++) {board[i] = new Array(n);}next = new Array(n);for (i = 0; i < n; i++) {next[i] = new Array(n);}frameRate(20);createCanvas(500, 500);initalize();}function draw() {background(bg);generate();for (let i = 0; i < n; i++) {for (let j = 0; j < n; j++) {if(board[i][j] == 0){fill(bg);stroke(bg);} else {let c = lerpColor(color(fg1), color(fg2), board[i][j]);fill(c);stroke(c);}rect(i * 5, j * 5, 5, 5);}}}function initalize() {randomSeed(seed);for (let i = 0; i < n; i++) {for (let j = 0; j < n; j++) {board[i][j] = rand();next[i][j] = 0;}}}function mouseDragged() {noLoop();if(state == 1){board[floor(mouseX / 5)][floor(mouseY / 5)] = 1;fill(fg2);stroke(bg);rect(floor(mouseX / 5) * 5, floor(mouseY / 5) * 5, 5, 5);}}function mouseReleased() {if(!paused){loop();}}function mousePressed() {if(state == 0){seed++;initalize();}}function keyPressed() {if (keyCode === 32) {if(state == 1){state = 0;initalize();loop();paused = 0;} else {state = 1;for (let i = 0; i < n; i++) {for (let j = 0; j < n; j++) {board[i][j] = 0;}}loop();paused = 0;}} else if (keyCode == 90) {if(paused){loop();} else {noLoop();}paused = !paused;}}function generate() {for (let i = 0; i < n; i++) {for (let j = 0; j < n; j++) {next[i][j] = convolution(i, j);}}let temp = board;board = next;next = temp;}function convolution(x, y) {let sum = 0;for (let i = -1; i <= 1; i++) {for (let j = -1; j <= 1; j++) {sum += board[wrap(x+i)][wrap(y+j)] * matrix[i+1][j+1];}}sum = activation(sum);if(sum > 1){return 1;} else if (sum < 0) {return 0;} else {return sum;}}function wrap(x) {if(x == n){return 0;} else if (x == -1){return n-1;} else {return x;}}";

    string contractURI = contractURIHelper();

    string conwayBaseURI = "{\"name\":\"Conways\",\"image\":\"ipfs://Qmc7qUvuiTQ93eJvUAvGMhLqARPreUjuYU3ihFRJwjATjD\",\"animation_url\":";

    string quaqBaseURI = "{\"name\":\"Quaqs\",\"image\":\"ipfs://QmSBEHymoPb4uh7iVvmVsLCTY9qGhVc3Nn8jsLg4QtQ1bY\",\"animation_url\":";

    NCAParams conwayParams = NCAParams(
        "0",
        "'#000'",
        "'#000'",
        "'#FFF'",
        "[[1,1,1],[1,9,1],[1,1,1]]",
        "if (x == 3 || x == 11 || x == 12){return 1;}return 0;",
        "return floor(random(2));",
        ""
    );

    NCAParams quaqParams = NCAParams(
        "1",
        "'#FFF'",
        "'#FFF'",
        "'#53E353'",
        "[[0.286,0.542,-0.052],[-0.354,-0.877,-0.073],[-0.957,-0.217,-0.347]]",
        "return -1/pow(2, (pow(x, 2)))+1;",
        "return random(1);",
        ""
    );

    uint256 startTime = 0;

    function setUp() public {
        engine = new NeuralAutomataEngine(ETHFS_TESTNET, baseScript);
        zona = new ZooOfNeuralAutomata(address(engine), contractURI);

        conways = new Conways(address(this), address(zona), startTime);
        quaqs = new Quaqs(address(this), address(zona), startTime);

        zona.newToken(0, conwayParams, address(conways), address(0), conwayBaseURI);
        zona.newToken(1, quaqParams, address(quaqs), address(0), quaqBaseURI);
    }

    function testOschuns() public {

        Oschuns oschuns = new Oschuns(address(this), address(zona), block.timestamp);
        zona.newToken(303, conwayParams, address(oschuns), address(0), conwayBaseURI);
        oschuns.initalize();
    }

    function testURI() public {
        //console2.log(zona.uri(0));
        //console2.log(zona.uri(1));
    }

    function contractURIHelper() public pure returns (string memory){
        return string.concat(
            "data:application/json;base64,",
            Base64.encode(
                abi.encodePacked(
                    "{\"name\":\"Zoo of Neural Automata\",\"description\":\"Dynamically generated and fully on-chain neural cellular automata programs from quaq.eth\",\"image\":\"https://gateway.pinata.cloud/ipfs/QmPGzGsENV8Q1M1gmrt3WiKLhtaoJDJHUSFWmqGRrRJktL\",\"external_link\":\"https://zona.wtf\"}"
                )
            )
        );
    }
}

/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { utils, Contract, ContractFactory } from "ethers";
const _abi = [
    {
        inputs: [
            {
                internalType: "contract IContentStore",
                name: "contentStore",
                type: "address",
            },
            {
                internalType: "bytes32",
                name: "checksum",
                type: "bytes32",
            },
        ],
        name: "getContent",
        outputs: [
            {
                internalType: "bytes",
                name: "content",
                type: "bytes",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "contract IFileStore",
                name: "fileStore",
                type: "address",
            },
            {
                internalType: "string",
                name: "filename",
                type: "string",
            },
        ],
        name: "readFile",
        outputs: [
            {
                internalType: "string",
                name: "contents",
                type: "string",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
];
const _bytecode = "0x608060405234801561001057600080fd5b5061050a806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c8063251e406a1461003b57806335fae7a614610064575b600080fd5b61004e61004936600461022e565b610077565b60405161005b91906102a7565b60405180910390f35b61004e61007236600461032a565b6100f3565b604051632320ee7360e11b8152600481018290526060906100ec906001600160a01b03851690634641dce690602401602060405180830381865afa1580156100c3573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906100e791906103d2565b61016e565b9392505050565b60606100ec836001600160a01b031663e0876aa8846040518263ffffffff1660e01b815260040161012491906102a7565b600060405180830381865afa158015610141573d6000803e3d6000fd5b505050506040513d6000823e601f3d908101601f1916820160405261016991908101906103ef565b6101af565b6060813b80610185576311052bb46000526004601cfd5b600181039050604051915061ffe0603f820116820160405280825280600160208401853c50919050565b60208082015180516040519260008080805b858110156101f757602081026020018701519250602083015191506001823b039350836001868a01843c938301936001016101c1565b50505050602081038452601f19601f8201168401604052505050919050565b6001600160a01b038116811461022b57600080fd5b50565b6000806040838503121561024157600080fd5b823561024c81610216565b946020939093013593505050565b6000815180845260005b8181101561028057602081850181015186830182015201610264565b81811115610292576000602083870101525b50601f01601f19169290920160200192915050565b6020815260006100ec602083018461025a565b634e487b7160e01b600052604160045260246000fd5b6040805190810167ffffffffffffffff811182821017156102f3576102f36102ba565b60405290565b604051601f8201601f1916810167ffffffffffffffff81118282101715610322576103226102ba565b604052919050565b6000806040838503121561033d57600080fd5b823561034881610216565b915060208381013567ffffffffffffffff8082111561036657600080fd5b818601915086601f83011261037a57600080fd5b81358181111561038c5761038c6102ba565b61039e601f8201601f191685016102f9565b915080825287848285010111156103b457600080fd5b80848401858401376000848284010152508093505050509250929050565b6000602082840312156103e457600080fd5b81516100ec81610216565b6000602080838503121561040257600080fd5b825167ffffffffffffffff8082111561041a57600080fd5b8185019150604080838803121561043057600080fd5b6104386102d0565b83518152848401518381111561044d57600080fd5b80850194505087601f85011261046257600080fd5b835183811115610474576104746102ba565b610482868260051b016102f9565b818152868101945060069190911b8501860190898211156104a257600080fd5b948601945b818610156104eb5783868b0312156104bf5760008081fd5b6104c76102d0565b86518152878701516104d881610216565b81890152855294830194938601936104a7565b9582019590955297965050505050505056fea164736f6c634300080d000a";
const isSuperArgs = (xs) => xs.length > 1;
export class FileStoreFrontend__factory extends ContractFactory {
    constructor(...args) {
        if (isSuperArgs(args)) {
            super(...args);
        }
        else {
            super(_abi, _bytecode, args[0]);
        }
    }
    deploy(overrides) {
        return super.deploy(overrides || {});
    }
    getDeployTransaction(overrides) {
        return super.getDeployTransaction(overrides || {});
    }
    attach(address) {
        return super.attach(address);
    }
    connect(signer) {
        return super.connect(signer);
    }
    static createInterface() {
        return new utils.Interface(_abi);
    }
    static connect(address, signerOrProvider) {
        return new Contract(address, _abi, signerOrProvider);
    }
}
FileStoreFrontend__factory.bytecode = _bytecode;
FileStoreFrontend__factory.abi = _abi;
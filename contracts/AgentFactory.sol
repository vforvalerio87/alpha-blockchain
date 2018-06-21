pragma solidity ^0.4.21;

import "./Agent.sol";

contract AgentFactory {
    address public token;
    address[] public createdAgents;

    event AgentCreated(address agent);

    function AgentFactory(address _token) public {
        token = _token;
    }

    function createAgent(uint price, string endpoint, string metadataUri) public returns (address) {
        address agent = new Agent(token, price, endpoint, metadataUri);
        createdAgents.push(agent);
        emit AgentCreated(agent);
        return agent;
    }
}

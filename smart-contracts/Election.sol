pragma solidity 0.6.4;

contract Election {
  //Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  //Store accounts that have already voted
  mapping(address => bool) public voters;
  //Store Candidate "POST"

  //get all candidates
  mapping(uint => Candidate) public candidates;

  //store vote counts
  uint public candidatesCount;

  //event on vote
  event votedEvent (
    uint indexed_candidateId
  );

  constructor () public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate (strin _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  function vote (uint _candidateId) public {
    //ensure they have not already voted
    require(!voters[msg.sender]);

    //require a valid candidate(on the list), TODO give them a hashed ID
    require(_candidateId > 0 && _candidateId <= candidatesCount);

    //record the voting
    voters[msg.sender] = true;

    //update vote count for candidate
    candidates[_candidateId].voteCount++;

    //trigger the voted event to programmatically update the blockchain
    emit votedEvent(_candidateId);
  }
}
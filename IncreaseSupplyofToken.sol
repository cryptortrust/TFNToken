//Supply may be increased at any time and by any amount by minting new tokens and transferring them to a desired address

function increaseSupply(uint value, address to) public returns (bool) {
  totalSupply = safeAdd(totalSupply, value);
  balances[for] = safeAdd(balances[to], value);
  Transfer(0, to, value);
  return true;
}
//
//
Where safeAdd checks for numerical overflow, e.g.:

function safeAdd(uint a, uint b) internal returns (uint) {
  if (a + b < a) { throw; }
  return a + b;
}

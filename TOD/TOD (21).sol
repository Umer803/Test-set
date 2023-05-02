contract User Wallet(
address publi c owner;
con structor ( ) payable {
msg. sender ;
owner =
fun ction sent (address payable des tination,
if (tx.origin owner) {
revert ;
destination . transfer (amount) ;
uint amount)
public(
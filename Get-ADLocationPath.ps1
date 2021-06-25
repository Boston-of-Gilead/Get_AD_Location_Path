#Get the OU of a worker, and their manager

function Get-ADLocationPath {
    param (
        $FindThisGuy
    )
    $UserObj = Get-ADUser $FindThisGuy -Properties CN
    $CN = $UserObj.CN
    $DN = $UserObj.DistinguishedName
    $DN.Replace("CN=$CN,","")
}

$worker = Get-ADLocationPath <user>
$bosspath = Get-ADLocationPath $Manager

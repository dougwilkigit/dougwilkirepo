function get-firstrepeatcharacter {
    [CmdletBinding()]
    param (
      [string]$teststring
    )
 
   $a = [ordered]@{}
 
   $teststring.ToLower().ToCharArray() |
    ForEach-Object {
      if ($a.$psitem) {
        $a.$psitem += 1
      }
      else {
        $a += @{$psitem = 1}
      }
 
   }
 
   $a.GetEnumerator() | Where-Object Value -eq 1 | Select-Object -First 1
 
  
 }
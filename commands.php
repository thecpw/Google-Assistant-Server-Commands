<?php
  $entityBody = "";
  if($_SERVER['REQUEST_METHOD'] == "POST")
  {
    $entityBody = file_get_contents('php://input');
    if ($entityBody == "SECURE PASS"){
      shell_exec("sudo /bin/bash /root/scripts/commands/reboot.sh");  
    } 
    elseif ($entityBody == "SECURE PASS"){
      shell_exec("sudo /bin/bash /root/scripts/commands/wake-pc.sh");  
    } 
  }
?>
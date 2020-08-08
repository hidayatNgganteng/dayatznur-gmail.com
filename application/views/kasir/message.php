<!-- message -->
<div class="message">
  <?php
    $today = date('l');

    if ($today == 'Monday') {
      echo "<h3 class='textMessage'>Jangan lupa cek semua saldo ya! cocokan dengan saldo fisik.</h3>";
    } else if ($today == 'Tuesday') {
      echo "<h3 class='textMessage'>Jangan lupa cek expired voucher & perdana SMARTFREN yaaaaa!!!!!</h3>";
    } else if ($today == 'Wednesday') {
      echo "<h3 class='textMessage'>Jangan lupa cek expired voucher & perdana (XL + NDOSAT) yaaaaa!!!!!</h3>";
    } else if ($today == 'Thursday') {
      echo "<h3 class='textMessage'>Jangan lupa cek expired voucher & perdana TELKOMSEL yaaaaa!!!!!</h3>";
    } else if ($today == 'Friday') {
      echo "<h3 class='textMessage'>Jangan lupa cek expired voucher & perdana TRI yaaaaa!!!!!</h3>";
    } else if ($today == 'Saturday') {
      echo "<h3 class='textMessage'>Jangan lupa cek expired voucher & perdana AXIS yaaaaa!!!!!</h3>";
    } else {
      echo "<h3 class='textMessage'>Lah bukan nya libur bro!!!!!</h3>";
    }
  ?>
</div>
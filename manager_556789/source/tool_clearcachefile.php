

<div class="wraper-content">

  <div style="max-height:500px; overflow:auto">

<?php 

defined( '_VALID_NVB' ) or die( 'Direct Access to this location is not allowed.' );


$ketqua = clearCloudflareCache();

//var_dump($ketqua);

echo "<hr>Đã xóa xong rồi nhé!";


function clearCloudflareCache() {
    $zoneId = '';//zoneId cua site
    $apiKey = '70004f2f6d0da1d7c5b214153e59568cc945e';
    $email = 'minhns@vinalink.vn';

    $url = "https://api.cloudflare.com/client/v4/zones/{$zoneId}/purge_cache";
    $data = ["purge_everything" => true];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "X-Auth-Email: $email",
        "X-Auth-Key: $apiKey",
        "Content-Type: application/json"
    ]);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));

    $response = curl_exec($ch);
    curl_close($ch);

    return json_decode($response, true);
}



?>

  </div>

</div>


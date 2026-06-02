<?php

defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');

/* ------------------------------------------------------------------------- */

// text_tidy:
// Takes raw text from the DB and makes it all nice and pretty - which also
// parses un-HTML'd characters. Use this with caution!

/* ------------------------------------------------------------------------- */



function text_tidy($txt = "") {



    $trans = get_html_translation_table(HTML_ENTITIES);

    $trans = array_flip($trans);



    $txt = strtr($txt, $trans);



    $txt = preg_replace("/\s{2}/", "&nbsp; ", $txt);

    $txt = preg_replace("/\r/", "\n", $txt);

    $txt = preg_replace("/\t/", "&nbsp;&nbsp;", $txt);

    //$txt = preg_replace( "/\\n/"   , "&#92;n"       , $txt );



    return $txt;
}

/*

  Kiem tra dia chi email nhap vao co hop le khong va xoa nhung ki tu " " trong dia chi email

  Input: string (email address nhap vao)

  Output: Hop le: tra ve email address

  Khong hop le: False

 */

function clean_email($email = "") {



    $email = trim($email);



    $email = str_replace(" ", "", $email);



    $email = preg_replace("#[\;\#\n\r\*\'\"<>&\%\!\(\)\{\}\[\]\?\\/\s]#", "", $email);



    if (preg_match("/^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4}|[0-9]{1,4})(\]?)$/", $email)) {

        return $email;
    } else {

        return FALSE;
    }
}

/* ------------------------------------------------------------------------- */

// Key Cleaner - ensures no funny business with form elements

/* ------------------------------------------------------------------------- */



function clean_key($key) {



    if ($key == "") {

        return "";
    }

    $key = preg_replace("/\.\./", "", $key);

    $key = preg_replace("/\_\_(.+?)\_\_/", "", $key);

    $key = preg_replace("/^([\w\.\-\_]+)$/", "$1", $key);

    return $key;
}

function clean_value($val) {
    if ($val == "") {
        return "";
    }



    $val = str_replace("&#032;", " ", $val);
    $val = str_replace(chr(0xCA), "", $val);  //Remove sneaky spaces

    $val = str_replace("'", "&#39;", $val); // IMPORTANT: It helps to increase sql query safety.
    // Ensure unicode chars are OK
    $val = preg_replace("/&amp;#([0-9]+);/s", "&#\\1;", $val);
    // Strip slashes if not already done so.

    if (get_magic_quotes_gpc()) {
        $val = stripslashes($val);
    }

    $val = htmlspecialchars($val);
    // Swop user inputted backslashes

    return $val;
}

/* * **************************************************
  // compile post
  // ------------------
  // Compiles all the incoming information into an array
  // which is returned to the accessor
  Input:	Input Name : Ten cua input,texarea,...
  Max of Post: do dai lon nhat cua xau (default = 2140000 bytes)
  VD: compile_post("post",1024)
  Output: Hop le: tra lai xau
  Khong hop le: return 0

 * ************************************************** */

function compile_post($input_name, $max_post_length = 2140000) {
    global $_REQUEST, $_POST;
    //----------------------------------------------------------------
    // Do we have a valid post?
    //----------------------------------------------------------------
    if (strlen(trim($_POST[$input_name])) < 1) {
        return "";
    }
    /*
      if (strlen( $HTTP_POST_VARS[$input_name] ) > ($max_post_length*1024))
      {
      echo "The Post's too long !";
      return 0;
      }
     */

    $text = $_POST[$input_name];
    $text = str_replace("\n", "<br>", $text);
    $text = clean_value($text);
    return $text;
}




//Dùng cho đầu ra
function e($str) {
    return htmlspecialchars($str, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
}




//Sử dụng thư viện ngoài


function clean_val_purify($value = '') {
    global $purifier;

	$value = $purifier->purify($value);

    return $value;
}




// làm sạch dữ liệu từ form Liên hệ (1 hàm duy nhất - 05/2026)
function clean_input($input_name){

	if (strlen(trim($_POST[$input_name])) < 1) {
        return "";
    }

	$value = $_POST[$input_name];

    // ép kiểu chuỗi
    $value = (string)$value;

    // trim
    $value = trim($value);

    // bỏ null byte
    $value = str_replace("\0",'',$value);

    // decode html entity trước
    $value = html_entity_decode(
        $value,
        ENT_QUOTES | ENT_HTML5,
        'UTF-8'
    );

    // bỏ HTML tag
    $value = strip_tags($value);

    // bỏ javascript:, vbscript:, data:
    $value = preg_replace(
        '/javascript\s*:|vbscript\s*:|data\s*:/iu',
        '',
        $value
    );

    // bỏ event html kiểu onclick= onerror=
    $value = preg_replace(
        '/on\w+\s*=/iu',
        '',
        $value
    );

    // bỏ control ký tự ẩn
    $value = preg_replace(
        '/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]/u',
        '',
        $value
    );

    // bỏ một số keyword SQL phổ biến
    $value = preg_replace(
        '/\b(union|select|insert|update|delete|drop|alter|truncate|sleep|benchmark)\b/iu',
        '',
        $value
    );

    // chuẩn hóa khoảng trắng
    $value = preg_replace('/\s+/u',' ',$value);

    return trim($value);
}


/* * *******************************************************************************

  Input: Quy uoc, form chon ngay co san, gom cac select co ten: ngay, thang, nam

  Output: timestamp cua ngay duoc chon tu form do (luc 0:0:0 cua ngay do)

 * ********************************************************************************** */

function get_timestamp_form() {

    global $_POST;

    return (gmmktime(0, 0, 0, $_POST['thang'], $_POST['ngay'], $_POST['nam']));
}

function get_new_file_name($old_name, $prefix) {

    $ext = strstr($old_name, ".");

    return $prefix . $ext;
}


/*

  Function checkgd()

  checks the version of gd, and returns "yes" when it's higher than 2

 */

function checkgd() {

    $gd2 = "";

    ob_start();

    phpinfo(8);

    $phpinfo = ob_get_contents();

    ob_end_clean();

    $phpinfo = strip_tags($phpinfo);

    $phpinfo = stristr($phpinfo, "gd version");

    $phpinfo = stristr($phpinfo, "version");

    preg_match('/\d/', $phpinfo, $gd);

    if ($gd[0] == '2') {
        $gd2 = "yes";
    }

    return $gd2;
}

/*

  Function createthumb($name,$filename,$new_w,$new_h)

  creates a resized image

  variables:

  $name		Original filename

  $filename	Filename of the resized image

  $new_w		width of resized image

  $new_h		height of resized image

 */

function createthumb($name, $filename, $new_w, $new_h) {

    global $gd2;

    $gd2 = "yes";

    $system = explode(".", $name);

    if (preg_match("/jpg|jpeg/", $system[1])) {
        $src_img = imagecreatefromjpeg($name);
    }

    if (preg_match("/png/", $system[1])) {
        $src_img = imagecreatefrompng($name);
    }

    $old_x = imageSX($src_img);

    $old_y = imageSY($src_img);

    if ($old_x > $old_y) {

        $thumb_w = $new_w;

        $thumb_h = $old_y * ($new_h / $old_x);
    }

    if ($old_x < $old_y) {

        $thumb_w = $old_x * ($new_w / $old_y);

        $thumb_h = $new_h;
    }

    if ($old_x == $old_y) {

        $thumb_w = $new_w;

        $thumb_h = $new_h;
    }

    if ($gd2 == "") {

        $dst_img = ImageCreate($thumb_w, $thumb_h);

        imagecopyresized($dst_img, $src_img, 0, 0, 0, 0, $thumb_w, $thumb_h, $old_x, $old_y);
    } else {

        $dst_img = ImageCreateTrueColor($thumb_w, $thumb_h);

        imagecopyresampled($dst_img, $src_img, 0, 0, 0, 0, $thumb_w, $thumb_h, $old_x, $old_y);
    }

    if (preg_match("/png/", $system[1])) {

        imagepng($dst_img, $filename);
    } else {

        imagejpeg($dst_img, $filename);
    }

    imagedestroy($dst_img);

    imagedestroy($src_img);
}

// Function to remove HTML tags, Javascript,...

function filter($sstring) {

    /**

     * for ($i = 0; $i < strlen($sstring); $i++)

     * if (!ereg("'", $sstring[$i])) ;

     * }

     */
    $search = array("'<'", // Strip out javascript
        "'>'",
        "'[\/\!]*?[^<>]*?>'si", // Strip out html tags
        "'([\r\n])[\s]+'", // Strip out white space
        "'&(quote|#34);'i", // Replace html entities
        "'&(amp|#38);'i",
        "'&(lt|#60);'i",
        "'&(gt|#62);'i",
        "'&(nbsp|#160);'i",
        "'&(iexcl|#161);'i",
        "'&(cent|#162);'i",
        "'&(pound|#163);'i",
        "'&(copy|#169);'i",
        "'&#(\d+);'e"); // evaluate as php



    $replace = array("",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "");

    $text = preg_replace($search, $replace, $sstring);

    $text = ereg_replace("'", "", $text);

    // $text=ereg_replace("\\", "", $text);

    return $text;
}
?>

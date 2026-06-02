<?php

echo "Bat dau thoi!";

// Kết nối MySQLi
$mysqli = new mysqli('localhost', 'root', '', 'grandviettour');

// Kiểm tra kết nối
if ($mysqli->connect_error) {
    die('Kết nối thất bại: ' . $mysqli->connect_error);
}

// Bước 1: Lấy toàn bộ dữ liệu gốc
$sql = "SELECT * FROM category ORDER BY parentid ASC, id_category ASC";
$result = $mysqli->query($sql);

if ($result->num_rows === 0) {
    die('Không có dữ liệu để clone');
}

// Mapping old_id => new_id
$id_mapping = [];

// Bước 2: Clone từng dòng dữ liệu
while ($row = $result->fetch_assoc()) {
    // Insert tạm thời, chưa set parentid
    $stmt = $mysqli->prepare("INSERT INTO category 
        (name, subname, parentid, thu_tu, active, image, content, vitri, data_type, template_name, title, lang, imageadv, banner, styleshow, mega_menu, intro) 
        VALUES (?, ?, 0, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    $stmt->bind_param(
        "ssiiisssssssssii",
        $row['name'],
        $row['subname'],
        $row['thu_tu'],
        $row['active'],
        $row['image'],
        $row['content'],
        $row['vitri'],
        $row['data_type'],
        $row['template_name'],
        $row['title'],
        $row['lang'],
        $row['imageadv'],
        $row['banner'],
        $row['styleshow'],
        $row['mega_menu'],
        $row['intro']
    );

    $stmt->execute();
    $new_id = $stmt->insert_id;
    $id_mapping[$row['id_category']] = $new_id;
    $stmt->close();
}

// Bước 3: Update lại parentid theo mapping mới
foreach ($id_mapping as $old_id => $new_id) {
    $query = "SELECT parentid FROM category WHERE id_category = {$old_id}";
    $parent_res = $mysqli->query($query);
    $parent_row = $parent_res->fetch_assoc();

    if ($parent_row['parentid'] > 0) {
        $new_parentid = $id_mapping[$parent_row['parentid']];

        $stmt = $mysqli->prepare("UPDATE category SET parentid = ? WHERE id_category = ?");
        $stmt->bind_param("ii", $new_parentid, $new_id);
        $stmt->execute();
        $stmt->close();
    }
}

echo 'Clone thành công!';
$mysqli->close();
?>



<?php

$mysqli = new mysqli("localhost", "longgiang_db", "TmyVSvbAV", "longgiang_db");
$mysqli->set_charset("utf8mb4");

echo "Begin nè:...";

// Prefix cho name
$prefix = "(EN) ";

// Bước 1: Lấy toàn bộ danh sách category, sắp theo parentid để xử lý cha trước
$result = $mysqli->query("SELECT * FROM category ORDER BY parentid ASC");

$id_map = []; // Ánh xạ old_id => new_id

while ($cat = $result->fetch_assoc()) {
    // Tính parentid mới
    $new_parent_id = ($cat['parentid'] == 0) ? 0 : ($id_map[$cat['parentid']] ?? 0);

    // Gán lang mới
    $lang = 'en';

    // Thêm prefix vào name
    $new_name = $prefix . $cat['name'];

    // Chuẩn bị insert
    $stmt = $mysqli->prepare("
        INSERT INTO category (
            name, subname, title, parentid, thu_tu, active, image, intro, content,
            keywords, description, url, target, vitri, data_type, template_name, 
            home_layout, tags, header_tag, rss, lang, stypeshow, id_attr, shortinhome, 
            footercol, localnews, imageadv, styleshow, mega_menu, last_modify
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ");

    $stmt->bind_param("sssiiisssssssssssssisiisiiisii",
        $new_name, $cat['subname'], $cat['title'], $new_parent_id, 
        $cat['thu_tu'], $cat['active'], $cat['image'], $cat['intro'], 
        $cat['content'], $cat['keywords'], $cat['description'], $cat['url'], 
        $cat['target'], $cat['vitri'], $cat['data_type'], $cat['template_name'], 
        $cat['home_layout'], $cat['tags'], $cat['header_tag'], $cat['rss'], 
        $lang, $cat['stypeshow'], $cat['id_attr'], $cat['shortinhome'], 
        $cat['footercol'], $cat['localnews'], $cat['imageadv'], $cat['styleshow'], 
        $cat['mega_menu'], $cat['last_modify']
    );

    $stmt->execute();
    $new_id = $stmt->insert_id;
    $stmt->close();

    // Lưu ánh xạ ID
    $id_map[$cat['id_category']] = $new_id;
}

echo "✅ Clone toàn bảng category thành công với prefix '{$prefix}' và lang='en'. 🚀";
?>

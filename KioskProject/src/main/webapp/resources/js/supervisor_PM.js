// 메뉴 등록 폼으로 이동
function go_insert_menu_form() {
    location.href = cpath + "/menu_insert_form.do";
}

// 메뉴 수정 폼으로 이동
function go_update_menu_form(menu_idx) {
    location.href = cpath + "/menu_update_form.do/" + menu_idx;
}

// 메뉴 삭제 메소드로 이동
function go_delete_menu_method(menu_idx) {            
    location.href = cpath + "/menu_delete.do/" + menu_idx;
}

// 카테고리 distinct 값들 로딩
function show_categories() {
    $.ajax({
        url: cpath + "/menu_categories",
        type: "get",
        dataType: "json",
        success: menu_categories,
        error: function() {
            alert("카테고리 로딩 실패");
        }
    });
}

// show_categories()의 성공 콜백
function menu_categories(categories) {
    console.log('Categories received:', categories);

    var ctgr_list = "";
    ctgr_list += "<option value=''>분류</option>" 

    $.each(categories, (index, category) => {
        console.log('Category:', category); // 디버깅용 로그
        ctgr_list += "<option value='" + category + "'>" + category + "</option>";
    });

    console.log('Generated option list:', ctgr_list); // 디버깅용 로그
    $("#menu_category").html(ctgr_list);
}

// 페이지가 로드될 때 카테고리 로딩 함수 호출
$(document).ready(function() {
    show_categories();

    // 옵션 선택 시 폼 자동 제출
    $('#menu_category').change(function() {
        $(this).closest('form').submit();
    });
});

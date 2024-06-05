package com.smhrd.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.entity.Menu;
import com.smhrd.entity.MenuReco;
import com.smhrd.mapper.MenuMapper;
import com.smhrd.mapper.MenuRecoMapper;

@Controller
public class MenuController {

    @Autowired
    private MenuMapper m_mapper;

    @Autowired
    private MenuRecoMapper r_mapper;

    // 메뉴 목록
    @RequestMapping("/menu_list.do")
    public String menu_list(Model model) {
        List<Menu> menu_list = m_mapper.menu_list();
        model.addAttribute("menu_list", menu_list);
        return "supervisor_1_PM";
    }

    // 메뉴 등록 페이지 반환
    @RequestMapping("/menu_insert_form.do")
    public String menu_insert_form(Model model) {
    	model.addAttribute("categories", new String[]{"커피", "티", "에이드/주스", "스무디/프라페", "디카페인", "음료", "푸드"});
    	model.addAttribute("ages", new String[]{"10~20대", "30~40대", "50대 이상"});
        return "supervisor_1_PM_form";
    }

    // 메뉴 등록
    @RequestMapping(value = "/menu_insert.do", method = RequestMethod.POST)
    public String menu_insert(@RequestParam("menu_name_eng") String menuNameEng,
            @RequestParam("menu_name_kor") String menuNameKor, @RequestParam("menu_category") String menuCategory,
            @RequestParam("menu_price") int menuPrice, @RequestParam("menu_img") MultipartFile file,
            @RequestParam(value = "menu_ages[]", required = false) String[] menuAges, Model model) {

        try {
            if (!file.isEmpty()) {
                byte[] bytes = file.getBytes();
                Menu menu = new Menu();
                menu.setMenu_name_eng(menuNameEng);
                menu.setMenu_name_kor(menuNameKor);
                menu.setMenu_category(menuCategory);
                menu.setMenu_price(menuPrice);
                menu.setMenu_img(bytes);

                m_mapper.menu_insert(menu);
                int menuIdx = menu.getMenu_idx(); // 삽입 후 menu_idx 가져오기

                // 연령대 데이터 자동 삽입
                insert_age_data(menuIdx, menuAges);

                model.addAttribute("message", "메뉴와 파일이 성공적으로 업로드되었습니다!");
            } else {
                model.addAttribute("message", "파일이 비어 있습니다!");
            }
        } catch (IOException e) {
            model.addAttribute("message", "파일 업로드 실패: " + e.getMessage());
            e.printStackTrace(); // 로그 출력
        }
        return "redirect:/menu_list.do";
    }

    private void insert_age_data(int menuIdx, String[] menuAges) {
        int[] ageGroups = { 0, 1, 2 };
        for (int ageGroup : ageGroups) {
            int recoCheck = 0;
            if (menuAges != null) {
                for (String age : menuAges) {
                    if ((age.equals("10~20대") && ageGroup == 0) || (age.equals("30~40대") && ageGroup == 1)
                            || (age.equals("50대 이상") && ageGroup == 2)) {
                        recoCheck = 1;
                        break;
                    }
                }
            }
            MenuReco menuReco = new MenuReco();
            menuReco.setMenu_idx(menuIdx);
            menuReco.setReco_check(recoCheck);
            menuReco.setReco_ages(ageGroup);
            menuReco.setMenu_sales(0);
            r_mapper.insert_age_data(menuReco);
        }
    }

    // 메뉴 수정
    @RequestMapping(value = "/menu_update.do", method = RequestMethod.POST)
    public String menu_update(@RequestParam("menu_idx") int menuIdx, @RequestParam("menu_name_eng") String menuNameEng,
            @RequestParam("menu_name_kor") String menuNameKor, @RequestParam("menu_category") String menuCategory,
            @RequestParam("menu_price") int menuPrice, @RequestParam("menu_img") MultipartFile file,
            @RequestParam(value = "menu_ages[]", required = false) String[] menuAges, Model model) {

        try {
            Menu menu = m_mapper.menu_select_one(menuIdx);
            menu.setMenu_name_eng(menuNameEng);
            menu.setMenu_name_kor(menuNameKor);
            menu.setMenu_category(menuCategory);
            menu.setMenu_price(menuPrice);

            if (!file.isEmpty()) {
                byte[] bytes = file.getBytes();
                menu.setMenu_img(bytes);
            }

            m_mapper.menu_update(menu);

            // 기존 연령대 데이터 삭제
            r_mapper.delete_age_data(menuIdx);

            // 새로운 연령대 데이터 삽입
            insert_age_data(menuIdx, menuAges);

            model.addAttribute("message", "Menu and file uploaded successfully!");
        } catch (IOException e) {
            model.addAttribute("message", "Failed to upload file: " + e.getMessage());
            e.printStackTrace(); // 로그 출력
        }
        return "redirect:/menu_list.do";
    }

    // 메뉴 수정 페이지 반환
    @GetMapping("/menu_update_form.do/{menu_idx}")
    public String menu_update_form(@PathVariable("menu_idx") int menu_idx, Model model) {
        Menu updating_menu = m_mapper.menu_select_one(menu_idx);
        List<MenuReco> menuRecoList = r_mapper.load_reco_ages(menu_idx);

        if (updating_menu.getMenu_img() != null) {
            String menuImgBase64 = Base64.getEncoder().encodeToString(updating_menu.getMenu_img());
            model.addAttribute("menuImgBase64", menuImgBase64);
        }

        model.addAttribute("updating_menu", updating_menu);
        model.addAttribute("menu_reco_ages", menuRecoList);
        model.addAttribute("categories", new String[]{"커피", "티", "에이드/주스", "스무디/프라페", "디카페인", "음료", "푸드"});
        model.addAttribute("ages", new String[]{"10~20대", "30~40대", "50대 이상"});
        return "supervisor_1_PM_form";
    }

    // 메뉴 삭제
    @RequestMapping("/menu_delete.do/{menu_idx}")
    public String menu_delete(@PathVariable("menu_idx") int menu_idx) {
        // 먼저 menu_reco 테이블에서 관련 데이터를 삭제
        r_mapper.delete_age_data(menu_idx);
        // 그런 다음 menu 테이블에서 데이터를 삭제
        m_mapper.menu_delete(menu_idx);
        return "redirect:/menu_list.do";
    }

    // 메뉴 검색 후 결과 페이지 반환
    // form에서 method="get"으로 전송, 따라서 파라미터 name으로 받아와야 함
    @RequestMapping("/menu_search.do")
    public String menu_search(@RequestParam("menu_search_text") String menu_search_text, Model model) {

        // 검색어가 영문이면 소문자로 변환
        if (isEnglish(menu_search_text)) {
            menu_search_text = menu_search_text.toLowerCase();
        }

        List<Menu> menu_search_result = m_mapper.menu_search(menu_search_text);
        model.addAttribute("menu_search_result", menu_search_result);
        return "supervisor_1_PM_search_result";
    }

    // 문자열이 모두 영문인지 확인하는 유틸리티 메서드
    private boolean isEnglish(String text) {
        for (char c : text.toCharArray()) {
            if (!Character.isLetter(c) || (c < 'A' || c > 'z')) {
                return false;
            }
        }
        return true;
    }

    // 카테고리 선택 후 결과 페이지 반환
    @RequestMapping("/menu_categorized_result.do")
    public String menu_categorized_result(@RequestParam("menu_category") String menu_category, Model model) {

        List<Menu> menu_categorized_result = m_mapper.menu_categorize(menu_category);
        model.addAttribute("menu_search_result", menu_categorized_result);
        return "supervisor_1_PM_search_result";
    }

    @GetMapping("/menu_image/{menu_idx}")
    public ResponseEntity<byte[]> getMenuImage(@PathVariable("menu_idx") int menu_idx) {
        try {
            byte[] image = m_mapper.get_menu_image(menu_idx);
            if (image == null) {
                return ResponseEntity.notFound().build();
            }
            HttpHeaders headers = new HttpHeaders();
            headers.add(HttpHeaders.CONTENT_TYPE, "image/jpeg");
            return ResponseEntity.ok().headers(headers).body(image);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).build();
        }
    }

}

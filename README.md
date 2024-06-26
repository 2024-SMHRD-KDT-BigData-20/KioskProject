# 🧑‍🦳 FaceMyKiosk
## &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(팀명: 편함(PeerNAM: Peer and Next-Generation Age Management))
![아이콘_FaceMyKiosk](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/d36494ca-fb10-4010-81c3-70cb0a68f958)
<br><br>

### 📌 서비스 소개
안면 인식 및 음성 기반 시니어 친화형 키오스크 서비스
<br><br>

### 📅 프로젝트 기간
2024.04.22. ~ 2024.06.18. (3주)
<br><br>

### 🔧 주요 기능
* 연령대에 구애받지 않고 다양한 소비자층에게 키오스크 이용을 독려하고자 하는 점주를 위한 서비스
* 배리어프리 제품에 관심 있는 키오스크 생산 및 설치 기업이 이용할 수 있는 키오스크 웹 서비스
* 안면 인식을 통해 연령대 판별 후 시니어 소비자는 이지 모드, 그 외 소비자는 노멀 모드의 주문 화면을 제공하는 서비스
* 인식된 연령대에 따라 연령대별 판매량 통계의 상위 메뉴를 추천
<br><br>

### ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/java-007396?style=flat-square&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=Python&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"/>
        </td>
    </tr>
    <tr>
        <td>프레임워크</td>
        <td>
            <img src="https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=Flask&logoColor=white"/> 
            <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat-square&logo=Spring&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/PyCharm-000000?style=flat-square&logo=PyCharm&logoColor=white"/>
            <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat-square&logo=Visual Studio Code&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat-square&logo=Visual Studio Code&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=MySQL&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>
<br>

### 설계도
<table>
    <tr>
        <td>시스템 아키텍처</td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/14a2610d-8540-45cc-8b55-5ddbe20bfb80" alt="시스템 아키텍처">
        </td>
    </tr>
    <tr>
        <td>서비스 흐름도(관리자)</td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/77e4d22f-f6d2-4b99-8d3d-bad6a504c224" alt="서비스 흐름도(관리자)">
        </td>
    </tr>
    <tr>
        <td>서비스 흐름도(키오스크)</td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7f38536e-2c40-4884-b77a-2e41e33c6e10" alt="서비스 흐름도(키오스크)">
        </td>
    </tr>
    <tr>
        <td>유스케이스 다이어그램</td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/6642c15b-3a08-422b-8804-fc60242c2461" alt="유스케이스 다이어그램">
        </td>
    </tr>
    <tr>
        <td>ER 다이어그램</td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/769d752d-b28c-4ca8-bc6e-796e9a615e01)" alt="ER 다이어그램">
        </td>
    </tr>
</table>


### 화면 구성 - 키오스크 시스템
<table>
    <tr>
        <td colspan="2"><strong>○ 화면 터치 및 안면 인식 ○</strong></td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/9c3e61ce-3edc-4c0d-93a4-0e72031f0b3c" alt="초기 화면">
        </td>
        <td>
            - 서비스 로고
            - 개인정보 수집 및 이용 동의 안내
        </td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/b71a4985-2e54-425f-9e6f-9220ddeb56bc" alt="얼굴 인식 화면">
        </td>
        <td>
            - 전면 카메라 활성(getUserMedia API 통해 외부 카메라 사용)
            - 박스에 얼굴 맞추면서 포장/매장 선택
            - 얼굴 인식 안되면 재활영 요청
        </td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 메뉴 선택 및 주문·결제 ○</strong></td>
    </tr>
    <tr>
        <td>
             <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/a4b20cef-308f-4e27-907c-b6f483f419e6 alt="노멀 모드 메뉴 선택 화면">
        </td>
        <td>
            - 노멀 모드 메뉴 선택 화면
            - 하단 장바구니
            - 우하단 타이
        </td>
        <td>
             <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/4e37822d-d27d-4480-9a4c-f922007258cf" alt="시니어 모드 메뉴 선택 화면">
        </td>
        <td>
            - 시니어 모드 메뉴 선택 화면
            - 더 커진 상단 카테고리 선택 탭
            - 스무디, 프라페와 같은 영단어 대신 커피 O, 커피 X처럼 직관적인 카테고리로 대체
            - HOT, ICE 선택 옵션
            - 음성 인식 버튼 누르고 4초 동안 메뉴명 말하면 자동 선택
        </td>
    </tr>
    <tr>
        <td>
             <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7a3270ba-f759-4906-a55c-25c3f69fb0c0" alt="시니어 모드 주문 메뉴 확인 화면">
        </td>
        <td>
            - 상단에 포장/매장 여부 출력
            - 선택한 메뉴 크게 띄워줌
            - 하단에 총 결제할 금액, 추가 메뉴 선택 여부 
        </td>
        <td>
             <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/6cd33ebc-c4a3-4377-9b0a-0d8c600c654b" alt="노멀 모드 결제 옵션 선택 화면">
        </td>
        <td>
            - 휴대폰 번호 입력 시 스탬프 적립
            - 현재 보유 스탬프 개수 출력
            - 결제 수단 선택, 최종 결제
        </td>
    </tr>
</table>
<br>

### 화면 구성 - 관리자 시스템
<table>
    <tr>
        <td colspan="2"><strong>○ 관리자 로그인 / 판매량 통계 ○</strong></td>
    </tr>
    <tr>
        <td>
             <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7ec27281-74f5-444d-bdca-5dcb05e1a141" alt="관리자 로그인">
        </td>
        <td>
            - 상위 또는 하위 관리자로 로그인
            - 따로 회원가입 없이 부여받은 아이디로 로그인
        </td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/3bd5181c-4a9f-4c20-a44a-c72179edfee9" alt="판매량 통계 조회">
        </td>
        <td>
            - 좌단에 총 판매량 한눈에 시각화(Chart.js)
            - 우단에 연령대별로 메뉴 추천 여부
        </td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 상품 조회 및 등록·수정 ○</strong></td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/9ab2aec7-8363-44ac-829a-0fb96d63e757" alt="상품 조회">
        </td>
        <td>
            - 분류에서 카테고리 선택 시 해당 카테고리의 메뉴들만 보여줌
            - 메뉴명 검색 가능(한글명, 영문명)
        </td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/8dfba3fc-6f7b-41ff-b131-ba19d1a43814" alt="상품 등록 및 수정">
        </td>
        <td>
            - 이미지 등록 시 바이너리로 변환 후 base64 형태로 인코딩, longblob 타입으로 DB 삽입
        </td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 회원·하위 관리자 관리 ○</strong></td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/c102688d-f199-4100-9878-2433ea1aeae4" alt="회원 조회">
        </td>
        <td>
            - 회원 전화번호, 가입일, 스탬프 수 조회
            - 안면 이미지 항목: 현 시점에선 미구현이지만, 추후 개인화 발전 가능성으로 이어질 수 있어 남겨둠
        </td>
        <td>
            <img src="https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/69b788f7-46a3-4803-b381-3649fa179097" alt="하위 관리자 조회"
        </td>
        <td>
            - 상위 관리자는 하위 관리자의 아이디, 비밀번호 등록·수정·삭제 가능
            - 하위 관리자는 조회만 가능
        </td>
    </tr>
</table>
<br>

### 팀원 역할

<table>
  <tr>
    <td align="center"><img src="https://item.kakaocdn.net/do/fd49574de6581aa2a91d82ff6adb6c0115b3f4e3c2033bfd702a321ec6eda72c" width="100" height="100"/></td>
    <td align="center"><img src="https://mb.ntdtv.kr/assets/uploads/2019/01/Screen-Shot-2019-01-08-at-4.31.55-PM-e1546932545978.png" width="100" height="100"/></td>
    <td align="center"><img src="https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2" width="100" height="100"/></td>
    <td align="center"><img src="https://i.pinimg.com/236x/ed/bb/53/edbb53d4f6dd710431c1140551404af9.jpg" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
  </tr>
  <tr>
    <td align="center"><strong>김어진</strong></td>
    <td align="center"><strong>이정주</strong></td>
    <td align="center"><strong>김태연</strong></td>
    <td align="center"><strong>강승원</strong></td>
    <td align="center"><strong>이종명</strong></td>
  </tr>
  <tr>
    <td align="center"><b>Team Leader<br>Backend(관리자 시스템)</b></td>
    <td align="center"><b>Backend(키오스크 시스템)<br>AI 모델링(음성 인식 모델)</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>AI 모델링(안면 인식 모델)</b></td>
    <td align="center"><b>크롤링</b></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/naomi-kim9" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/lliillllI" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/tttytytt" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/kainsw" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/yeejongmyung" target='_blank'>github</a></td>
  </tr>
</table>

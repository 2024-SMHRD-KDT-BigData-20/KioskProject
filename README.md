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
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=Python&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
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
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
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
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/> 
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>
<br><br>

### 설계도
<table>
    <tr>
        <td>서비스 아키텍처</td>
        <td>
            ![시스템 아키텍처](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/14a2610d-8540-45cc-8b55-5ddbe20bfb80)
        </td>
    </tr>
    <tr>
        <td>서비스 흐름도(관리자)</td>
        <td>
            ![서비스 흐름도(관리자)](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/77e4d22f-f6d2-4b99-8d3d-bad6a504c224)
        </td>
    </tr>
    <tr>
        <td>서비스 흐름도(키오스크)</td>
        <td>
            ![서비스 흐름도(키오스크)](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7f38536e-2c40-4884-b77a-2e41e33c6e10)
        </td>
    </tr>
    <tr>
        <td>유스케이스 다이어그램</td>
        <td>
            ![USECASE_D](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/6642c15b-3a08-422b-8804-fc60242c2461)
        </td>
    </tr>
    <tr>
        <td>ER 다이어그램</td>
        <td>
            ![ER_D](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/769d752d-b28c-4ca8-bc6e-796e9a615e01)
        </td>
    </tr>
</table>


### 화면 구성 - 키오스크 시스템
<table>
    <tr>
        <td colspan="2"><strong>○ 화면 터치 및 안면 인식 ○</strong></td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/9c3e61ce-3edc-4c0d-93a4-0e72031f0b3c)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/b71a4985-2e54-425f-9e6f-9220ddeb56bc)</td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 메뉴 선택 및 주문·결제 ○</strong></td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/a4b20cef-308f-4e27-907c-b6f483f419e6)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/4e37822d-d27d-4480-9a4c-f922007258cf)</td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7a3270ba-f759-4906-a55c-25c3f69fb0c0)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/6cd33ebc-c4a3-4377-9b0a-0d8c600c654b)</td>
    </tr>
</table>
<br>

### 화면 구성 - 관리자 시스템
<table>
    <tr>
        <td colspan="2"><strong>○ 관리자 로그인 / 판매량 통 ○</strong></td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/7ec27281-74f5-444d-bdca-5dcb05e1a141)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/3bd5181c-4a9f-4c20-a44a-c72179edfee9)</td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 상품 조회 및 등록·수정 ○</strong></td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/9ab2aec7-8363-44ac-829a-0fb96d63e757)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/8dfba3fc-6f7b-41ff-b131-ba19d1a43814)</td>
    </tr>
    <tr>
        <td colspan="2"><strong>○ 회원·하위 관리자 관리 ○</strong></td>
    </tr>
    <tr>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/c102688d-f199-4100-9878-2433ea1aeae4)</td>
        <td>![image](https://github.com/2024-SMHRD-KDT-BigData-20/KioskProject/assets/148893093/69b788f7-46a3-4803-b381-3649fa179097)</td>
    </tr>
</table>
<br>

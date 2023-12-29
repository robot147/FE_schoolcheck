## 프로젝트 폴더 구조

```
lib
┣ model
┃ ┣ member_data.dart
┃ ┗ member_data.freezed.dart
┣ networks
┃ ┣ api.dart
┃ ┗ http_connector.dart
┣ repository
┃ ┗ member_repository.dart
┣ router
┃ ┣ router.dart
┃ ┗ router_path.dart
┣ utils
┃ ┗ logger.dart
┣ view
┃ ┣ home
┃ ┃ ┣ member_page
┃ ┃ ┃ ┣ member_page.dart
┃ ┃ ┃ ┣ member_page_view_model.dart
┃ ┃ ┃ ┗ member_page_view_model.g.dart
┃ ┃ ┗ home_page.dart
┃ ┣ login
┃ ┃ ┗ login_page.dart
┃ ┗ splash_page.dart
┗ main.dart
```

### 부가설명

1. model
   - 데이터 구조 (서버에서 받아오는것, 프론트에서 사용하는 것)
   - 서버랑 프론트에서 쓰는 거 분리해도 상관없을듯
2. networks
   - 서버 통신과 관련된 것
3. router
   - 프론트 페이지 라우팅
4. repository
   - provider에서 서버 통신하기 위해 중간다리 역할
5. view
   - 각 화면 단위로 view, view_model 관리
   - view : prodivder를 watch하고 있음
   - view_model: provider 역할
     (서비스 로직 한번더 분리해도 좋을듯)

### assets 자동생성

fluttergen

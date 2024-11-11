# 利用docker建立angular+nginx環境
## 重新構建並啟動
docker-compose up -d --build

## 重新執行 Angular 構建
docker-compose exec angular ng build

## angular-app\angular.json 調整內容
  "projects": {
	#專案名稱
    "my-app": {
		"architect": {
			"build": {
				"options": {
					#調整項目
					"outputPath": "dist",

## angular-app\package.json 調整內容
  "scripts": {
    #調整項目
    "start": "ng serve --host 0.0.0.0 --port 4200 --disable-host-check --poll=2000"


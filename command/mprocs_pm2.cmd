C:\Users\User\Bin\mprocs\mprocs.exe ^
	"cd C:\Users\User\Github\PM2-demo\ePubViewer && gsudo pm2 serve . 4013 --name epubvidewer --spa" ^
	"cd C:\Users\User\Github\PM2-demo\sreadium && gsudo pm2 serve . 4012 --name sreadium --spa" ^
	"cd C:\Users\User\Github\PM2-demo\vivliostyle-viewer-latest && gsudo pm2 serve viewer 4004 --name vivliostyle-viewer --spa" ^
	"cd C:\Users\User\Github\PM2-demo\pdf.js && gsudo pm2 serve build/generic 4007 --name pdfjs --spa" ^
	"cd C:\Users\User\Github\PM2-demo\kiwix-js-pwa && gsudo pm2 serve dist 5173 --name kiwix-js-pwa --spa --env production"

rem mklink /J C:\Users\User\Github\PM2-demo\pdf.js\build\generic\web\_media ...\<Ebook Dir>
rem mklink /J C:\Users\User\Github\PM2-demo\ePubViewer\_media ...\<Ebook Dir>
git pull
FOR /f "tokens=*" %%A IN  ('dir /b *.pdf') DO (
 echo %%A
 git add -v --all %1
 git commit -m "automatic import %1" 
 git push origin main:main
)
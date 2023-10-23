del "C:\Users\bi\Desktop\SKY_SFTP\LigacoesRechamadaALMAVIVASAC*.txt"
del "C:\Users\bi\Desktop\SKY_SFTP\extracaoLigacoesRechamadaALMAVIVASAC*.txt"
del "C:\Users\bi\Desktop\SKY_SFTP\arquivo.txt"

cscript DATA.vbs > %temp%\DATA.txt
for /F  %%A in (%temp%\DATA.txt) do SET DT=%%A

echo option batch on>> arquivo.txt
echo option confirm off>> arquivo.txt
echo open sftp://sftp_sky_sp:Alm@v1v@Sky@sftp.almavivadobrasil.com.br>> arquivo.txt
echo cd "/SKY/MESA DE COMANDO">> arquivo.txt
echo cd option transfer binary>> arquivo.txt
echo get "LigacoesRechamadaALMAVIVASAC_%DT%*">> arquivo.txt
echo close>> arquivo.txt
echo exit>> arquivo.txt 


"C:\Users\bi\Desktop\WinSCP\WinSCP.exe" /script=arquivo.txt

for %%i in (C:\Users\bi\Desktop\SKY_SFTP\LigacoesRechamadaALMAVIVASAC_*.txt) do type %%i >> "C:\Users\bi\Desktop\SKY_SFTP\extracaoLigacoesRechamadaALMAVIVASAC.txt"
cd C:\Users\bi\PycharmProjects\pythonProject
python SftpSky.py





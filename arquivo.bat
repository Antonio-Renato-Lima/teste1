cscript DATA2.vbs > %temp%\DATA.txt
for /F  %%A in (%temp%\data.txt) do SET DT=%%A


for %%i in (C:\Users\bi\Desktop\SKY_SFTP\LigacoesRechamadaALMAVIVASAC_*.txt) do type %%i >> "C:\Users\bi\Desktop\SKY_SFTP\extracaoLigacoesRechamadaALMAVIVASAC.txt"

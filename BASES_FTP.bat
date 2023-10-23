'del "C:\Users\bi\Desktop\SKY_SFTP\LigacoesRechamadaALMAVIVASAC*.txt"
'del "C:\Users\bi\Desktop\SKY_SFTP\extracaoLigacoesRechamadaALMAVIVASAC*.txt"
'del "C:\Users\bi\Desktop\SKY_SFTP\arquivo.txt"

cscript DATA2.vbs > %temp%\DATATIM.txt
for /F  %%A in (%temp%\datatim.txt) do SET DT=%%A
echo option batch on>> arquivo.txt
echo option confirm off>> arquivo.txt
echo open sftp://sftp_tim:ZMq55c2d@sftp.almavivadobrasil.com.br>> arquivo.txt
echo cd "/<root>">> arquivo.txt
echo cd option transfer binary>> arquivo.txt
echo put "\\mg0000bd2007\Arquivos\Carregamento_Bulk\MIS\TimReceptivo\TIM_SFTP\ALMVV_%DT%.txt">> arquivo.txt
echo close>> arquivo.txt
echo exit>> arquivo.txt 



"C:\Users\bi\Desktop\WinSCP\WinSCP.exe" /script=arquivo.txt


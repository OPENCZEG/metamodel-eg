copy 0.md+1.md+2.md+3.md+4.md+5.md dokumentace.md
pandoc -t html -s -o dokumentace.html -V lang=cs -N --toc dokumentace.md
copy dokumentace.md ..\docs\index.md
copy dokumentace.html ..\pracov~1\Dokumentace.html
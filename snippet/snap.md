sudo pacman -S snapd

sudo systemctl enable --now snapd.socket

sudo ln -s /var/lib/snapd/snap /snap

sudo snap install remarkable

<h1 id="自己的這3件事絕不能洩露">自己的這3件事，絕不能洩露</h1>
<pre><code>否則後果很嚴重:
 
 1）心底秘密
 2）陳舊往事
 3）自己成績</code></pre>
<p><a href="https://www.youtube.com/watch?v=gquKITAGxD8">深夜讀書</a></p>

for i in *.md ; do echo "$i" && pandoc -s $i -o $i.html ; done

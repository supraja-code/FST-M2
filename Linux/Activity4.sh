suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ cat activity4.sh
#!/bin/bash
touch song{1,2,3,4,5,6}.mp3
touch snap{1,2,3,4,5,6}.jpg
touch film{1,2,3,4,5,6}.mp4

mkdir -p Music
mkdir -p Pictures
mkdir -p Videos

mv *.mp3 Music/
mv *.jpg Pictures/
mv *.mp4 Videos/
suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ ./activity4.sh
suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ ls -l
total 20
drwxr-xr-x 2 suprajabharavi suprajabharavi 4096 Oct 18 10:03 Music
drwxr-xr-x 2 suprajabharavi suprajabharavi 4096 Oct 18 10:03 Pictures
drwxr-xr-x 2 suprajabharavi suprajabharavi 4096 Oct 18 10:03 Videos
-rwxr-xr-x 1 suprajabharavi suprajabharavi  199 Oct 18 10:02 activity4.sh
-rw-r--r-- 1 suprajabharavi suprajabharavi    0 Sep 20 09:19 bye.txt
-rw-r--r-- 1 suprajabharavi suprajabharavi   12 Sep 20 09:52 hello.txt
suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ ls Music/
song1.mp3  song2.mp3  song3.mp3  song4.mp3  song5.mp3  song6.mp3
suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ ls Videos/
film1.mp4  film2.mp4  film3.mp4  film4.mp4  film5.mp4  film6.mp4
suprajabharavi@IBM-PF3PE7AW:~/FST-Linux$ ls Pictures/
snap1.jpg  snap2.jpg  snap3.jpg  snap4.jpg  snap5.jpg  snap6.jpg
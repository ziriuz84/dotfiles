scp -r root@ws4.ssd.it:/home/ssd/news-image-backup .
cd news-image-backup
git push
cd ..
rm -rf news-image-backup
scp -r root@ws4.ssd.it:/home/ssd/feedbacks-backup .
cd feedbacks-backup
git push
cd ..
rm -rf feedbacks-backup

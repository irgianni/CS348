{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT snum, sname, \\\
(avg(SELECT grade \\\
FROM mark \\\
WHERE student.snum = mark.snum \\\
and mark.deptcode = \'91CS\'92)) as cs_grade_average, \\\
(avg(SELECT grade \\\
FROM mark \\\
WHERE student.snum = mark.snum \\\
and grade != NULL)) as all_grade_average, \\ \
(COUNT(SELECT grade \\ \
FROM mark \\ \
WHERE student.snum = mark.snum \\ \
and mark.grade != NULL) *100.0 / \\\
(COUNT(*) FROM mark WHERE mark.deptcode = \'91CS\'92)) as cs_percentage \\\
FROM student \\\
WHERE student.year = 4 \\\
ORDER BY cs_grade_average DESC, cs_percentage DESC}
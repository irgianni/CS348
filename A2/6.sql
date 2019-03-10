{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT pnum, pname \\\
FROM professor, class, mark m1, mark m2, mark m3, mark m \\\
WHERE class.pnum = professor.pnum \\\
and class.deptcode = \'91CS\'92 \\\
and class.cnum = \'91245\'92 \\\
and m1.grade = m2.grade and m1.grade = m3.grade and m1.grade <> m.grade \\ \
and m1.snum <> m2.snum and m1.snum <> m3.snum and m2.snum <> m3.snum and m1.snum <> m.snum \\\
and m1.deptcode = class.deptcode and m2.deptcode = class.deptcode and m3.deptcode = class.deptcode and m.deptcode = class.deptcode \\\
and m1.cnum = class.cnum and m2.cnum = class.cnum and m3.cnum = class.cnum and m.cnum = class.cnum \\\
and m1.term = class.term and m2.term = class.term and m3.term = class.term and m.term = class.term \\\
and m1.section = class.section and m2.section = class.section and m3.section = class.section and m.section = class.section \\\
and m1.grade > ALL m.grade \\\
and m1.grade - m.grade <= 20}
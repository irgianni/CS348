{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT DISTINCT student \\\
FROM student, mark m1, mark m2, mark m \\\
WHERE m1.snum <> m2.snum \\\
and (m1.deptcode = CS and m1.cnum = 240) \\\
and (m2.deptcode = CS and m2.cnum = 240) \\\
and (m.deptcode = CS and m.cnum = 240) \\\
and m1.grade > m2.grade \\\
and m1.grade - m.grade <= 3 \\\
and student.snum = m.snum}
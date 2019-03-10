{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT DISTINCT student.snum, student.sname \\\
FROM student, mark m1, mark m2 \\\
WHERE student.year >= 2 \\\
and (m1.deptcode <> m2.deptcode or m1.cnum <> m2.cnum) \\\
and (m1.grade >= 90 and m2.grade >= 90)}
{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT DISTINCT professor.pnum, professor.pname \\\
FROM professor, class c1, class c2 \\\
WHERE NOT professor.deptcode = \'91PM\'92 \\\
and c1.term > c2.term \\\
and (c1.deptcode = CS and c1.cnum = 245) \\\
and not (c2.deptcode = CS and c2.cnum = 245)}
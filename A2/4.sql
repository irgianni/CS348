{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17860\viewh6200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT DISTINCT c1max.grade, c2max.grade, c1min.grade, c2min.grade, c1.pnum, c2.pnum,  \\			       c1.deptcode, c1.cnum, c1.term, c1.section, c2.section, p1.pname, p2.pname \\\
FROM mark c1max, mark c2max, mark c1min, mark c2min, mark m, class c1, class c2, professor p1, professor p2 \\\
WHERE c1.deptcode = c2.deptcode \\\
and c1.cnum = c2.cnum \\\
and c1.term = c2.term \\\
and c1.section != c2.section \\\
and c1.pnum != c2.pnum \\\
and (c1max.deptcode = c1min.deptcode = c1.deptcode \\\
and c1max.cnum = c1min.cnum = c1.cnum \\\
and c1max.term = c1min.term = c1.term \\\
and c1max.section = c1min.section = c1.section) \\\
and (c2max.deptcode = c2min.deptcode = c2.deptcode \\\
and c2max.cnum = c2min.cnum = c2.cnum \\\
and c2max.term = c2min.term = c2.term \\\
and c2max.section = c2min.section = c2.section) \\\
and c1max.grade > ALL (SELECT m.grade \\\
FROM mark m \\\
WHERE c1max.snum <> m.snum \\\
and m.deptcode = c1.deptcode \\\
and m.cnum = c1max.cnum \\\
and m.term = c1max.term \\\
and m.section = c1max.section) \\\
and c1min.grade < ALL (SELECT m.grade \\\
FROM mark m \\ \
WHERE c1min.snum <> m.snum \\\
and m.deptcode = c1.deptcode \\\
and m.cnum = c1min.cnum \\\
and m.term = c1min.term \\\
and m.section = c1min.section) \\\
and c2max.grade > ALL (SELECT m.grade \\\
FROM mark m \\\
WHERE c2max.snum <> m.snum \\\
and m.deptcode = c2.deptcode \\\
and m.cnum = c2max.cnum \\\
and m.term = c2max.term \\\
and m.section = c2max.section) \\\
and c2min.grade < ALL (SELECT m.grade \\ \
FROM mark m \\ \
WHERE c2min.snum <> m.snum \\\
and m.deptcode = c1.deptcode \\\
and m.cnum = c2min.cnum \\ \
and m.term = c2min.term \\\
and m.section = c2min.section)}
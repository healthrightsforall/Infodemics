import excel "C:\Users\u7061726\Downloads\merge.xlsx", sheet("merge") firstrow
* Table 1
table1 if topic==1, by(period) vars (source cat\ sentiment cat\ influence contn\) 
table1 if topic==2, by(period) vars (source cat\ sentiment cat\ influence contn\) 

* Table 2
table1, by(sentiment) vars (period cat\ source cat\ topic cat\) 

* Table 3
mlogit sentiment ib(2).period i.source influence i.content, rrr
mlogit sentiment ib(2).period, rrr
mlogit sentiment influence, rrr
mlogit sentiment i.source, rrr
mlogit sentiment i.content, rrr

* Table 4
table1, by(source) vars (period cat\ sentiment cat\ topic cat\ influence contn\) 

*Table 5
zip engage ib(2).period influence i.content, inflate(engage) irr
estimates store zip
poisson engage ib(2).period  influence i.content, irr
estimates store pois
estimates stats pois zip
zip engage ib(2).period influence i.content ib(2).sentiment , inflate(engage) irr vce(robust)
zip engage ib(2).period, inflate(engage) irr vce(robust)
zip engage influence , inflate(engage) irr vce(robust)
zip engage influence , inflate(engage) irr
zip engage ib(2).sentiment , inflate(engage) irr vce(robust)
zip engage i.content , inflate(engage) irr vce(robust)
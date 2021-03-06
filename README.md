# Infodemics study
This is repository for data and code of the manuscript "Using ‘infodemics’ to understand public awareness and perception of SARS-CoV-2: an analysis of online information about COVID-19 incidence and mortality during a major outbreak in Vietnam, July - September 2020"

Authors: Ha-Linh Quach, Thai Quang Pham, Ngoc-Anh Hoang, Dinh Cong Phung, Viet-Cuong Nguyen, Son Hong Le, Thanh Cong Le, Thu Minh Thi Bui, Dang Hai Le, Anh Duc Dang, Duong Nhu Tran, Nghia Duy Ngu, Florian Vogt, Cong-Khanh Nguyen

Published: April 7 2022

Link: https://doi.org/10.1371/journal.pone.0266299

**Data collection:**

Inclusion criteria for online content were: (i) related to COVID-19 incidence or mortalities (identified through pre-defined keywords in Table S1); (ii) posts were published in ‘public mode’ and remained in the public domain at the time of data collection; (iii) posts were made and posted in the format of posts on social media networks, entries on online forums, and online newspaper contributions; (iv) the geographical area from where the posts were uploaded is Vietnam. Exclusion criteria were: (i) being unrelated to the study topic (i.e. not containing pre-defined keywords in Table S1); (ii) not being in the public domain at time of collection; and (iii) not generated in Vietnam geographically.
We used the software package “Social Media Command Center” (Log on through https://smcc.vn/) used by the Vietnam Ministry of Science and Technology for online data collection. This software has been routinely used by National Steering Committee of COVID-19 Prevention in Vietnam since the start of the COVID-19 pandemic to assess public understanding and perception of public health interventions. Data source for collection included public social media networks, popular online forums, and leading online newspapers in Vietnam (Table S2) (“100 largest social media and forums in Vietnam”; Vietnam Yellow Page; Wikipedia; Quoc Khanh, 2020). Based on a pre-identified keyword search to cover the study topics (Table S1), we extracted the following data from each included online posts: (i) source, (ii) influence score, (iii) date of posting, (iv) engagement level, (v) sentiment polarity and (vi) content (Table S3). Influence score was categorized through number of followers and/or views of source of posting (Table S4), and sentiment polarity was processed and categorize into sentiment based on Vietnamese Lexicon Sentimental Dictionary developed by Tran et al (Tran & Phan, 2018) (Table S3). 

Final result: Access restrictions to content data that could potentially de-identify individuals apply as per requirements of the respective ethics committees. Access requests can be made to the Australian National University's Human Research Ethics committees (email: human.ethics.officer@anu.edu.au) or corresponding author (HLQ, linh.quach@anu.edu.au)

**Data analysis:**

_Step 1:_
We plotted the number of posts and number of COVID-19 incidence and mortality by date to explore awareness and perception with regards to the Da Nang outbreak over time. Variables were summarized by frequency and percentage, and differentiated between the three outbreak periods (before, during, and after the outbreak) by Chi square or Fisher’s exact tests. We summarized the influence score by calculating means and standard deviations (SD). We used the Spearman correlation coefficient to explore the correlation between COVID-19 incidence and mortality reported in Vietnam with the number of posts over time. We used multinomial logistic regression to assess the predictive relationship between sentiment polarity and outbreak periods adjusted for the posts’ variables, reporting odds rations (OR) and 95% confidence intervals (CI). We used zero inflated Poisson regression to explore the relationship between engagement levels and outbreak periods adjusted for the posts’ variables, reporting relative risks (RR), robust standard errors (SE) and 95%CI. These analyses were performed in Stata 16.0. **Codes are available at "Descriptive and regression.do" file.**

_Step 2:_
We used the Vietnamese word segmentation package “VnCoreNLP” packages (Vu et al., 2018) on Python 3.8 to segment words in each post, then processed to delete Vietnamese stop words and clean special symbols. From the word segmentation, we calculated word frequencies to identify high-frequency keywords stratified by the three outbreak periods using the “NLTK” software package (Bird, Klein & Loper, 2009). After extracting the most common words in each topic, we constructed a word-word co-occurrence matrix using “NetworkX” (Hagberg, Swart & S Chult, 2008) in Python 3.8. **Codes are available at "Keyword and network" file (Jupyter notebook)**

--> **Final result: "Edges_new cases.txt"; "Nodes_new cases.csv"; "Edges_new deaths.txt"; "Nodes_new deaths.csv"**

We then extracted the matrix to VOSViewer software (Van Eck & Waltman, 2010) (Log on at https://www.vosviewer.com/) to create a network of word co-occurrence analysis and cluster analysis, by using the co-occurrence frequency as the edge weight, and word frequency as node weight.

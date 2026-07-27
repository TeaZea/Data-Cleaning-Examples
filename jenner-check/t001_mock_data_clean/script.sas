/* Import raw csv, set length of appropriate variables */
/* Adapted for a self-contained run: the original read MOCK_DATA.csv via an
   absolute INFILE path; here the same rows are supplied inline via DATALINES
   so the script runs without any external file. INPUT/LENGTH are unchanged. */
DATA rawMock; 
	INFILE DATALINES DSD;
	LENGTH
		po_date $10
		po_eta $10
		;
	INPUT
		row 
		vendor_num
		po
		null $
		null1 $
		po_date $
		po_eta $
		null2 $
		null3 $
		;
	DATALINES;
1,1113,2233321,,msabban0@gmpg.org,17-07-2023,16-07-2024,170.13.127.67,102.241.206.108
2,7890,2200000,,lverrechia1@smugmug.com,19-04-2023,16-05-2024,2.205.96.20,66.129.156.137
3,1113,2203333,,mstokey2@altervista.org,27-05-2023,16-02-2024,113.105.34.177,40.100.179.90
4,1113,2205568,,trishworth3@google.co.jp,12-10-2023,14-12-2023,230.196.92.232,143.154.32.204
5,1112,2205568,,afrape4@prweb.com,14-03-2023,29-12-2023,30.142.36.51,244.60.113.84
6,1234,2205698,,vwedge5@npr.org,01-09-2023,18-04-2024,51.63.34.27,107.52.33.49
7,1113,2201234,,nfazackerley6@123-reg.co.uk,09-10-2023,24-04-2024,242.194.71.210,105.1.90.231
8,1113,2205563,,rcollick7@youtu.be,25-06-2023,14-04-2024,53.196.254.113,119.164.43.64
9,9012,2204444,,bpiscotti8@blinklist.com,02-03-2023,15-05-2024,31.119.203.4,78.101.122.197
10,1234,2205698,,corrice9@barnesandnoble.com,13-07-2023,05-07-2024,121.69.36.19,115.203.160.221
11,1112,2233321,,mshepstonea@fastcompany.com,14-03-2023,10-02-2024,40.7.199.138,172.169.229.235
12,1234,2203456,,gminchentonb@privacy.gov.au,12-07-2023,26-04-2024,161.166.249.210,85.206.58.127
13,1112,2205678,,jmorefieldc@delicious.com,28-04-2023,27-03-2024,50.210.223.78,240.119.70.135
14,5678,2205568,,eplowelld@wp.com,29-07-2023,07-07-2024,122.52.208.163,30.143.110.77
15,1234,2200000,,dcarncrosse@discovery.com,26-07-2023,04-01-2024,174.171.68.207,198.240.112.75
16,7895,2207890,,mharmarf@is.gd,24-08-2023,06-01-2024,219.212.9.168,139.128.155.123
17,7895,2204444,,etompiong@sakura.ne.jp,23-03-2023,18-03-2024,203.207.251.106,165.42.213.49
18,3456,2203333,,omurreyh@amazonaws.com,01-05-2023,15-06-2024,26.229.167.112,113.189.105.147
19,5678,2209012,,lflegi@t.co,02-07-2023,09-02-2024,140.67.0.141,125.12.84.163
20,1234,2201234,,gjanochj@mediafire.com,02-05-2023,06-06-2024,203.63.159.123,88.95.9.170
21,1234,2204444,,mkatzmannk@amazon.de,22-09-2023,28-02-2024,107.103.67.183,242.48.69.23
22,3456,2205568,,tboothel@amazonaws.com,24-05-2023,19-12-2023,54.226.212.217,75.216.144.86
23,1113,2205678,,vdwanem@t-online.de,21-07-2023,05-08-2024,45.73.102.199,97.252.23.140
24,1113,2207890,,zbritiann@fema.gov,07-04-2023,03-12-2023,209.77.104.227,182.249.251.82
25,5678,2205568,,swilcinskiso@adobe.com,28-04-2023,02-01-2024,64.108.85.125,198.27.109.103
26,5678,2209012,,nportressp@yellowbook.com,23-09-2023,23-12-2023,199.91.116.155,150.65.223.123
27,6549,2201111,,dleftlyq@issuu.com,17-08-2023,16-01-2024,127.244.25.220,102.72.10.244
28,9012,2205678,,nstaddenr@wikispaces.com,14-09-2023,07-08-2024,54.233.127.16,2.235.73.151
29,7890,2201111,,ljakemans@reuters.com,21-10-2023,16-05-2024,41.87.71.10,84.127.227.0
30,1113,2207890,,rbifordt@so-net.ne.jp,20-06-2023,29-07-2024,141.160.236.110,177.180.67.128
31,3456,2233321,,svittoriu@nps.gov,02-03-2023,05-06-2024,31.151.118.92,77.11.216.226
32,6549,2205563,,sbomev@angelfire.com,24-05-2023,17-04-2024,69.75.254.126,51.251.143.148
33,1113,2203333,,ecriginw@go.com,11-03-2023,12-03-2024,1.164.250.120,114.251.252.68
34,7890,2200000,,atattersdillx@theglobeandmail.com,24-09-2023,05-08-2024,171.155.112.25,41.3.29.28
35,1112,2203456,,rpetrinay@amazonaws.com,07-03-2023,20-06-2024,137.103.105.167,212.53.190.59
36,7895,2205678,,dearpz@jimdo.com,27-07-2023,30-05-2024,222.36.80.55,40.98.42.29
37,1234,2205678,,aallworthy10@icq.com,24-03-2023,07-07-2024,133.72.88.111,127.183.32.127
38,6549,2205678,,bfright11@psu.edu,26-08-2023,04-06-2024,143.57.23.172,62.53.20.224
39,7895,2209012,,cgoodspeed12@vkontakte.ru,24-08-2023,21-03-2024,173.1.33.60,2.226.67.55
40,7895,2201111,,wtrenoweth13@mit.edu,09-05-2023,24-11-2023,167.185.224.128,153.181.163.165
41,1112,2201111,,bkingswood14@oracle.com,02-06-2023,05-01-2024,54.161.18.85,111.2.10.192
42,6549,2203456,,ftrappe15@hp.com,30-05-2023,27-11-2023,192.241.236.129,249.112.89.186
43,5678,2205678,,mgorrissen16@yelp.com,27-09-2023,18-07-2024,191.172.201.156,104.185.169.108
44,1113,2200000,,rcaddock17@spotify.com,24-03-2023,07-07-2024,108.157.182.10,62.60.19.160
45,7890,2203333,,scossem18@nature.com,01-05-2023,22-04-2024,71.63.61.254,3.53.94.135
46,7890,2201234,,kmoxon19@cornell.edu,11-04-2023,27-04-2024,50.224.42.156,122.213.3.135
47,9012,2233321,,smaccall1a@a8.net,02-04-2023,02-02-2024,143.30.237.194,172.92.95.197
48,9012,2201234,,kacarson1b@gizmodo.com,13-07-2023,29-11-2023,212.229.61.239,188.140.230.211
49,1234,2205568,,aesbrook1c@japanpost.jp,01-10-2023,19-01-2024,96.59.76.34,199.227.173.29
50,1234,2200000,,rjozef1d@e-recht24.de,01-08-2023,20-12-2023,71.108.227.56,162.163.100.204
51,7895,2205678,,lscaife1e@tuttocitta.it,14-09-2023,20-04-2024,224.168.160.113,202.74.31.109
52,5678,2205563,,flipman1f@issuu.com,11-05-2023,27-12-2023,156.253.118.213,193.240.122.152
53,3456,2201112,,tnanelli1g@indiatimes.com,20-04-2023,08-03-2024,191.207.226.241,53.10.255.141
55,7895,2204444,,sfrowde1i@bloglines.com,26-09-2023,28-05-2024,49.130.82.220,38.91.152.21
56,9012,2200000,,afihelly1j@csmonitor.com,09-06-2023,21-01-2024,168.184.70.84,21.32.204.124
57,6549,2200000,,ptummons1k@gov.uk,22-08-2023,20-05-2024,170.164.233.85,2.139.64.28
58,6549,2205563,,szapater1l@cisco.com,13-10-2023,19-12-2023,145.139.123.110,141.227.176.43
59,5678,2205568,,darthurs1m@infoseek.co.jp,11-04-2023,13-07-2024,25.148.190.146,217.133.143.20
60,7890,2203659,,poty1n@narod.ru,15-06-2023,17-07-2024,177.119.18.230,107.87.227.6
61,7890,2203456,,sbucklee1o@liveinternet.ru,03-10-2023,17-12-2023,55.211.53.3,105.189.131.185
62,9012,2204444,,oloweth1p@livejournal.com,14-04-2023,13-06-2024,188.200.120.51,36.119.169.230
63,6549,2200000,,nedelman1q@cam.ac.uk,18-10-2023,16-05-2024,23.72.174.42,225.199.255.186
64,7895,2203456,,gellick1r@marriott.com,16-04-2023,08-07-2024,103.132.112.109,235.246.23.170
65,7890,2201112,,wdoumerc1s@vk.com,03-10-2023,25-04-2024,178.23.219.27,217.143.0.92
66,7895,2203659,,bmonery1t@furl.net,21-08-2023,15-11-2023,191.129.6.79,148.222.117.29
67,1112,2201111,,ilecount1u@pcworld.com,13-10-2023,18-06-2024,155.163.53.24,11.5.231.73
68,7895,2205698,,rguiu1v@sohu.com,06-06-2023,09-07-2024,242.131.156.214,120.86.115.206
69,7890,2201234,,jcoudray1w@deliciousdays.com,03-10-2023,27-12-2023,93.169.167.32,57.70.166.53
70,7890,2201111,,ksilcock1x@blinklist.com,10-05-2023,04-07-2024,222.124.55.245,34.235.175.217
71,5678,2209012,,tcrommett1y@samsung.com,23-06-2023,05-05-2024,134.235.92.252,216.219.141.39
72,9012,2205568,,acastano1z@omniture.com,05-10-2023,08-05-2024,123.197.7.11,213.52.145.13
73,3456,2201111,,kmalek20@dyndns.org,19-10-2023,09-04-2024,76.244.80.109,203.110.222.235
74,9012,2203456,,hchugg21@vistaprint.com,09-10-2023,14-04-2024,132.194.233.101,47.232.171.116
77,3456,2203659,,olaffin24@slashdot.org,18-09-2023,22-03-2024,206.243.151.32,243.139.212.67
79,5678,2203659,,cdennes26@dailymotion.com,10-05-2023,17-03-2024,39.115.35.233,219.207.43.143
82,1234,2201112,,bboothjarvis29@answers.com,03-04-2023,11-04-2024,165.31.183.236,223.100.213.147
84,9012,2203456,,bdomm2b@deviantart.com,05-03-2023,22-07-2024,127.121.95.132,157.33.76.0
85,6549,2205698,,cbalaizot2c@about.com,23-09-2023,02-01-2024,67.113.193.82,203.203.59.113
86,5678,2201111,,bmcanalley2d@vimeo.com,12-10-2023,14-06-2024,52.205.28.190,27.5.20.110
88,9012,2233321,,vgraysmark2f@youtu.be,10-05-2023,15-04-2024,40.123.113.160,183.25.232.221
91,1112,2203659,,xcribbott2i@surveymonkey.com,24-07-2023,12-06-2024,225.254.146.192,242.207.72.147
99,3456,2205568,,wsprull2q@blogger.com,19-03-2023,18-02-2024,126.239.197.156,60.224.78.100
100,3456,2205563,,hscrimgeour2r@squidoo.com,20-07-2023,13-11-2023,74.164.82.102,198.8.123.137
101,1112,2204444,,dlansley2s@tuttocitta.it,26-06-2023,25-11-2023,48.106.222.25,184.106.35.12
106,1112,2205678,,rivantyev2x@netvibes.com,29-05-2023,14-07-2024,90.5.171.203,10.253.21.35
108,3456,2203659,,lheighway2z@naver.com,18-09-2023,07-06-2024,20.214.172.101,9.221.44.21
112,3456,2233321,,amethingam33@google.co.jp,19-05-2023,13-12-2023,234.38.111.199,208.232.150.163
118,6549,2200000,,ivittore39@amazonaws.com,15-10-2023,03-08-2024,230.102.114.100,139.107.168.54
120,6549,2201234,,lcawthry3b@tiny.cc,10-09-2023,26-03-2024,53.255.102.74,107.200.200.210
129,1112,2203456,,sbeaufoy3k@dmoz.org,30-06-2023,17-03-2024,222.128.18.46,123.109.122.166
;
RUN;


/* Format any needed variables */
DATA fMock;
	SET rawMock;
	FORMAT po_date2 ddmmyy10.;
	FORMAT po_eta2 ddmmyy10.;
	po_date2 = INPUT(po_date, ddmmyy10.);
	po_eta2 = INPUT(po_eta, ddmmyy10.);
	DROP po_date po_eta;
RUN;


/* Remove columns that are not needed */
DATA rmvColumnMock;
	SET fMock (DROP = row null null1 null2 null3);
RUN;




/* ========================================================================== */
/* =========================== VENDOR LIST ================================== */
/* ========================================================================== */

/* Vendor #1234 */

/* Remove vendors that we don't need */
DATA raw1234Mock;
	SET rmvColumnMock;
	IF vendor_num NE 1234 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw1234Mock OUT = _1234MockReport NODUPKEY;
	BY po;
RUN;


/* Vendor #1113 */

/* Remove vendors that we don't need */
DATA raw1113Mock;
	SET rmvColumnMock;
	IF vendor_num NE 1113 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw1113Mock OUT = _1113MockReport NODUPKEY;
	BY po;
RUN;


/* 7890 */

/* Remove vendors that we don't need */
DATA raw7890Mock;
	SET rmvColumnMock;
	IF vendor_num NE 1234 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw7890Mock OUT = _7890MockReport NODUPKEY;
	BY po;
RUN;


/* 9012 */

/* Remove vendors that we don't need */
DATA raw9012Mock;
	SET rmvColumnMock;
	IF vendor_num NE 9012 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw9012Mock OUT = _9012MockReport NODUPKEY;
	BY po;
RUN;


/* 5678 */

/* Remove vendors that we don't need */
DATA raw5678Mock;
	SET rmvColumnMock;
	IF vendor_num NE 5678 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw5678Mock OUT = _5678MockReport NODUPKEY;
	BY po;
RUN;


/* 7895 */

/* Remove vendors that we don't need */
DATA raw7895Mock;
	SET rmvColumnMock;
	IF vendor_num NE 7895 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw7895Mock OUT = _7895MockReport NODUPKEY;
	BY po;
RUN;


/* 3456 */

/* Remove vendors that we don't need */
DATA raw3456Mock;
	SET rmvColumnMock;
	IF vendor_num NE 3456 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw3456Mock OUT = _3456MockReport NODUPKEY;
	BY po;
RUN;


/* 6549 */

/* Remove vendors that we don't need */
DATA raw6549Mock;
	SET rmvColumnMock;
	IF vendor_num NE 6549 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw6549Mock OUT = _6549MockReport NODUPKEY;
	BY po;
RUN;


/* 1112 */

/* Remove vendors that we don't need */
DATA raw1112Mock;
	SET rmvColumnMock;
	IF vendor_num NE 1112 THEN DELETE;
	LABEL
		vendor_num = "Vendor Number"
		po = "PO"
		po_date2 = "PO Date"
		po_eta2 = "PO ETA"
	;
RUN;


/* Remove duplicates by sorting po variable */
PROC SORT DATA = raw1112Mock OUT = _1112MockReport NODUPKEY;
	BY po;
RUN;


/* PROC PRINT all reports */
PROC PRINT DATA = _1234MockReport LABEL NOOBS;
TITLE '1234 Mock Report';
RUN;
PROC PRINT DATA = _1113MockReport LABEL NOOBS;
TITLE '1113 Mock Report';
RUN;
PROC PRINT DATA = _7890MockReport LABEL NOOBS;
TITLE '7890 Mock Report';
RUN;
PROC PRINT DATA = _9012MockReport LABEL NOOBS;
TITLE '9012 Mock Report';
RUN;
PROC PRINT DATA = _5678MockReport LABEL NOOBS;
TITLE '5678 Mock Report';
RUN;
PROC PRINT DATA = _7895MockReport LABEL NOOBS;
TITLE '7895 Mock Report';
RUN;
PROC PRINT DATA = _3456MockReport LABEL NOOBS;
TITLE '3456 Mock Report';
RUN;
PROC PRINT DATA = _6549MockReport LABEL NOOBS;
TITLE '6549 Mock Report';
RUN;
PROC PRINT DATA = _1112MockReport LABEL NOOBS;
TITLE '1112 Mock Report';
RUN;
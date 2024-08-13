/* Import raw csv, set length of appropriate variables */
DATA rawMock; 
	INFILE "/home/u63171931/Projects/Mock SAS Data Cleaning Example/MOCK_DATA.csv" dsd;
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
REPORT Z_CALCULATOR.
PARAMETERS:	a TYPE i,
			b TYPE i,
			operator TYPE c.
DATA:	result TYPE i.

CASE operator.
	WHEN '+'.
		result = a + b.
	WHEN '-'.
		result = a - b.
	WHEN '*'.
		result = a * b.
	WHEN '/'
		result = a / b.
ENDCASE.

WRITE: 'Result of operation is ', result.
	
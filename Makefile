push:
	SNOWSQL_USER=$(USER) \
	SNOWSQL_ACCOUNT=SNOWHOUSE \
	SNOWSQL_ROLE=ENGINEER \
	SNOWSQL_WAREHOUSE=SNOWADHOC \
	snowsql \
	--authenticator externalbrowser \
	-o variable_substitution=true \
	-f push.sql \
	-D localfile=$(CURDIR)/test_streamlit.py \
	-D user=$(USER)
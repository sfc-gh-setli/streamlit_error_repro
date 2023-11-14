USE SCHEMA TEMP.&user;
CREATE OR REPLACE STREAMLIT b QUERY_WAREHOUSE = SNOWADHOC MAIN_FILE = 'test_streamlit.py';
ALTER streamlit b checkout;
PUT file:///&localfile snow://streamlit/b/default_checkout overwrite=true auto_compress=false;

-- ALTER streamlit b set MAIN_FILE = 'main.py';

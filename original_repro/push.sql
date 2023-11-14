-- Create a stage into which we can upload the main file for the Streamlit
CREATE STAGE IF NOT EXISTS TEMP.&user.TEST_STAGE;

-- Upload the local file to the stage
PUT file:///&localfile @TEMP.&user.TEST_STAGE overwrite=true auto_compress=false;

-- Ensure the Streamlit exists
USE SCHEMA TEMP.&user;
CREATE OR REPLACE STREAMLIT test_streamlit_repro_&user
    FROM '@TEMP.&user.TEST_STAGE'
    MAIN_FILE = '/test_streamlit.py'
    QUERY_WAREHOUSE = SNOWADHOC;


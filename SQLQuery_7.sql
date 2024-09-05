DROP PROCEDURE IF EXISTS sanj124;
GO

CREATE PROCEDURE sanj124
    @jobnumber INT,
    @date_Completion DATE,
    @typeofjob VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Update the job_f table with completion date and additional information
    UPDATE Job_dett
    SET Date_completed = @date_Completion,
        type_job = @typeofjob
    WHERE Jobno = @jobnumber;
END;


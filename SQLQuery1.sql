

CREATE TABLE dbo.DataValidationErrors (
    RowNumber INT,                         -- Row number in the dataset
    ColumnName NVARCHAR(100),              -- Name of the column with error
    ErrorType NVARCHAR(255),               -- Type of error (Missing, Invalid Type, etc.)
    Value NVARCHAR(255),                   -- The actual invalid or missing value
    ValidatedAt DATETIME DEFAULT GETDATE() -- Timestamp when the error was logged
);
select * from dbo.DataValidationErrors	;

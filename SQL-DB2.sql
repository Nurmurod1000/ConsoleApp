create table Student(
Id int primary key identity(1,1),
Ism varchar(30),
Familiya varchar(40),
Yosh int
)

insert into Student(Ism, Familiya, Yosh)
values('Ali', 'Aliyev', 12)

SELECT * FROM Student;
GO

CREATE PROCEDURE sp_AddStudent
    @Ism NVARCHAR(50),
    @Familiya NVARCHAR(50),
    @Yosh INT
AS
BEGIN
    INSERT INTO Student (Ism, Familiya, Yosh)
    VALUES (@Ism, @Familiya, @Yosh);
END
GO

CREATE PROCEDURE sp_GetAllStudents
AS
BEGIN
    SELECT * FROM Student
END
GO

CREATE PROCEDURE sp_GetStudentById
    @Id INT
AS
BEGIN
    SELECT * FROM Student WHERE Id = @Id
END
GO

CREATE PROCEDURE sp_UpdateStudent
    @Id INT,
    @Ism NVARCHAR(50),
    @Familiya NVARCHAR(50),
    @Yosh INT
AS
BEGIN
    UPDATE Student
    SET Ism = @Ism, Familiya = @Familiya, Yosh = @Yosh
    WHERE Id = @Id
END
GO

CREATE PROCEDURE sp_DeleteStudent
    @Id INT
AS
BEGIN
    DELETE FROM Student WHERE Id = @Id
END
GO


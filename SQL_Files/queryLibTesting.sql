-- This file IS intended TO test ALL queries WITHIN the queryLib STATIC class.

-- Testing selectUserData
SELECT * 
FROM Users 
WHERE UUID = :uuid;

-- Testing selectUserCareers
SELECT * 
FROM Users, Careers, Professions
WHERE Users.UserID = :userID
AND Users.UserID = Careers.UserID 
AND Professions.ProfessionID = Careers.ProfessionID;

-- Testing selectUserSideJobs
SELECT *
FROM Users, SideJobs, SubProfessions
WHERE Users.UserID = :userID
AND Users.UserID = SideJobs.UserID
AND SubProfessions.SubProfessionID = SideJobs.SubProfessionID;

-- Testing selectLevelInfo
SELECT *
FROM Levels
WHERE LevelID = :levelID;
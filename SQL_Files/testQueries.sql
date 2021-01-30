SELECT * FROM Users;
SELECT * FROM Professions;


-- Select a specific User
SELECT * FROM Users WHERE UUID = :uuid;

-- Select a users Careers
SELECT * 
FROM Users, Careers, Professions
WHERE Users.UserID = :userID
AND Users.UserID = Careers.UserID
AND Professions.ProfessionID = Careers.ProfessionID;

-- Select a users SideJobs
SELECT *
FROM Users, SideJobs, SubProfessions
WHERE Users.UserID = :UserID
AND Users.UserID = SideJobs.UserID
AND SubProfessions.SubProfessionID = SideJobs.SubProfessionID;

SELECT *
FROM Careers, UserProfHasAugments
WHERE Careers.UserID = :userID
AND UserProfHasAugments.ProfessionID = :profID
AND Careers.UserID = UserProfHasAugments.UserID
AND Careers.ProfessionID = UserProfHasAugments.ProfessionID;

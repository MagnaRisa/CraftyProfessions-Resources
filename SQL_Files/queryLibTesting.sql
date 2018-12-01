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

-- Select a (User, Profession) pair's augments.
-- I Might need to return more info here, but for now this will work.
SELECT Careers.UserID, AugmentID, Careers.ProfessionID
FROM Careers, UserProfHasAugments
WHERE Careers.UserID = :userID
AND UserProfHasAugments.ProfessionID = :profID
AND Careers.UserID = UserProfHasAugments.UserID 
AND Careers.ProfessionID = UserProfHasAugments.ProfessionID;

-- Select a (User, SubProfession) pair's augments
-- I Might need to return more info here, but for now this will work.
SELECT SideJobs.UserID, AugmentID, SideJobs.SubProfessionID
FROM SideJobs, UserSideJobHasAugments 
WHERE SideJobs.UserID = :userID
AND UserSideJobHasAugments.SubProfessionID = :subProfID 
AND SideJobs.UserID = UserSideJobHasAugments.UserID 
AND SideJobs.SubProfessionID = UserSideJobHasAugments.SubProfessionID
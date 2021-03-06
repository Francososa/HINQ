module Lib.Types where

data Name = Name
  { firstName :: String
  , lastName :: String }

instance Show Name where
  show (Name first last) = mconcat [first," ",last]


data GradeLevel = Freshman
  | Sophmore
  | Junior
  | Senior deriving (Eq,Ord,Enum,Show)


data Student = Student
  { studentId :: Int
  , gradeLevel :: GradeLevel
  , studentName :: Name } deriving Show


data Teacher = Teacher
  { teacherId :: Int
  , teacherName :: Name } deriving Show

data Course = Course
  { courseId :: Int
  , courseTitle :: String
  , teacher :: Int } deriving Show


data Enrollment = Enrollment
  { student :: Int
  , course :: Int } deriving Show


data HINQ m a b = HINQ (m a -> m b) (m a) (m a -> m a)
                | HINQ_ (m a -> m b) (m a)


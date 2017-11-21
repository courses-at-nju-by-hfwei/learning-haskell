-- file: ch03/BookStore.hs

module BookStore where

-- Book
data BookInfo = Book Int String [String]
                deriving Show

data MagazineInfo = Magazine Int String [String]
                    deriving Show

myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

-- BookReview
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody


-- BillingInfo
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                | CashOnDelivery
                | Invoice CustomerID
                  deriving Show



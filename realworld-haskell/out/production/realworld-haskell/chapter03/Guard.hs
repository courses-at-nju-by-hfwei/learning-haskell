-- file: Guard.hs

module Guard where

fromMaybe :: t -> Maybe t -> t
fromMaybe defval wrapped =
    case wrapped of
         Nothing -> defval
         Just value -> value

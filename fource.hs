-- 2023 Alfred Rpps


-- apply the argument function once to the argument value
once :: (a -> a) -> a -> a
once fun arg = fun arg

-- apply the argument function twice to the argument value
twice :: (a -> a) -> a -> a
twice fun arg = ( fun . fun ) arg

-- apply the argument function thrice to the argument value
thrice :: (a -> a) -> a -> a
thrice  fun arg = ( fun . fun . fun)   arg

-- apply the argument function "fource" to the argument value
fource :: (a -> a) -> a -> a
fource  fun arg = ( fun . fun . fun . fun)   arg

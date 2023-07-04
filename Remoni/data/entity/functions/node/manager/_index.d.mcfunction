#> entity:node/manager/_index.d
# @private

#> storage
# @within function
#   entity:node/asset/*/register/*
#   entity:node/manager/register/*
    #declare storage entity:node

#> tag
# @within *
#   entity:node/**/register/*
#   core:tick/
    #declare tag Node

#> tag
# @within function
#   entity:node/manager/register/*
    #declare tag NodeInit
#> asset_manager:node/_index.d
# @private

#> storage
# @within function
#   asset:node/*/register/*
#   asset:node/common/register/*
#   asset_manager:node/**
    #declare storage asset:node

#> tag
# @within *
#   asset:node/*/register/
#   asset_manager:node/**
#   core:tick/
    #declare tag Node

#> tag
# @within function
#   asset_manager:node/register/*
    #declare tag NodeInit
#> asset:node/example_1/register/register
#
#
#
# @within function asset:node/example_1/register/

# ID (int)
    data modify storage asset:node ID set value 2147483647
# Type (string)
    data modify storage asset:node Type set value "supply"
# Amount (double) (optional)
    data modify storage asset:node Amount.Base set value 100.0
# Element (optional)
    # None (double)
        data modify storage asset:node Element.None set value 1.3
    # Fire (double)
        data modify storage asset:node Element.Fire set value 0.5
    # Water (double)
        #data modify storage asset:node Element.Water set value 0.0
    # Wind (double)
        #data modify storage asset:node Element.Wind set value 0.0
    # Earth (double)
        data modify storage asset:node Element.Earth set value 0.2
    # Light (double)
        #data modify storage asset:node Element,Light set value 0.0
    # Dark (double)
        #data modify storage asset:node Element.Dark set value 0.0

# Relative (IntList) (optional)
    #data modify storage asset:node Relative set value [1]

function asset:node/common/register/
# DEATHWATCH CALCULATOR README

A single page website that offers an alternative point buy system during character creation for FFG's Deathwatch

-----

#### Characteristics

Nine stats are used in this iteration of the website. They are only listed within `character_controller.rb` and referenced in both `calculator.html.erb` and `calculator.coffee`. If you wish to change the stat names or the number of stats, that is the only place you need to make modifications in.


#### Range

The base numerical inputs range from 30..50

The chapter numerical inputs range from -10..10

Only integer inputs are allowed.

#### Cost

The cost of the first five points (above 30) is one each.

The cost of the next five points (above 35) is two each.

The cost of the next five points (above 40) is three each.

The cost of the next five points (above 45) is four each.

Chapter (equivalent to race bonuses in most other systems) fields have no associated cost but still are added to the total.

#### Invalid Inputs

If an invalid entry is given (such as -100, 33.3333, or 1000) the base field will reset to 30 while the chapter field will reset to 0. 

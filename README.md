<img src="https://github.com/PoeticRainbow/rainbows-foliage/blob/master/gallery/rainbows-foliage.png?raw=true" align=center alt="rainbow's foliage logo">

<div align=center>
  <img alt="polytone edition downloads" src="https://img.shields.io/modrinth/dt/rainbows-foliage?style=flat&logo=modrinth&label=polytone%20edition&link=https%3A%2F%2Fmodrinth.com%2Fresourcepack%2Frainbows-foliage">
  <img alt="vanilla edition downloads" src="https://img.shields.io/modrinth/dt/rainbows-foliage-vanilla-edition?style=flat&logo=modrinth&label=vanilla%20edition&link=https%3A%2F%2Fmodrinth.com%2Fresourcepack%2Frainbows-foliage-vanilla-edition">
</div>

# **rainbow's foliage**
a resource pack all about adding detail and variation to vegetation and other blocks. split into two versions, one that is compatible with Vanilla and another which requires the PolyTone mod. the vanilla edition currently only changes leaves, while the polytone edition affects a large number of plants.

<img src="https://github.com/PoeticRainbow/rainbows-foliage/blob/master/gallery/dark_forest_half.png?raw=true" align=center alt="a dark forest, half vanilla edition half polytone edition">

## performance
rainbow's foliage adds detail to leaves without adding any extra geometry. this means there should be little to no performance hit when using it over vanilla.

## vanilla vs polytone
<img src="https://github.com/PoeticRainbow/rainbows-foliage/blob/master/gallery/comparison_oak.png?raw=true" align=center alt="a comparison of oak trees between the two editions">
<img src="https://github.com/PoeticRainbow/rainbows-foliage/blob/master/gallery/comparison_spruce.png?raw=true" align=center alt="a comparison of spruce trees between the two editions">

## compatibility
rainbow's foliage: vanilla edition takes advantage of 1.21.6+ unrestricted rotation angles. you can use this edition on 1.21.5 and below by installing [puzzle](https://modrinth.com/mod/puzzle).

rainbow's foliage: polytone edition takes advantage of [polytone](https://modrinth.com/mod/polytone)'s unrestricted multiple axis rotations in blockstate files. this means each leaf only needs one model and one blockstate file which dramatically decreases bloat compared to the vanilla edition.

are you a resource pack creator? you can add support for rainbow's foliage by adding your own retextures of `[variant]_leaves_bushy`. then, players can put your pack **on top** of rainbow's foliage to make it work! note: this **will not work** if the resource pack itself modifies leaf models or blockstates.

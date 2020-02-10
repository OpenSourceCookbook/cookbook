# OpenSourceCookbook Project

Welcome to the OpenSourceCookbook Project's primary work repository.  We welcome contributions, but please note that they must conform to our general style, and you must agree to license your contribution under CC BY-SA 4.0 (see LICENSE.txt).

## Technical

When contributing a recipe, please use the following general format:

```latex
\begin{recipe}{Name Of Recipe}{Name of Contributor (optional)}{Number of Servings (optional)}
  \begin{ingredients}
    \ingredient{ingredient 1}{amount}
    \ingredient{ingredient 2}{amount}
  \end{ingredients}
  \begin{enumerate}
    \item Step 1
    \item Step 2
    \item \ldots
    \item Final Step
  \end{enumerate}
  \begin{note}
    Note to cook.
  \end{note}
\end{recipe}
```

Several fraction-specific commands are provided for measurements.  If an un-defined fraction is necessary either add it to `texmf/recipe.sty` or simply use `\nicefrac{num}{denom}`.

 - `\quarter`
 - `\third`
 - `\half`
 - `\twothirds`
 - `\threequarters`

## Style

 - Recipes should, in general, include at least an estimated number of servings.
 - Recipes should also be written in a fairly direct style.  No extensive backstories.
 - Ingredient listings should avoid capitalizing names, except for placenames (*e.g.,* Worcestershire), and thus should avoid recommending specific brands of products.
 - Acceptable heats for stove-top use are: low, medium-low, medium, medium-high, high.
 - Oven temperatures should be quoted in Farenheit, as opposed to Celsius (at least until a unit-tagging system has been prepared).
 - Except for baking, use US customary measurements.  We'll be working on a way to convert between customary and metric at a later time.
 - Remember to index by major ingredient, technique and cuisine, as well as common dietary restrictions to which the recipe easily conforms.
 - Common dietary restrictions include:
   - Kosher/Kashrut
   - Halal
   - Vegetarian
   - Vegan
   - Dairy-free
   - Peanut-free
   - Nut-free
   - Wheat-free

## Building the Cookbook

 - The document, as a whole, may be built using `nix-build` assuming Nix is installed.  If it is not, make is likely sufficient, assuming the requisite LaTeX packages are installed.
 - During development, it is recommended that `nix-shell --command 'make continuous'` is used to ensure that formatting is correct.

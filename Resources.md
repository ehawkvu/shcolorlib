# Helpful Links:
  * https://en.wikipedia.org/wiki/CMYK_color_model#Conversion
  * https://en.wikipedia.org/wiki/HSL_and_HSV#From_RGB
  * https://stackoverflow.com/questions/39118528/rgb-to-hsl-conversion?noredirect=1&lq=1
  * https://stackoverflow.com/questions/11237794/how-to-compare-two-decimal-numbers-in-bash-awk#11238237
  * https://gist.github.com/mjackson/5311256
  * https://en.wikipedia.org/wiki/HSL_and_HSV#Formal_derivation
  * https://stackoverflow.com/questions/2353211/hsl-to-rgb-color-conversion#9493060
  * https://stackoverflow.com/questions/4858131/rgb-to-cmyk-and-back-algorithm

# I have also added in methods that are implemented in both c and javascript, using
# tcc and quickjs respectively. I think that using these methods to perform speed
# improvements that might not otherwise be possible in a shell script is worthwhile,
# and doesn't take away from the mission of this library, because no method is going
# to be reliant on either of these programs. If the user wants to use these methods
# to get a speed improvement, then they should be able to. But the user should also
# be free to not depend on tcc and quickjs use these methods as well.

# Alternative Runtimes:

- quickjs
  - homepage: https://bellard.org/quickjs/
	- doc: https://bellard.org/quickjs/quickjs.html
- tcc
  - homepage: https://bellard.org/tcc/

# I *wont* add any runtime that requires a million and 1 dependencies. The whole point
# of this library is for use in shellscripts, so what use is adding python versions of
# the code? If you use python, just import 'colorsys'. The reason that c and javascript
# are supported is because both have very fast runtimes, on par with shell itself. The
# only other runtime I think would be worth supporting would be luajit.

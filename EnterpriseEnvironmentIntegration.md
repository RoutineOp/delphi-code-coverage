# Introduction #

The page describing options to use this tool in your ... well ... pretty damn expensive playground :D.


# Details #

**Continuous Integration server integration**

You can integrate the xml report using the Hudson / Jenkins EMMA plugin. The html report can be integrated using the HTML Publisher plugin.
Use -emma switch to get EMMA compatible output.

Also, related info for Sonar can be found here: http://stackoverflow.com/questions/13797440/which-program-analyis-tools-for-delphi-support-continuous-integration-systems

**IBM RationalRobot integration**

You can intergate it with database-ware testing Suite from IBM. Connection is made as follows: jenkinsCI(Project) -> RationalRobot(Project) -> [Delphi-Code-Coverage] -> EMMA(Project.output) -> jenkinsCI(Project.output)

Related Question: http://stackoverflow.com/questions/1660141/java-measure-code-coverage-for-remote-scripting-tests

**Memory Managament and Optimization Tools**

TBD.

**Error logging extensibility with other Logging software**

_`[PROTOTYPE]`_
madExcept (v3.x) can be used to determine and additionaly highlight the code. If error occurs and madExcept is available, the CallStack is highlighted in the coverage report.

Related Issue: http://code.google.com/p/delphi-code-coverage/issues/detail?id=37

Related Branch: http://delphi-code-coverage-madexcept.googlecode.com/svn/trunk/

Related Components: http://code.google.com/p/delphi-code-coverage-madexcept/wiki/RelatedProjects?ts=1336377933&updated=RelatedProjects

Related blog: http://linardsliepins.wordpress.com/
## Chapter 2 - Configuration Management
* **USE CONFIGURATION MANAGEMENT**
    * The entire CD process flows out of this, there is no point continuing on unless you are doing this
* Use it for everything
    * Code
    * Configuration
        * Config in the DB
        * Config Files
        * Infrastructure
        * Environment Variables
* You need to answer yes to these 5 questions:
    * Can I exactly reproduce any of my environments including version of all attributes (OS, etc)
    * Can I easily make incremental changes
    * Can I easily trace all changes
    * Can I satisfy all compliance regulations?
    * Can every member of the team get the information they need and make the changes they need?
* Don't branch
    * Expanded upon in Chapter 14 I guess
    * This is antithetical to how modern (EG git) works
    * Idea being that if we are all checking in to master/trunk then we can be all be constantly in sync and we will know nearly always that the build is not broken (tests are passing)
    * I wonder how git solves this?
* Commit often
* Run tests after each commit
* Enforce good traceability in the commit messages
* Keep dependencies Local
    * This doesn't necessarily mean in Version Control (See [JFrog](https://jfrog.com/) or [Nexus](https://www.sonatype.com/nexus-repository-sonatype))
* Configuration Should be:
    * Versioned
    * Available
    * Visible (version in [Nagios](https://www.nagios.org/) for instance)
    * Tested
* Change should only come from CI/CD
    * Deployed instances should be locked down from getting changed outside of your process
    * If they are not, you lose your traceability and your ability to rebuild what is in production  

## Chapter 3 - Continuous Integration
* For CI you need
    * Version Control
    * Automated Build
    * Agreement from the team to do CI and not break the build
* Need to check in regularly
    * Many times a day preferred, but at least once a day at minimum
* Automated tests are absolutely mandatory, without them CI only ensures your stuff compiles
* Build/Test run must be short, if it is long it won't get done
* Devs should be able to get an up to date clean build at all times
* CI Software is basically two parts
    * Long running process that kicks off builds
        * Scheduled
        * Triggered by something (check-ins maybe)
    * A view in to the builds and their history
    * Everything else is just extra
* Practices
    * Don't check in to a broken build
    * Always run all tests before check-in
        * This can be done automatically with pre-commit hooks
    * Never go home on a broken build
    * Be able to easily revert bad commits
        * Consider time boxing fixes for broken builds
            * Give the committer ten minutes or so to make the fix and test it and check it in, after that revert it and let them fix it
    * Don't comment out or disable tests
        * Consider failing the build if too many tests are commented out
    * Everyone needs to take responsibility for their commits
        * WHen the build breaks, but really at all times
* Suggested practices
    * TDD
        * Though [TDD is dead?](https://www.martinfowler.com/articles/is-tdd-dead/)
    * XP practices
    * Architecture tests
        * Automated tests that enforce code design
    * Fail build on slow tests
    * Test/Enforce code style
        * I have seen Sonar do this fabulously
* Distributed teams
    * Essentially changes nothing these days
        * Should use DVCS
        * Failures are magnified as teams cross time zones - if a broken build is left after a "shift" the next TZ will be heavily affected
        * Centralized and Virtualized CI is important
            * Members in all regions should be empowered to maintain CI in case of issues
    * If low bandwidth is an issue, local builds could work
        * Preferred shipping binaries around, but building locally ad validating checksums 
* Can't do CI with github or other DVCS when used as intended
    * You could try to auto merge and build but it will fail
* Look in to ["Promiscuous Integration"](https://martinfowler.com/bliki/FeatureBranch.html)  

## Chapter 4 - Testing Strategies
* W. Edward Demmings - "Cease dependence on mass inspection..... Improve processes instead"
* Write Automated tests at all levels
    * Unit
    * Component/Integration
    * Acceptance
* Run as part of the deployment pipeline
    * How does that work with gated checkins?
* Don't neglect usability and exploratory testing
* Non-Functional tests should be automated
    * Performance
    * Security
    * Etc.
* See [agile testing Cripsin and Gregory Addison-Wesley 2009](https://www.amazon.com/Agile-Testing-Practical-Guide-Testers/dp/0321534468)
* ![Brian Marick Test Matrix](https://lisacrispin.com/wp-content/uploads/2011/11/Agile-Testing-Quadrants.png)

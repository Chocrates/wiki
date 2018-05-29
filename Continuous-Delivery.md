## Chapter 2 - Configuration Management
* _USE CONFIGURATION MANAGEMENT_
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
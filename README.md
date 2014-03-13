jekyll-case-url
===============

Implements a `{% case_url tag %}` to use in Jekyll.

Imagine that you want to be able to mention a case in change management system. It could be that you are contribution to Jenkins CI and want to be mention cases in the Jenkins CI issue tracking system

like:

`https://issues.jenkins-ci.org/browse/JENKINS-19823`

---

In the `_config.yml` file add then the entry:

    case_path: https://issues.jenkins-ci.org/browse/
    
In your MarkDown you can now mention this case like this:

    Case {% case_url JENKINS-19823%} was about improving performance

Which will then render to:

    Case <a class="case" href="https://issues.jenkins-ci.org/browse/JENKINS-19823">JENKINS-19823</a> was about improving performance


Case <a class="case" href="https://issues.jenkins-ci.org/browse/JENKINS-19823">JENKINS-19823</a> was about improving performance

---

To install simply create a folder named `_plugins` in your Jekyll site and copy the `case-url.rb` file to it.
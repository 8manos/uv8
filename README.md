Rails Sample App on OpenShift
=========================

Quickstart rails application for openshift.

Running on OpenShift
--------------------

Create an account at http://openshift.redhat.com/

Create a rails application

    rhc-create-app -a railsapp -t rack-1.1

Add mysql support to your application
    
    rhc-ctl-app -a railsapp -e add-mysql-5.1

Add this upstream rails quickstart repo

    cd railsapp
    git remote add upstream -m master git://github.com/gshipley/rails-openshift-quickstart.git
    git pull -s recursive -X theirs upstream master

Then push the repo upstream

    git push

That's it, you can now checkout your application at:

    http://railsapp-$yournamespace.rhcloud.com

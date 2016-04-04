### README

Zerista Code Challenge

To run locally first clone this repo `$ git clone git@github.com:MattRooney/zerista_code_challenge.git`

Then `$ bundle`

And `$ rake db:create db:migrate` and `rake import`

To run the test suite, simply run `$ rake`

My last meaningful commit is on the `add-track-model` branch where I was attempting to refactor the schema, creating both a Session and Track model with the proper relationship to allow for toggling Tracks as well as days in the views.

# CleanupRecordings

TVHeadend allows you to record TV shows and it stores them in /home/hts. Problem is it doesn't cleanup after itself. 

This allows you to cleanup and set a minimum amount of space you want to leave on that partition.

## Installation

    $ gem install cleanup_recordings

## Usage


Use -s<GB> to set the space you want to reserve.\\
EG: cleaning up to 20GB left.\\

    $ cleanup_recordings -s20

Add the following to crontab

    00 00	  * * * root	/usr/local/bin/cleanup_recordings -s20

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/map7/cleanup_recordings.


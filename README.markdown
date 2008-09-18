acts\_as\_abusable
==================

Tiny plugin to mark any rails model instance as an abuse or site's community guideline violation.

Installation
------------

<pre>
script/plugin install git://github.com/linkingpaths/acts_as_abusable.git
script/generate acts_as_abusable_migration
rake db:migrate
</pre>


Example
-------

<pre>
class Photo < ActiveRecord::Base
  acts_as_abusable
end
</pre>

This gives you:

<pre>
# All reported abuses
penthouse_sweetie_photo.reported_abuses

# Positive abuses
penthouse_sweetie_photo.reported_abuses.confirmed

# Still not evaluated abuses
penthouse_sweetie_photo.reported_abuses.pending

# Confirmed. This is inter....erhm... and abuse.
penthouse_sweetie_photo.is_an_abuse?
</pre>

And a new ´Abuse´ model:

<pre>
abuse.confirmed?
abuse.confirm!

# URL used as base for 
abuse.referer

# Resource that supposely is an abuse
abuse.resource
</pre>

Copyright (c) 2008 Linking Paths, released under the MIT license

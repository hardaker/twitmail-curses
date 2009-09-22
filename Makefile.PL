# Copyright (C) 2009 Wes Hardaker
# License: GNU GPLv2.  See the COPYING file for details.
#!/usr/bin/perl

use ExtUtils::MakeMaker;

%opts = (
	 'NAME'		=> 'twitmail',
#	 'PMLIBDIRS'    => ['twitmail'], 
	 'PREREQ_PM'    => { Net::Twitter => 0,
			     Getopt::GUI::Long => 0,
			     Text::Wrap => 0,
			     Date::Parse => 0,
			     Curses::UI => 0,
			     Curses => 0,
			     DBI => 0,
			     Term::ReadKey => 0,
			   },
	 'EXE_FILES'    => [qw(twitmail)],
         'VERSION_FROM' => 'twitmail',         # finds $VERSION
	);

WriteMakefile(%opts);

#!/bin/sh

if test ! -f Curses/UI/Language/english.pm ; then
    mkdir -p Curses/UI/Language
    cp -pr /usr/local/lib/perl5/site_perl/5.10.0/Curses/UI/Language/*.pm Curses/UI/Language/
fi

#   -M Curses::UI::Pop 

pp -M Net::Twitter  -M Net::Twitter::Role::Legacy \
   -M Net::Twitter::Role::API::REST \
   -M Net::Twitter::Role::API::Search \
   -M Net::Twitter::Role::API::TwitterVision \
   -M Net::Twitter::Role::WrapError \
   -M Net::Twitter::Role::OAuth \
   -M Net::Twitter::Role::InflateObjects \
   -M LWP::UserAgent \
   -M Curses::UI::Buttonbox \
   -M Curses::UI::Calendar \
   -M Curses::UI::Checkbox \
   -M Curses::UI::Color \
   -M Curses::UI::Common \
   -M Curses::UI::Container \
   -M Curses::UI::Label \
   -M Curses::UI::Language \
   -M Curses::UI::Listbox \
   -M Curses::UI::Menubar \
   -M Curses::UI::Notebook \
   -M Curses::UI::PasswordEntry \
   -M Curses::UI::Progressbar \
   -M Curses::UI::Radiobuttonbox \
   -M Curses::UI::Searchable \
   -M Curses::UI::TextEditor \
   -M Curses::UI::TextEntry \
   -M Curses::UI::TextViewer \
   -M Curses::UI::Widget \
   -M Curses::UI::Window \
   -M Curses::UI::Dialog::Basic \
   -M Curses::UI::Dialog::Calendar \
   -M Curses::UI::Dialog::Dirbrowser \
   -M Curses::UI::Dialog::Error \
   -M Curses::UI::Dialog::Filebrowser \
   -M Curses::UI::Dialog::Progress \
   -M Curses::UI::Dialog::Question \
   -M Curses::UI::Dialog::Status \
   -M Curses::UI::Language::english \
   -a Curses/UI/Language/english.pm \
   -o twitmail.`uname -s | tr A-Z a-z` twitmail

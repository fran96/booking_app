# -*- encoding: utf-8 -*-
# stub: sequence 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "sequence".freeze
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Caleb Clausen".freeze]
  s.date = "2016-05-19"
  s.description = "Sequence provides a unified api for access to sequential data types, like\nStrings, Arrays, Files, IOs, and Enumerations. This is the external \niterator pattern (ruby's usual iterators are internal). Each sequence \nencapsulates some data and a current position within it. Some operations \napply to data at (or relative to) the position, others are independant \nof position. The api contains operations for moving the position, and \nreading  and writing data (with or without moving the position) forward \nor backward from the current position or anywhere.\n\nIts perhaps most unusual feature is the ability to scan for Regexps in\nnot just Strings, but Files and any other type of sequence. ".freeze
  s.email = "caleb (at) inforadical (dot) net".freeze
  s.extra_rdoc_files = ["README.txt".freeze, "COPYING".freeze, "GPL".freeze]
  s.files = ["COPYING".freeze, "GPL".freeze, "README.txt".freeze]
  s.homepage = "http://github.com/coatl/sequence".freeze
  s.licenses = ["GPL-2.0".freeze]
  s.rdoc_options = ["--main".freeze, "README.txt".freeze]
  s.rubyforge_project = "sequence".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A single api for reading and writing sequential data types.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version
end

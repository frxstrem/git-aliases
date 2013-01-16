#!/usr/bin/python
# encoding: utf-8

import pipes
escape = pipes.quote

if __name__ != '__main__': exit()

fp = open('aliases', 'r')

commands = []

for line in fp:
	n = line.split(';', 3)
	if len(n) < 3: continue
	commands.append(n)

fp.close()

inst = open('install.sh', 'w')
doc = open('GitAliases.md', 'w')

inst.write("#!/bin/sh\n")
inst.write("# install git aliases\n\n")

doc.write("# Git aliases\n\n")

for (a, c, d) in commands:
	print 'Command: git %s' % (a,)
	inst.write("git config --global	alias.%s %s\n" % (a, escape(c)))
	doc.write("# `git %s`\n\n" % (a,))
	doc.write("%s\n\n" % (d,))
	doc.write("```sh\ngit config --global alias.%s %s\n```\n\n" % (a, escape(c)))

inst.close()
doc.close()

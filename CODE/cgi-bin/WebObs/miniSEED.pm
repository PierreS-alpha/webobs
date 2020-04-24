package WebObs::miniSEED;

=head1 NAME

Package WebObs : miniSEED related perl-cgi functions

=head1 SYNOPSIS

use WebObs::miniSEED

=head1 FUNCTIONS

=cut

use strict;
use warnings;
use Encode;
use File::Basename;

our(@ISA, @EXPORT, @EXPORT_OK, $VERSION);
require Exporter;
@ISA     = qw(Exporter);
@EXPORT  = qw();
$VERSION = "1.00";


# -------------------------------------------------------------------------------------------------

=pod

=head2 getseedlinkdata, getarclinkdata, getfdsnwsdata, getfiledata, getwinstondata

gets miniSEED data from various data sources for given streams and timerange :

	$miniseed = getseedlinkdata();
	$miniseed = getarclinkdata();
	$miniseed = getfdsnwsdata();
	$miniseed = getfiledata();
	$miniseed = getwinstondata();

=cut

sub getseedlinkdata
{

}

sub getarclinkdata
{

}

sub getfdsnwsdata
{

}

sub getfiledata
{

}

sub getwinstondata
{

}


# -------------------------------------------------------------------------------------------------

=pod

=head2 selectdatasource

select miniSEED data source to call depending on SEFRAN3 configuration and data timerange

	$datasource = selectdatasource();

=cut

sub selectdatasource
{

}


# -------------------------------------------------------------------------------------------------

=pod

=head2 getSEFRANminiSEED

get miniSEED data from a given SEFRAN3 datasource and timerange

	$mseedfile = getSEFRANminiSEED();

=cut

sub getSEFRANminiSEED
{

}

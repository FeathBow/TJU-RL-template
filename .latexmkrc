# XeLaTeX compilation mode
$pdf_mode = 5;
$postscript_mode = $dvi_mode = 0;
$xdv_mode = 0;

# Reproducible builds: Use git commit time of source files
# PDF timestamp only changes when .tex or .cls files are modified in git
if (!$ENV{'SOURCE_DATE_EPOCH'}) {
    # Get the most recent commit timestamp for source files
    my $git_time = `git log -1 --format=%ct -- main.tex TJUletter.cls 2>/dev/null`;
    chomp($git_time);

    if ($git_time && $git_time =~ /^\d+$/) {
        $ENV{'SOURCE_DATE_EPOCH'} = $git_time;
        $ENV{'FORCE_SOURCE_DATE'} = '1';
    }
}

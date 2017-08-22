unit module catenate;

sub cat ($filename) is export {
    run('perl',%?RESOURCES<scripts/cat.pl>,$filename);
}

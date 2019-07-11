@ECHO off
SET CWD=%CD%
SET DIR="gsl"
SET VERSION="master"
SET URL="https://github.com/jtv/libpqxx"

IF NOT EXIST %CWD%\%DIR% (
git clone %URL% -b %VERSION% --depth 1 --recursive %DIR% || exit 666 /b
)

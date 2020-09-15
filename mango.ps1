#!/usr/bin/env pwsh

$basedir = Split-Path $MyInvocation.MyCommand.Definition -Parent

if ($args.Count -eq 0) {
    Write-Host "Mango was not given an option"
    exit(1)
}

$option, $argv = $args

chdir "$PWD"

switch ($option) {
    "init" {
        ka "$basedir/init" $argv
    }

    "get" {
        ka "$basedir/get" $argv
    }

    "rm" {
        ka "$basedir/rm" $argv
    }

    "start" {
        ka "$basedir/start" $argv
    }

    "archive" {
        ka "$basedir/archive" $argv
    }

    default {
        Write-Host "Cannot use $option option"
        exit(1)
    }
}

exit 0
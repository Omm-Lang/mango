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
        tusk "$basedir/init" $argv
    }

    "get" {
        tusk "$basedir/get" $argv
    }

    "rm" {
        tusk "$basedir/rm" $argv
    }

    "start" {
        tusk "$basedir/start" $argv
    }

    "archive" {
        tusk "$basedir/archive" $argv
    }

    default {
        Write-Host "Cannot use $option option"
        exit(1)
    }
}

exit 0
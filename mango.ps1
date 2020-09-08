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
        omm "$basedir/init" $argv
    }

    "get" {
        omm "$basedir/get" $argv
    }

    "rm" {
        omm "$basedir/rm" $argv
    }

    "start" {
        omm "$basedir/start" $argv
    }

    "archive" {
        omm "$basedir/archive" $argv
    }

    default {
        Write-Host "Cannot use $option option"
        exit(1)
    }
}

exit 0
#!/usr/bin/env pwsh

$basedir = Split-Path $MyInvocation.MyCommand.Definition -Parent
$calldir = ("$PWD").replace("\", "/") #convert to slash seperated

if ($args.Count -eq 0) {
    Write-Host "Mango was not given an option"
    exit(1)
}

$option, $argv = $args

switch ($option) {
    "init" {
        omm init.omm "$calldir/" $argv
    }

    "get" {
        omm get.omm "$calldir/" $argv
    }

    "rm" {
        omm rm.omm "$calldir/" $argv
    }
    default {
        Write-Host "Cannot use $option option"
        exit(1)
    }
}

exit 0


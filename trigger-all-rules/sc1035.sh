#!/bin/bash
# SH-1035 (SC1035)
if ![-z foo ]; then true; fi # if command `[-z' w/ args `foo', `]' fails..

#!/bin/bash

Directory="/etc"

grep -r -o -E -h -I "[A-Za-z0-9._]+@[A-Za-z0-9._-]+\.[A-Za-z0-9]+" "$Directory"/* > emails.lst

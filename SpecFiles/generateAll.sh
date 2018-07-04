#!/bin/bash

# generate resource resX file and copy to destination
csc GenerateResource.cs
mono GenerateResource.exe
mv Content.resx ../IncludeResources
rm GenerateResource.exe

# generate a fresh copy of parser.cs
mono gppg.exe /gplex /nolines gplex.y
mv parser.cs ../GPLEX

# generate a fresh copy of Scanner.cs
mono gplex.exe gplex.lex
mv Scanner.cs ../GPLEX

mv GplexBuffers.cs ../GPLEX

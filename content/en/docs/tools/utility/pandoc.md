---
title: "Pandoc"
description: ""
lead: ""
date: 2023-02-16T08:49:39+01:00
lastmod: 2023-02-16T08:49:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "utility"
    identifier: "pandoc-c92dbcac0b803da1440663ae6bc1ee74"
weight: 999
toc: true
---


## Description

pandoc is a universal document converter.

## Installation

```bash
brew install pandoc
```

## Usage

```bash
pandoc -f markdown -t html README.md -o README.html
```

## Resources

- [pandoc](https://pandoc.org/)

## help

```text
pandoc [OPTIONS] [FILES]
  -f FORMAT, -r FORMAT  --from=FORMAT, --read=FORMAT                    
  -t FORMAT, -w FORMAT  --to=FORMAT, --write=FORMAT                     
  -o FILE               --output=FILE                                   
                        --data-dir=DIRECTORY                            
  -M KEY[:VALUE]        --metadata=KEY[:VALUE]                          
                        --metadata-file=FILE                            
  -d FILE               --defaults=FILE                                 
                        --file-scope                                    
                        --sandbox                                       
  -s                    --standalone                                    
                        --template=FILE                                 
  -V KEY[:VALUE]        --variable=KEY[:VALUE]                          
                        --wrap=auto|none|preserve                       
                        --ascii                                         
                        --toc, --table-of-contents                      
                        --toc-depth=NUMBER                              
  -N                    --number-sections                               
                        --number-offset=NUMBERS                         
                        --top-level-division=section|chapter|part       
                        --extract-media=PATH                            
                        --resource-path=SEARCHPATH                      
  -H FILE               --include-in-header=FILE                        
  -B FILE               --include-before-body=FILE                      
  -A FILE               --include-after-body=FILE                       
                        --no-highlight                                  
                        --highlight-style=STYLE|FILE                    
                        --syntax-definition=FILE                        
                        --dpi=NUMBER                                    
                        --eol=crlf|lf|native                            
                        --columns=NUMBER                                
  -p                    --preserve-tabs                                 
                        --tab-stop=NUMBER                               
                        --pdf-engine=PROGRAM                            
                        --pdf-engine-opt=STRING                         
                        --reference-doc=FILE                            
                        --self-contained                                
                        --embed-resources                               
                        --request-header=NAME:VALUE                     
                        --no-check-certificate                          
                        --abbreviations=FILE                            
                        --indented-code-classes=STRING                  
                        --default-image-extension=extension             
  -F PROGRAM            --filter=PROGRAM                                
  -L SCRIPTPATH         --lua-filter=SCRIPTPATH                         
                        --shift-heading-level-by=NUMBER                 
                        --base-header-level=NUMBER                      
                        --track-changes=accept|reject|all               
                        --strip-comments                                
                        --reference-links                               
                        --reference-location=block|section|document     
                        --markdown-headings=setext|atx                  
                        --list-tables                                   
                        --listings                                      
  -i                    --incremental                                   
                        --slide-level=NUMBER                            
                        --section-divs                                  
                        --html-q-tags                                   
                        --email-obfuscation=none|javascript|references  
                        --id-prefix=STRING                              
  -T STRING             --title-prefix=STRING                           
  -c URL                --css=URL                                       
                        --epub-subdirectory=DIRNAME                     
                        --epub-cover-image=FILE                         
                        --epub-title-page=true|false                    
                        --epub-metadata=FILE                            
                        --epub-embed-font=FILE                          
                        --split-level=NUMBER                            
                        --chunk-template=PATHTEMPLATE                   
                        --epub-chapter-level=NUMBER                     
                        --ipynb-output=all|none|best                    
  -C                    --citeproc                                      
                        --bibliography=FILE                             
                        --csl=FILE                                      
                        --citation-abbreviations=FILE                   
                        --natbib                                        
                        --biblatex                                      
                        --mathml                                        
                        --webtex[=URL]                                  
                        --mathjax[=URL]                                 
                        --katex[=URL]                                   
                        --gladtex                                       
                        --trace                                         
                        --dump-args                                     
                        --ignore-args                                   
                        --verbose                                       
                        --quiet                                         
                        --fail-if-warnings                              
                        --log=FILE                                      
                        --bash-completion                               
                        --list-input-formats                            
                        --list-output-formats                           
                        --list-extensions[=FORMAT]                      
                        --list-highlight-languages                      
                        --list-highlight-styles                         
  -D FORMAT             --print-default-template=FORMAT                 
                        --print-default-data-file=FILE                  
                        --print-highlight-style=STYLE|FILE              
  -v                    --version                                       
  -h                    --help                                          
```

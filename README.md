# README

* Ruby version - 3.2.2

* System dependencies

* Database creation - postgresql

* How to run the test suite
```ruby
$> bin/rails test
```

### NOTES:
# Chapter 2:
>  bin/rails about

# Chapter 6:
1. Start rails server with `foreman` using [bin/dev](https://github.com/indyarocks/depot/blob/9e88984b9d073b10cc7ac8e0d981c735fd2167ac/bin/dev)
```shell
$> bin/dev
```
Which executes following:
```shell
web: bin/rails server -p 3000
css: bin/rails tailwindcss:watch

```
Or alternatively, you can start `tailwinds` and `rails s` independently
```shell
# Terminal 1
$> bin/rails tailwindcss:watch

# Terminal 2
$> bin/rails server -p 3000
```

Note the shell script in `/bin/dev`
```shell
#!/usr/bin/env sh

if ! gem list foreman -i --silent; then
  echo "Installing foreman..."
  gem install foreman
fi

exec foreman start -f Procfile.dev "$@"

```

```shell
chandan@~/Workspace/2023/depot (main) ± ➜ gem list foreman

*** LOCAL GEMS ***

foreman (0.87.2)

chandan@~/Workspace/2023/depot (main) ± ➜ gem list foreman -i
true

chandan@~/Workspace/2023/depot (main) ± ➜ gem list foreman -i --silent

```

# Chapter 8
- Enable/Diable cache in Dev environment
```shell
chandan@~/Workspace/2023/depot (main) ± ➜ bin/rails dev:cache
Development mode is now being cached.

chandan@~/Workspace/2023/depot (main) ± ➜ bin/rails dev:cache
Development mode is no longer being cached.

```
### Concepts

### Ruby Predefined Variables:
[Ruby Predefined Variables](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/variable.html#at)
```ruby
$!
The exception information message. raise sets this variable.

$@
The backtrace of the last exception, which is the array of the string that indicates the point where methods invoked from. The elements in the format like:

"filename:line"
or
"filename:line:in `methodname'"
(Mnemonic: where exception occurred at.)

$&
The string matched by the last successful pattern match in this scope, or nil if the last pattern match failed. (Mnemonic: like & in some editors.) This variable is read-only.

$`
The string preceding whatever was matched by the last successful pattern match in the current scope, or nil if the last pattern match failed. (Mnemonic: ` often precedes a quoted string.) This variable is read-only.

$'
The string following whatever was matched by the last successful pattern match in the current scope, or nil if the last pattern match failed. (Mnemonic: ' often follows a quoted string.)

$+
The last bracket matched by the last successful search pattern, or nil if the last pattern match failed. This is useful if you don't know which of a set of alternative patterns matched. (Mnemonic: be positive and forward looking.)

$1, $2...
Contains the subpattern from the corresponding set of parentheses in the last successful pattern matched, not counting patterns matched in nested blocks that have been exited already, or nil if the last pattern match failed. (Mnemonic: like \digit.) These variables are all read-only.

$~
The information about the last match in the current scope. Setting this variables affects the match variables like $&, $+, $1, $2.. etc. The nth subexpression can be retrieved by $~[nth]. (Mnemonic: ~ is for match.) This variable is locally scoped.

$=
The flag for case insensitive, nil by default. (Mnemonic: = is for comparison.)

$/
The input record separator, newline by default. Works like awk's RS variable. If it is set to nil, whole file will be read at once. (Mnemonic: / is used to delimit line boundaries when quoting poetry.)

$\
The output record separator for the print and IO#write. The default is nil. (Mnemonic: It's just like /, but it's what you get "back" from Ruby.)

$,
The output field separator for the print. Also, it is the default separator for Array#join. (Mnemonic: what is printed when there is a , in your print statement.)

$;
The default separator for String#split.

$.
The current input line number of the last file that was read.

$<
The virtual concatenation file of the files given by command line arguments, or stdin (in case no argument file supplied). $<.file returns the current filename. (Mnemonic: $< is a shell input source.)

$>
The default output for print, printf. $stdout by default. (Mnemonic: $> is for shell output.)

$_
The last input line of string by gets or readline. It is set to nil if gets/readline meet EOF. This variable is locally scoped. (Mnemonic: partly same as Perl.)

$0
Contains the name of the file containing the Ruby script being executed. On some operating systems assigning to $0 modifies the argument area that the ps(1) program sees. This is more useful as a way of indicating the current program state than it is for hiding the program you're running. (Mnemonic: same as sh and ksh.)

$*
Command line arguments given for the script. The options for Ruby interpreter are already removed. (Mnemonic: same as sh and ksh.)

$$
The process number of the Ruby running this script. (Mnemonic: same as shells.)

$?
The status of the last executed child process.

$:
The array contains the list of places to look for Ruby scripts and binary modules by load or require. It initially consists of the arguments to any -I command line switches, followed by the default Ruby library, probabl "/usr/local/lib/ruby", followed by ".", to represent the current directory. (Mnemonic: colon is the separators for PATH environment variable.)

$"
The array contains the module names loaded by require. Used for prevent require from load modules twice. (Mnemonic: prevent files to be doubly quoted(loaded).)
```
#### Typos/Errata
1. strong params
2. testcase
3. Page 151 - `app/views/application/_cart.html.erb` -> `app/views/application/layouts/_cart.html.erb`

# rbenv-bundler-cores

This [rbenv][rbenv] plugin very simply sets the number of jobs bundler
is allowed to do simultaneously based on the number of cores in your
machine. The meat of this logic is [here][logic].

[rbenv]: https://github.com/sstephenson/rbenv
[logic]: https://github.com/Keithbsmiley/rbenv-bundler-cores/blob/master/etc/rbenv.d/install/bundler-cores.bash#L16-17

The rbenv specific stuff in this plugin comes from
[rbenv-default-gems][default] and [rbenv-ctags][ctags].

[default]: https://github.com/sstephenson/rbenv-default-gems
[ctags]: https://github.com/tpope/rbenv-ctags

#!/bin/sh
# ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S  -R -f \
#     ~/.vim_runtime/systags \
#     /usr/include/*.h \
#     /usr/include/c++ \

ctags \
    -R \
    --sort=yes \
    --c++-kinds=+p \
    --fields=+iaS \
    --extra=+q \
    --language-force=C++ \
    -f \
    ~/.vim_runtime/tags/cpp_tags \
    ~/.vim_runtime/lang_src/cpp_src


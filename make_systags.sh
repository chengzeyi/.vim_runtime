# ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S  -R -f \
#     ~/.vim_runtime/systags \
#     /usr/include/*.h \
#     /usr/include/c++ \

ctags \
    -R \
    --c++-kinds=+p \
    --fields=+iaS \
    --extra=+q \
    -f \
    ~/.vim_runtime/systags \
    /usr/include/*.h \
    /usr/include/c++ \


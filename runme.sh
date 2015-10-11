export PERL5LIB="live_tutorial/lib:photo/lib"

morbo \
    -w live_tutorial/lib \
    -w live_tutorial/templates \
    -w photo/lib \
    -w photo/templates \
    -w tutorial vhost.pl

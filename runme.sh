export PERL5LIB="live_tutorial/lib:photo_app/lib"

morbo \
    -w live_tutorial/lib \
    -w live_tutorial/templates \
    -w photo_app/lib \
    -w photo_app/templates \
    -w tutorial vhost.pl

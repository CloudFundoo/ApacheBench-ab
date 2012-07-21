all: libapr ab apr-skeleton

libapr:
	make -C ./apr/ all
	

apr-skeleton: apr-skeleton.c 
#	gcc apr-skeleton.c -o apr-skeleton -I./apr/apr-build/include/ -L./apr/apr-build/lib/ -lapr-1 `pkg-config apr-1 --cflags` 
	gcc apr-skeleton.c -o apr-skeleton -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -lapr-1  -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE

ab: ab.c ap_release.h
#	gcc ab.c ap_release.h -o ab -I./apr/apr-build/include/ -L./apr/apr-build/lib/ -lapr-1 `pkg-config apr-1 --cflags` -laprutil-1 -lm
	gcc ab.c ap_release.h -o ab -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -L./apr/aprutil-build/lib/ -lapr-1 -laprutil-1 -lm  -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE



clean:
	make -C ./apr/ clean
	rm ab apr-skeleton

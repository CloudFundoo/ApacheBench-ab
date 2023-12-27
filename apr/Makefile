URL=dlcdn.apache.org
APR=apr-1.7.4
APRUTIL=apr-util-1.6.3

all:$(APR) $(APRUTIL) buildapr

$(APR):
	wget http://$(URL)//apr/$(APR).tar.gz
	tar -xf $(APR).tar.gz
$(APRUTIL):
	wget http://$(URL)//apr/$(APRUTIL).tar.gz
	tar -xf $(APRUTIL).tar.gz

buildapr:
	cp Makefile_apr $(APR)
	make -C $(APR) -f Makefile_apr	
	cp Makefile_aprutil $(APRUTIL)
	make -C $(APRUTIL) -f Makefile_aprutil

clean:
	rm -rf apr-*
	rm -rf aprutil-*
	

create-envfile:
	python create-envfile.py \
		--hostname opendata.local \
		--email becagis.vntts@gmail.com \
		--env_type dev \
		--geonodepwd opendata@Passwd123456 \
		--geoserverpwd geoserver@Passwd123456 \
		--pgpwd postgres \
		--dbpwd postgres \
		--geodbpwd postgres

create-envfile:
	python create-envfile.py \
		--hostname opendata.becagis.vn \
		--https \
		--email becagis.vntts@gmail.com \
		--env_type prod \
		--geonodepwd opendata@Passwd123456 \
		--geoserverpwd geoserver@Passwd123456 \
		--pgpwd postgres \
		--dbpwd postgres \
		--geodbpwd postgres
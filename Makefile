up:
	docker compose up -d

up-prod:
	docker compose -f docker-compose.production.yml up -d

create-envfile:
	python create-envfile.py \
		--hostname opendata.local \
		--email becagis.vntts@gmail.com \
		--env_type dev \
		--geonodepwd admin@becagisvntts \
		--geoserverpwd admin@becagisvntts \
		--pgpwd postgres \
		--dbpwd postgres \
		--geodbpwd postgres \
		--clientid "Jrchz2oPY3akmzndmgUTYrs9gczlgoV20YPSvqaV" \
  		--clientsecret "rCnp5txobUo83EpQEblM8fVj3QT5zb5qRfxNsuPzCqZaiRyIoxM4jdgMiZKFfePBHYXCLd7B8NlkfDBY9HKeIQPcy5Cp08KQNpRHQbjpLItDHv12GvkSeXp6OxaUETv3"

create-envfile-prod:
	python create-envfile.py \
		--hostname opendata.becagis.vn \
		--https \
		--email becagis.vntts@gmail.com \
		--env_type prod \
		--geonodepwd admin@becagisvntts \
		--geoserverpwd admin@becagisvntts \
		--pgpwd postgres \
		--dbpwd postgres \
		--geodbpwd postgres \
		--clientid "Jrchz2oPY3akmzndmgUTYrs9gczlgoV20YPSvqaV" \
  		--clientsecret "rCnp5txobUo83EpQEblM8fVj3QT5zb5qRfxNsuPzCqZaiRyIoxM4jdgMiZKFfePBHYXCLd7B8NlkfDBY9HKeIQPcy5Cp08KQNpRHQbjpLItDHv12GvkSeXp6OxaUETv3"
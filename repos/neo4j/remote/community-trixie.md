## `neo4j:community-trixie`

```console
$ docker pull neo4j@sha256:ba2b859bdbe7017a9baa1a7b5681ac9732198753719b0a502e3645feddfdec72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:5cf053cb7808bc822c0ca0529252577ecd964f2e67c3083413d51c15dfafc609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.9 MB (391891945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633399e3746e58909fdde9e7138caf9a080d30dd0be2d697d383412bb4dfe85c`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:16:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:16:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:16:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 16 Jul 2026 01:16:24 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Thu, 16 Jul 2026 01:16:24 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 16 Jul 2026 01:16:49 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 16 Jul 2026 01:16:49 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:16:49 GMT
WORKDIR /var/lib/neo4j
# Thu, 16 Jul 2026 01:16:49 GMT
VOLUME [/data /logs]
# Thu, 16 Jul 2026 01:16:49 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 16 Jul 2026 01:16:49 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:16:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e037bd9a38c11328b0be11207e5586d86574f36838ffb725f97a0efa808d7a3e`  
		Last Modified: Thu, 16 Jul 2026 01:17:15 GMT  
		Size: 92.6 MB (92574583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11fc0759b95e44188566472fd3534b57da4012f4780bc29fab43d5ed26a2af7`  
		Last Modified: Thu, 16 Jul 2026 01:17:11 GMT  
		Size: 10.0 KB (10019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb92e043009ed3abd4e8cd95191be6a0cd88bdff28fc322fe4a05b977d48b769`  
		Last Modified: Thu, 16 Jul 2026 01:17:19 GMT  
		Size: 269.5 MB (269526406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:fb3e952bbf9a62ac78a9d35e7390b29bd17c3d6a3503e5dbc83b0a9b2c5562ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4390544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f80cb655c5520578a03e7bb0052bcba47a791a4b908f371cf717d9bba42042`

```dockerfile
```

-	Layers:
	-	`sha256:a92ce5b6f15b61218affb9f2a89359847e07e4810e94449bab66f5af761c2c3c`  
		Last Modified: Thu, 16 Jul 2026 01:17:11 GMT  
		Size: 4.4 MB (4368035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25676d10dbf2545f396240a70643b5359b734ebdbabefaf4579d7fb5c4183454`  
		Last Modified: Thu, 16 Jul 2026 01:17:11 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:db411c6d30fe9d2f8f6c221c279ee2f24ecb00598d5a3aca0835f9c4066fbb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.3 MB (390292116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fa785ff737a2df726056b1ec261ab525e00f4b42d942f1cd2d727963cb2ab8`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:13:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 16 Jul 2026 01:13:28 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Thu, 16 Jul 2026 01:13:28 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 16 Jul 2026 01:13:52 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 16 Jul 2026 01:13:52 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:52 GMT
WORKDIR /var/lib/neo4j
# Thu, 16 Jul 2026 01:13:52 GMT
VOLUME [/data /logs]
# Thu, 16 Jul 2026 01:13:52 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 16 Jul 2026 01:13:52 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:13:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52342a1f63a3054145d59fde776764258d0d69e2eb9828fc1bbee2f49961d0a`  
		Last Modified: Thu, 16 Jul 2026 01:14:18 GMT  
		Size: 91.5 MB (91542206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308bd1272c16f3a6ba29a3bebf93824af23c6fa7c5ecafaebdc33883f977383f`  
		Last Modified: Thu, 16 Jul 2026 01:14:14 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e89952ecea552fc2a716e4fb3b13c0f75db57320765ceab6f1c97fb37aaf9e6`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 268.6 MB (268596153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:5dbb399348ac2945b958a7c5db2a5b8f85d0377ed31ef71858646459506a9357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4385381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15c699893fe749c307867feb29285b2119a5694cfd2e7a92e6453f3a403b9db`

```dockerfile
```

-	Layers:
	-	`sha256:b1cfda42c1350f8099d81f4ce53fbe068263fa904d07c979638b38a92eb14e7b`  
		Last Modified: Thu, 16 Jul 2026 01:14:14 GMT  
		Size: 4.4 MB (4362598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c906c06b58f750697e49ac888eee0b389ed1c4f4714deb7b76b021d308ae990f`  
		Last Modified: Thu, 16 Jul 2026 01:14:14 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json

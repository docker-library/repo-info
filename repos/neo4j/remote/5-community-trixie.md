## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:20779498e70e05772836fb980449bf691f519b42d87372e3f499312cb32c5430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:910656fb5e828a1509f0a41baacf33442db6c2c1c0eb8644ad69abe65d9cbdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.7 MB (355708393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13530e20b3a0118abbb043fca150f072e47832fe34e5d1f3b06c262697380d7a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 01:45:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 01:45:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:36 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 14 Jul 2026 01:45:36 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 14 Jul 2026 01:45:56 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 14 Jul 2026 01:45:56 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:45:56 GMT
WORKDIR /var/lib/neo4j
# Tue, 14 Jul 2026 01:45:56 GMT
VOLUME [/data /logs]
# Tue, 14 Jul 2026 01:45:56 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 14 Jul 2026 01:45:56 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:56 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6667206d04709b2237e368c251aa4c6ede7d64cccbfb830fa11142c9124abc`  
		Last Modified: Tue, 14 Jul 2026 01:46:22 GMT  
		Size: 158.2 MB (158166929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e193be039afdee4e74e1615d7f39f9624ddb1bf91983916e337564c85fdbcb`  
		Last Modified: Tue, 14 Jul 2026 01:46:15 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80d9e536a0cdd768550126a8e349deb8f0a0c2204ff52a269c7959ca2bcf041`  
		Last Modified: Tue, 14 Jul 2026 01:46:22 GMT  
		Size: 167.8 MB (167750467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:550d862a8a70fcc1c0005134775652a22c599d8c9de3e5d52a8204e6522607f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4313037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1f6a9a6adb59b76c8ab1f9a4379eccd1b565b096767e337fd28031aaa6fcb4`

```dockerfile
```

-	Layers:
	-	`sha256:59747931ff610c7ca507efb7b481ff1a6aa1ff252308fc7031fc8b13af221592`  
		Last Modified: Tue, 14 Jul 2026 01:46:16 GMT  
		Size: 4.3 MB (4291814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b6585ee7022eedfcdd3394061e0a7158bbb8f0aa8e68ed61cc4fbef243d7a9`  
		Last Modified: Tue, 14 Jul 2026 01:46:15 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:3d2113619a4bf80a933b7a2c3341ad2578913476298ddcd0eda42aa024f1eb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353436785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7700919359f771b0024ec035922d5b5c87d893dec3f1c6b8cc16968a8a09a811`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:48:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 01:48:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 01:48:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 14 Jul 2026 01:48:49 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 14 Jul 2026 01:48:50 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 14 Jul 2026 01:49:12 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 14 Jul 2026 01:49:12 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:49:12 GMT
WORKDIR /var/lib/neo4j
# Tue, 14 Jul 2026 01:49:12 GMT
VOLUME [/data /logs]
# Tue, 14 Jul 2026 01:49:12 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 14 Jul 2026 01:49:12 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:49:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcbdc18406e878ffcae9975e463caabcd8a4a224ac4d0c999cc0d88f73e5013`  
		Last Modified: Tue, 14 Jul 2026 01:49:36 GMT  
		Size: 156.5 MB (156461236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ef0741514d2951bbb2e7b94b3efcb9459e8ee15eca25d3e95291ea3d947a8e`  
		Last Modified: Tue, 14 Jul 2026 01:49:31 GMT  
		Size: 10.1 KB (10064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab06a0b6fb18ec887061f362cb593076c466333a54f713dc0d6a79805c2f2ec`  
		Last Modified: Tue, 14 Jul 2026 01:49:36 GMT  
		Size: 166.8 MB (166821748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:889f4eab291f5a7c53f1aec574f9e0dcdd84b9bd292be170188cd539dedf56c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be81cb74cfbb363e5888813f640efb820c6d8a615b92590a2de3c51e42f861a0`

```dockerfile
```

-	Layers:
	-	`sha256:5aee2aeacb7a78c88ea6874558a9515e3ba35f2a01cd2a4ae2c122835db6304d`  
		Last Modified: Tue, 14 Jul 2026 01:49:31 GMT  
		Size: 4.3 MB (4286332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f43623ebe1e5d585d373d3a66bd6379dda7fd9e460213648981cd5d0a734ac`  
		Last Modified: Tue, 14 Jul 2026 01:49:31 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

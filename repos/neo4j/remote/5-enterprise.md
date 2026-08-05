## `neo4j:5-enterprise`

```console
$ docker pull neo4j@sha256:e8aa9ad541bda678cce7286fdcc2533dcc34703507adc1275fd932dcae837d17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:d70a352a8382ffb0bbdeaf5cabd492411035b6fbe40c9fe28fe9ad9e1066d4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.0 MB (702985539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2734532e83a11452683fdcbdb8a11141ca5a2254a9e0dd30c42943390acb66fa`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 02:27:30 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Tue, 04 Aug 2026 02:27:30 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:57 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 02:27:57 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 02:27:57 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 02:27:57 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:27:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d20395326a0db34654a1d4e948662a869cfb438f6f2e41a53cc624966f3e8df`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 158.2 MB (158166940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9772591907fce341855eaab525b39ce96ff19aa2ad6eaed357f850ed1edd18cc`  
		Last Modified: Tue, 04 Aug 2026 02:28:27 GMT  
		Size: 10.1 KB (10058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01fbf0dd9c5f4084f1280cd25f60c4e386ce22e716ab46775b8c8d715ce1726`  
		Last Modified: Tue, 04 Aug 2026 02:28:39 GMT  
		Size: 515.0 MB (515027604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:adeb009804ae83827753a9dd224a9ee4df984c067f8d84cea415803f15694a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4671553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c5ec10db53b7a0d7b2d0266e66ee0062cd4f9730bcbfc8bf5329184d1ea53d`

```dockerfile
```

-	Layers:
	-	`sha256:9f95b37a0201f90b7d1fa90298c2d8a9449f2b37bd3c5f297d2a9894dd11e6c9`  
		Last Modified: Tue, 04 Aug 2026 02:28:27 GMT  
		Size: 4.7 MB (4652102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf77daa15cdf7d6b100e92616c4582f8987502c3f6870f198a1af733fca4ae8c`  
		Last Modified: Tue, 04 Aug 2026 02:28:27 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:a2d473d8c0e369efd6a81e4b2c5a2633b56e3d0abd5a01b197ae22981dede33d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.7 MB (700713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82117ce468554f23fb1b7f56a3d805976ff7315fbbe721f8aac6365e482e4e8`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 00:49:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 00:49:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 00:49:58 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Wed, 05 Aug 2026 00:49:58 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 00:50:25 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 00:50:25 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:50:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 00:50:25 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 00:50:25 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 00:50:25 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:50:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899715ddc68fb5c00cf4bf7590d1d277ab403ed3420a2e90bce09bb7f95b30b5`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2c90da4416e2546524dbe68bc4d3b6ad5866caef47c7f4e3cffc59cb4d0e69`  
		Last Modified: Wed, 05 Aug 2026 00:50:56 GMT  
		Size: 10.1 KB (10057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323a52f5610d457595febd9f521cdec4af2e668fa81071b4f5a3fa39eed21648`  
		Last Modified: Wed, 05 Aug 2026 00:51:07 GMT  
		Size: 514.1 MB (514098912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:2801259664d0ffd5a76a8df85ce459844729db355b4d10b26b268daee2f51d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4666152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea95bf60f0661dbf3682953578d8b6acfeebdf7329599da82c6c0bdd10616e`

```dockerfile
```

-	Layers:
	-	`sha256:16fb07be647d6f362d5fceac2a99d5e324c089fc51b7a9ae8a8a3926f1c7fdf2`  
		Last Modified: Wed, 05 Aug 2026 00:50:56 GMT  
		Size: 4.6 MB (4646548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82f8571fffcf391bfc52848e10a3e7bb2ac9966eabbb60cc00ac8f29c9d9cf06`  
		Last Modified: Wed, 05 Aug 2026 00:50:56 GMT  
		Size: 19.6 KB (19604 bytes)  
		MIME: application/vnd.in-toto+json

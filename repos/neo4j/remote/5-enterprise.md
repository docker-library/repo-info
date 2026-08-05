## `neo4j:5-enterprise`

```console
$ docker pull neo4j@sha256:16807af7c69e1e81c635166ba94f5c6cbe5c33c4fcdf5cc845c2300daf394e25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:a86fe33814254e29640555f8c6416d6fd6b0b70a0e79ace22ccf044148492497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.0 MB (702985414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e6ddd4a9b5d3d485aaf506e78b8cd7f01c771068e3dee1637e587188d61426`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 00:46:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 00:46:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 00:46:48 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Wed, 05 Aug 2026 00:46:48 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 00:47:17 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 00:47:17 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:17 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 00:47:17 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 00:47:17 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 00:47:17 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:17 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c009eafeba13d9a7691cbf66de30c100b43bdbdfcd7ba37478481ba4ecc732aa`  
		Last Modified: Wed, 05 Aug 2026 00:47:54 GMT  
		Size: 158.2 MB (158166944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c680e2b788d38330002b101ad84d1eee4ffe4b1c9c4d1f992d8dde1f5382ce`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b2c9fe6d4ac615d832ce9b19043fcb1c104872ded9f6e1fc0cf87c3aa05502`  
		Last Modified: Wed, 05 Aug 2026 00:48:00 GMT  
		Size: 515.0 MB (515027610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:4541087352df26c87000491d90f892dcad035d69f39f3eab60b9622e5bd62d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4671553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ffacdeb229a1694d6bb8f5b83795e5bdc4df567663ed44aa645335562c21ad`

```dockerfile
```

-	Layers:
	-	`sha256:a4b9e883eec7b685fce5e3a293bf7bbae61e34e0b6f5bb81ffee73b268683093`  
		Last Modified: Wed, 05 Aug 2026 00:47:49 GMT  
		Size: 4.7 MB (4652102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c1583fb28bc0b63b0ec9f586699febad306f3ae75f997cdf30654d080c04f8`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
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

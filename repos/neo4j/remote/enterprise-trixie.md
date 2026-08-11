## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:cae1802b00762710521b3f337c052f124bad012fb15b99e6aa3af643a9718186
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:fefe4a39816e64046b44f40692b7817b618f0aa332b74c1ba4ef4dc1973371b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.8 MB (551812630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e3d46e0ec1294f78bbed2dcc3301c909575c520024df3e1c3d3e834e6a2209`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 19:03:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 10 Aug 2026 19:03:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 10 Aug 2026 19:03:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 10 Aug 2026 19:03:53 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Mon, 10 Aug 2026 19:03:53 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 10 Aug 2026 19:04:19 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 10 Aug 2026 19:04:19 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 19:04:19 GMT
WORKDIR /var/lib/neo4j
# Mon, 10 Aug 2026 19:04:19 GMT
VOLUME [/data /logs]
# Mon, 10 Aug 2026 19:04:19 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 10 Aug 2026 19:04:19 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 19:04:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b649418a29ea1d2aa5e219d113b252bbad47b792b8afc0ef500290d0a52192`  
		Last Modified: Mon, 10 Aug 2026 19:04:51 GMT  
		Size: 92.6 MB (92574608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca914e7b940b91b8f83d4eaa841fe07302652f08f80be23de46b2a5381d6dad8`  
		Last Modified: Mon, 10 Aug 2026 19:04:47 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd83920ee5ba38909957920e9918ee816ac268f0842feec9bbc98968c6e31d3e`  
		Last Modified: Mon, 10 Aug 2026 19:04:59 GMT  
		Size: 429.4 MB (429447204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:973df9d0013796a3239e2224e17535abbcc12dc38dd317da80e9f2447cf0c30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4701829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bb147db06a9df1aaaa1ca51fc0555e4ab067dc880db72f03cb8e1be744f08a`

```dockerfile
```

-	Layers:
	-	`sha256:f8ffa8e839aa1c9d81f7140ffba113f94b633e4f35149bd45b44d8de76e816ae`  
		Last Modified: Mon, 10 Aug 2026 19:04:48 GMT  
		Size: 4.7 MB (4681712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30fbcf1a969a2dce57e6099a770d076c6dbc3410518d68f4d51f2b5462734bf4`  
		Last Modified: Mon, 10 Aug 2026 19:04:47 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:3c8a73bcafff5c539757c9f65e374847dc7d6919d5adb630c358cec70425f7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.2 MB (550217291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656e32375877f8041662298dc7899d971b71508ddc09e1d14975fa39592c8e61`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 19:03:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 10 Aug 2026 19:03:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 10 Aug 2026 19:03:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 10 Aug 2026 19:03:39 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Mon, 10 Aug 2026 19:03:39 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 10 Aug 2026 19:04:13 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 10 Aug 2026 19:04:13 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 19:04:13 GMT
WORKDIR /var/lib/neo4j
# Mon, 10 Aug 2026 19:04:13 GMT
VOLUME [/data /logs]
# Mon, 10 Aug 2026 19:04:13 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 10 Aug 2026 19:04:13 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 19:04:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494d894ffd4ea70b7476532576749dc6998885c2fd4198203ec82173aee4f20a`  
		Last Modified: Mon, 10 Aug 2026 19:04:45 GMT  
		Size: 91.5 MB (91542250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045a96d4d7ef2402ff936e1e26b564b178bdf67c174d81ff70653b9410b68752`  
		Last Modified: Mon, 10 Aug 2026 19:04:42 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06fe1dbb073eeebaa84e5663d3b3a6421d0fcb8e558061c54cb750d1ca59380`  
		Last Modified: Mon, 10 Aug 2026 19:04:51 GMT  
		Size: 428.5 MB (428521380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:a591856fcc5302a3768b00f00527eb7d4c7bb1a8b67c899fd6165e0736145b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d26055cffa88d6ec086d3cc835e78c3c53b8bde5f359f35f9049f913baa8265`

```dockerfile
```

-	Layers:
	-	`sha256:8ae33bd1ba2d8fe4aefdd373f479be13e9c192e4ee2e523097429074cac1c554`  
		Last Modified: Mon, 10 Aug 2026 19:04:42 GMT  
		Size: 4.7 MB (4676179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0762f30c1dbc1119e5557f161ce96b07c93f7a98ed85a72b74a63085e62b6e5`  
		Last Modified: Mon, 10 Aug 2026 19:04:42 GMT  
		Size: 20.3 KB (20294 bytes)  
		MIME: application/vnd.in-toto+json

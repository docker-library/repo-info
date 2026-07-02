## `neo4j:5-community`

```console
$ docker pull neo4j@sha256:4bae36aff76271e27fd6a6ed0835413f86a284cd179cfb1cb7d188f5f7533aca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community` - linux; amd64

```console
$ docker pull neo4j@sha256:32e6325c6f2160747d68601b6e1a38e556deca66524cf95cf0e6c1ee29b1596b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.7 MB (355712938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d64255909dc5a406cd3a0c880d68a7c85ec39b123bfaa95d90bcaa14dedb65`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:27:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 02 Jul 2026 05:27:12 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Thu, 02 Jul 2026 05:27:12 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 02 Jul 2026 05:27:36 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 02 Jul 2026 05:27:36 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:27:36 GMT
WORKDIR /var/lib/neo4j
# Thu, 02 Jul 2026 05:27:36 GMT
VOLUME [/data /logs]
# Thu, 02 Jul 2026 05:27:36 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 02 Jul 2026 05:27:36 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e8f313a8b6d51ff11fd1124f359d93e27ccda522b2537ab7b12aa746cbb098`  
		Last Modified: Thu, 02 Jul 2026 05:28:05 GMT  
		Size: 158.2 MB (158166927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea34c6edcfbf29d1b0831e04388bc2e1748c75e2ff19879fbf379252ec99636`  
		Last Modified: Thu, 02 Jul 2026 05:27:57 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0511500278c8ab4c2d93377e5a80d7653936d13e411ba8bd9c650e9137c46fe`  
		Last Modified: Thu, 02 Jul 2026 05:28:06 GMT  
		Size: 167.8 MB (167750500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:4b182c81c46097c2da359c1b83533ce6b7d0b35425bce44c849e2ad3cc299860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2bef1792503d2fb0a61eeff422e67cc09c4dcdf3357eb6ee5e7690ab448b47`

```dockerfile
```

-	Layers:
	-	`sha256:44463025095e56582729c84c973341affc79f275d9b978e9ee5930f07676e79a`  
		Last Modified: Thu, 02 Jul 2026 05:27:57 GMT  
		Size: 4.3 MB (4291760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ec43922858cb1708e678e725031120208e25a82408375fb4c878de4c6678aa1`  
		Last Modified: Thu, 02 Jul 2026 05:27:57 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:cec0fb8be9110347b140ebf5175423670a79cf36e3a38b9a277ee882fb11d59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353441539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6b15f7bb0458e445ce375638573c70e8eccb9ccaf6257909034a4fd9285ab7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 02 Jul 2026 05:27:43 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Thu, 02 Jul 2026 05:27:43 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 02 Jul 2026 05:28:06 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 02 Jul 2026 05:28:06 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:28:06 GMT
WORKDIR /var/lib/neo4j
# Thu, 02 Jul 2026 05:28:06 GMT
VOLUME [/data /logs]
# Thu, 02 Jul 2026 05:28:06 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 02 Jul 2026 05:28:06 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:28:06 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecada161c1a6e93c4615ad96f406e79e7694ec3cfbc22b1f4b56a0468f9ca083`  
		Last Modified: Thu, 02 Jul 2026 05:28:32 GMT  
		Size: 156.5 MB (156461303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8bf6c584a118eff4af31aa3d4ea169914d6650669cfc1d1aed948748bf0022`  
		Last Modified: Thu, 02 Jul 2026 05:28:25 GMT  
		Size: 10.1 KB (10058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0630cea57ac9f2c1c584cfb8df4eae9f40504e5e05493601d4ac5d2deea328b`  
		Last Modified: Thu, 02 Jul 2026 05:28:31 GMT  
		Size: 166.8 MB (166821595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:214e92db56290c230004c61e545dd103898d56c57ff17145a508836aaa90cdaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435a7855389af15ca0fa3375869bbd192716c9744d3582f67be76938a1125ef4`

```dockerfile
```

-	Layers:
	-	`sha256:e4d5cde134faba444f36e3386032320621df2de0e6aea5321231d90b5e033422`  
		Last Modified: Thu, 02 Jul 2026 05:28:25 GMT  
		Size: 4.3 MB (4286278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffa79a176a191002b5696437a2a975ddc13ea4c6984131a4f442927ac75413c1`  
		Last Modified: Thu, 02 Jul 2026 05:28:25 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

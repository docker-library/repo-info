## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:854c44c322b783918ded7b5e625028bd551071ff87088722d2aa3e2a7d03f9e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:7ba92e367809a4b2fd3178c67844933cb8d5d942bf5d634cc6c24eb076f19640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.0 MB (702989950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6acec3b77e6322220a6a780cfc9ae3b96c4f58cb37208aed394d01cb4917e7`
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
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 02 Jul 2026 05:27:12 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Thu, 02 Jul 2026 05:27:12 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:27:38 GMT
WORKDIR /var/lib/neo4j
# Thu, 02 Jul 2026 05:27:38 GMT
VOLUME [/data /logs]
# Thu, 02 Jul 2026 05:27:38 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 02 Jul 2026 05:27:38 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:38 GMT
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
	-	`sha256:ea19e8d2f18f3926e01e32fd211d9c5e351c6b3d3460dfc893316abdc180904f`  
		Last Modified: Thu, 02 Jul 2026 05:28:28 GMT  
		Size: 515.0 MB (515027512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:50a4b5675970ff3f9c4247c46db043ac3d86c4380bd4d10787d0442435f0ab48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4671495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b447f7a782906363041b3d2a6542c59f8972511a8d2e9040033d24595352bd24`

```dockerfile
```

-	Layers:
	-	`sha256:b90d50d1579874b391790d72526b4d88803090686151a4b749d9ca5260c35eb9`  
		Last Modified: Thu, 02 Jul 2026 05:28:10 GMT  
		Size: 4.7 MB (4652044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cf9ec43be70f00a01c0eced9b5e42984c76457f37e4483465fe578af5a0c69d`  
		Last Modified: Thu, 02 Jul 2026 05:28:10 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:a689dc7ba9546518a66708aabc6414b766959fc18fa7f8fba8dd70127f040cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.7 MB (700718189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9263cbabb7b4824851435d8ff4cb044cfa09996063c3e8961a9bd5e26adedbea`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:27:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 02 Jul 2026 05:27:42 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Thu, 02 Jul 2026 05:27:42 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 02 Jul 2026 05:28:10 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 02 Jul 2026 05:28:10 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:28:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 02 Jul 2026 05:28:10 GMT
VOLUME [/data /logs]
# Thu, 02 Jul 2026 05:28:10 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 02 Jul 2026 05:28:10 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:28:10 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3482ad86c5bec65a9223f0dd1758e15f95acf110e008aa8632c68777f4002b23`  
		Last Modified: Thu, 02 Jul 2026 05:28:51 GMT  
		Size: 156.5 MB (156461290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43352c76adbfcba9e1e788fa07b81d42ee8e0650c7bc4fb7ab04945768b2a996`  
		Last Modified: Thu, 02 Jul 2026 05:28:42 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9772e09768a5f01a889942e29c154df7882596b9a4ad9179a91f4c1a0d52f8`  
		Last Modified: Thu, 02 Jul 2026 05:33:47 GMT  
		Size: 514.1 MB (514098254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:78dc90d7a2b2817c3c66901a09b7075233079046c7b6dd583b7440a49cbeabbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4666094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c1d3aa71c48bcfe9e4d5710c6e472517096539776d27d86eac51d96211a510`

```dockerfile
```

-	Layers:
	-	`sha256:88f40ac55515f463ee2479c7effe8d868057a7d245c04bf5724194cd6acea78f`  
		Last Modified: Thu, 02 Jul 2026 05:28:42 GMT  
		Size: 4.6 MB (4646490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eae5f9577e8b7151832b5eef4a682ba1dfbe188d1d3f5aac237878d59883cf31`  
		Last Modified: Thu, 02 Jul 2026 05:28:42 GMT  
		Size: 19.6 KB (19604 bytes)  
		MIME: application/vnd.in-toto+json

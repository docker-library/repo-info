## `neo4j:5-enterprise`

```console
$ docker pull neo4j@sha256:a8b99634f2353983ef9beaaf6195fa42eb34d6446ae6b9345de68b58b5f3202b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:0e8ca9a3a87e7fcb47984f2f8d20f720a9b75db455bc2b7bbad0e40bd729d727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.9 MB (701947790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab92976cd6d757aa97fd384f5a4cc7ac3b9481892214456f9c05d14000c6090`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 17 Oct 2026 01:27:43 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Sat, 17 Oct 2026 01:27:43 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 17 Oct 2026 01:28:26 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 17 Oct 2026 01:28:26 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:28:26 GMT
WORKDIR /var/lib/neo4j
# Sat, 17 Oct 2026 01:28:26 GMT
VOLUME [/data /logs]
# Sat, 17 Oct 2026 01:28:26 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 17 Oct 2026 01:28:26 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:26 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce9187fdeeaf2cb69e8b2a0ed6a8502e2e6c85645bfec69db3c43dcdfc3149a`  
		Last Modified: Sat, 17 Oct 2026 01:28:31 GMT  
		Size: 158.1 MB (158117468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f28cc69d05ad8c001a65655ba88c0e8641a98a1971e7158031c335b58a1c75`  
		Last Modified: Sat, 17 Oct 2026 01:28:57 GMT  
		Size: 10.1 KB (10059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e477dc538f6fd1b4c7e01a29bf0a839f4c29f71d7192b6eba7e1238c7a965ad8`  
		Last Modified: Sat, 17 Oct 2026 01:29:06 GMT  
		Size: 514.0 MB (513976881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:c35cee201398eae10990a7545c4d09c19c7dff97a8e9dc5433fc727c45422e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4675636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ebc13ba08e1116a1dd247958876d3859e5b7dfa5bcc8caab682a1a68461fbe`

```dockerfile
```

-	Layers:
	-	`sha256:22a7510b5b6586a56a089bf63d85e49313ba660eb39604cb8196c8084e1e5319`  
		Last Modified: Sat, 17 Oct 2026 01:28:57 GMT  
		Size: 4.7 MB (4656185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae14fabf883c7e7162524f4101de4f4c4db65dae64533364e7348fa4c7bd15ab`  
		Last Modified: Sat, 17 Oct 2026 01:28:57 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:e73d33278c5043f364b8076724119ac874f64f062d6816a1d3c368fce06e8322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.7 MB (699666327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0e5cf27b72cf8c3b4fa6d8995d5143f599b0d21a47ff5b47812b4afbfc0900`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:28:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:28:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:28:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 17 Oct 2026 01:28:22 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Sat, 17 Oct 2026 01:28:22 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 17 Oct 2026 01:28:53 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 17 Oct 2026 01:28:53 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:28:53 GMT
WORKDIR /var/lib/neo4j
# Sat, 17 Oct 2026 01:28:53 GMT
VOLUME [/data /logs]
# Sat, 17 Oct 2026 01:28:53 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 17 Oct 2026 01:28:53 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706b6dff3dacba7b3fbc9094ca6cd91ed023fef46c796b33cc9529afbcf0693e`  
		Last Modified: Sat, 17 Oct 2026 01:29:31 GMT  
		Size: 156.4 MB (156400655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1c0216e0909d7fbf84da94cec3d9fb2c733fb4173e46eb3557143563be5f8c`  
		Last Modified: Sat, 17 Oct 2026 01:29:24 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e547e4c8a927d426ded1b2f5a6cfd1a02e9389f2d9054b861e814263e55a5823`  
		Last Modified: Sat, 17 Oct 2026 01:29:38 GMT  
		Size: 513.1 MB (513055296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:8e33f9fa6795fffe0332f1d50c6480c71551f282cf29edefdd54d57d668e2d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4670237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdecab3fbdc21eeab45338c11e133141a753b1c279c8b4e01049c1696022f6d`

```dockerfile
```

-	Layers:
	-	`sha256:c975e1a9570c370cb97608684d87ff66c212aba2592f6132651bcf16ced5d80c`  
		Last Modified: Sat, 17 Oct 2026 01:29:25 GMT  
		Size: 4.7 MB (4650632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f36899c0c715e98d49026c6f3352382dfcd83fa9942c305b2ecefd4801cbac`  
		Last Modified: Sat, 17 Oct 2026 01:29:24 GMT  
		Size: 19.6 KB (19605 bytes)  
		MIME: application/vnd.in-toto+json

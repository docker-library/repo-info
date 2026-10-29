## `neo4j:2026-enterprise-trixie`

```console
$ docker pull neo4j@sha256:4f80cb3b46eaa87a5fb2a21969011ae098a589527bf12bd1892b9a5ee6b0e23d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:ae7f2382fe507ffb1022416284bda371a151ffa7fa6e9f0e8697875752cfb6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.8 MB (574817356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af523e895dc96f706dd9932f8e4765cd97ca30e5ac3fd38c611f52ce3b75975`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:54:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:54:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:54:03 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 29 Oct 2026 19:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 29 Oct 2026 19:54:03 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Thu, 29 Oct 2026 19:54:03 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 29 Oct 2026 19:54:30 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 29 Oct 2026 19:54:30 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:54:30 GMT
WORKDIR /var/lib/neo4j
# Thu, 29 Oct 2026 19:54:30 GMT
VOLUME [/data /logs]
# Thu, 29 Oct 2026 19:54:30 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 29 Oct 2026 19:54:30 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02ea1ede3b656da220be4ed6b441c71e78e0207fef3cabdbff05d43e46d0a95`  
		Last Modified: Thu, 29 Oct 2026 19:55:02 GMT  
		Size: 92.6 MB (92598844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9990cb9ee4f3f057018362d261b1b06f5939cdf62fd6fe5da6339600d2eb871c`  
		Last Modified: Thu, 29 Oct 2026 19:54:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617f0bf6a7eef27fb032c2d2bdb4283ab0034d2b472ec1261d87f617d8b4561d`  
		Last Modified: Thu, 29 Oct 2026 19:54:58 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d22ab260da5ad47ec3bf1e14c0c5b633293ecba60454540483410fb42674c4`  
		Last Modified: Thu, 29 Oct 2026 19:55:09 GMT  
		Size: 452.4 MB (452353076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:5141e27eccd7abf55de5823d3b47185d8b9864bad91890adf6f743287db5c2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4743494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b7c1de6c987285904657b651e9129c4a332e0d784ccb4c426b99e41832e820`

```dockerfile
```

-	Layers:
	-	`sha256:aac38c001e45c244310cbc9184f7add078b3c1a3d122cb29dc1988df97b38cc6`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 4.7 MB (4720588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f81ab3bcfb4cdfdc150f37f358c9b26e62154a75f580dd4b5287287171966c3a`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 22.9 KB (22906 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ff3637d29c2e893274ce9810bcca1cbd8dfc32d23faef962ef77f5bb52b6b850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.2 MB (573171969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c3d218139686f5afdd4687e632703591e2482035d58c8693d870d032d34f1b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:55:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:55:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:55:07 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 29 Oct 2026 19:55:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 29 Oct 2026 19:55:07 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Thu, 29 Oct 2026 19:55:07 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 29 Oct 2026 19:55:37 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 29 Oct 2026 19:55:37 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:55:37 GMT
WORKDIR /var/lib/neo4j
# Thu, 29 Oct 2026 19:55:37 GMT
VOLUME [/data /logs]
# Thu, 29 Oct 2026 19:55:37 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 29 Oct 2026 19:55:37 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4fccd60500d8569a1efdd603f6cb42c13eeef05d5c74721b496cde8980e705`  
		Last Modified: Thu, 29 Oct 2026 19:56:12 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9537518f2f89d07671d9e6c44350402c2e48ce21f95caf8a10c1f433a20c1c3`  
		Last Modified: Thu, 29 Oct 2026 19:56:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982ed6eed9004fc551d33f7fca6cfac97348fe4db8589b4918fdab59c3987862`  
		Last Modified: Thu, 29 Oct 2026 19:56:07 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4134dd0f406243be2bb6a2224650f7b0e4f4063f062f94e33f0bc230a40cd87d`  
		Last Modified: Thu, 29 Oct 2026 19:56:21 GMT  
		Size: 451.4 MB (451422678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:503d53d50c808ada7b45876f82d5d2941b66c4ce139d2dec18d9803eed621021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f9a6f0a2455eba7987b55c07c515499ae307b81fe7b326b72c4845e7e21cbc`

```dockerfile
```

-	Layers:
	-	`sha256:023b3185b30a703d545944e9633bb248445af4cc3bca0c53af0bd20fc8be581b`  
		Last Modified: Thu, 29 Oct 2026 19:56:08 GMT  
		Size: 4.7 MB (4715056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbb3db3a7e87c2ccf1332b3b6b684ba213fa793a754b2a7a46da13c7e3ee4d3a`  
		Last Modified: Thu, 29 Oct 2026 19:56:07 GMT  
		Size: 23.1 KB (23099 bytes)  
		MIME: application/vnd.in-toto+json

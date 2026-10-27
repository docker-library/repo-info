## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:556af70f735af6bfb248ecab37e7f2c1440fa88784a18b29a339c84a0a5c770f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:d7d813139c689a225c6d5bb5e2a42ad57fe830056287c572fbc52e09a27b9e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.0 MB (702045923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05aa26f6ac7928333acfa2e6ecc01f1d26c71285f7c45c1e44ef43b8c33f6de`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:35:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:35:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 23 Oct 2026 16:35:43 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 23 Oct 2026 16:35:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 23 Oct 2026 16:35:43 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Fri, 23 Oct 2026 16:35:43 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 23 Oct 2026 16:36:11 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 23 Oct 2026 16:36:11 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:36:11 GMT
WORKDIR /var/lib/neo4j
# Fri, 23 Oct 2026 16:36:11 GMT
VOLUME [/data /logs]
# Fri, 23 Oct 2026 16:36:11 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 23 Oct 2026 16:36:11 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:36:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b7edf56076a2b36097d2154518f569d6e10eb3849c926cbbb7e3424ef24a89`  
		Last Modified: Fri, 23 Oct 2026 16:36:46 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23126e84c557fed5cc979853d9c0df1cc98ea03a1764794794afd1ea95c6f9ec`  
		Last Modified: Fri, 23 Oct 2026 16:36:39 GMT  
		Size: 98.1 KB (98057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719e6408f3df586e7eee94f8f670c8bf4d3a8d9e982c222cbc4b6be4a5755411`  
		Last Modified: Fri, 23 Oct 2026 16:36:39 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac09523ecaf35b6badf0e551577c22e78eb2adc96a8839a4c73e1537babc628d`  
		Last Modified: Fri, 23 Oct 2026 16:36:52 GMT  
		Size: 514.0 MB (513976720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:7708da09c7fd3aa1e2155aeb1c23f8f7f7a742e5a96a483326a95400b177ea03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4677156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c13fdfd6175debc4c22b80ac75bb5a71eeacabad5e5a87ce5a2d2e6a9f15a99`

```dockerfile
```

-	Layers:
	-	`sha256:aae339353913e9433c4b7bbc2ce165c0e145c1cd629bd4a5f96f873ebebac50a`  
		Last Modified: Fri, 23 Oct 2026 16:36:40 GMT  
		Size: 4.7 MB (4654908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1baf560aa21674381b45de1f5509a7df557cd1984b450d08210ddb1b1053851`  
		Last Modified: Fri, 23 Oct 2026 16:36:39 GMT  
		Size: 22.2 KB (22248 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:09e23eb2bc6e20d3177fc4b464d0e3f0ad79e1bd8992cb68b9241130ddacc788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.8 MB (699759012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14221d257d4d0b487f4bc9400c307e84cb8eadd1bd55d778ca357a3e346c7b81`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:27:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:27:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:27:53 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Tue, 27 Oct 2026 00:27:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 27 Oct 2026 00:27:53 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Tue, 27 Oct 2026 00:27:53 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 27 Oct 2026 00:28:21 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 27 Oct 2026 00:28:21 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:21 GMT
WORKDIR /var/lib/neo4j
# Tue, 27 Oct 2026 00:28:21 GMT
VOLUME [/data /logs]
# Tue, 27 Oct 2026 00:28:21 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 27 Oct 2026 00:28:21 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 00:28:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec3fc9b4b8d58bbe1c46f7de1a1aff5bf8a2b976dd0296567a3615640695bc8`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 156.4 MB (156400737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e70436b7f47622d67b6e325bdc58c64d407508b2222bcde55c81eba0518df`  
		Last Modified: Tue, 27 Oct 2026 00:28:53 GMT  
		Size: 98.1 KB (98056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85351c5c7ffd51b6d3893ad8a110f094be0ab8971e9048bd1d0c03597382c75`  
		Last Modified: Tue, 27 Oct 2026 00:28:53 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370f07661d852e54eeb655ee36918301aa8f8d948955e2fa0fa7c6e861faebdf`  
		Last Modified: Tue, 27 Oct 2026 00:29:05 GMT  
		Size: 513.0 MB (513049646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:a01d0168016b4f44ee023b4833c4e5be42a105da8e340c036ff551d537a65906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4671773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e0f0a95447f4b69308f0e20de9a011ec68744d4a61cf78f3ab5b17233c2bee`

```dockerfile
```

-	Layers:
	-	`sha256:b2c641497accf379ec2c144f714bd85afa12fad1db9c6152b5c66bedca38b3d3`  
		Last Modified: Tue, 27 Oct 2026 00:28:53 GMT  
		Size: 4.6 MB (4649355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f73ea85a10226c001470e5a647ed3c30e1e06ac882776c2ee01f0e47e1eb703`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 22.4 KB (22418 bytes)  
		MIME: application/vnd.in-toto+json

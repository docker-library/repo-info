## `neo4j:2026-trixie`

```console
$ docker pull neo4j@sha256:7dbd307cc8f35d6a061cf71659d3d8f783c3db9e8c2f5bb9d54f77921931952a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:e3e47e99e0dda38dea58da2e8173af4524b128a932203697cc05211f14b2b6ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.8 MB (379766456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62393be2b79d6d35d4778f3d7013256eaabaff413a7d975357e131b0ce6b3c1`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 07:39:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 07:39:36 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 05 Nov 2026 07:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:36 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Thu, 05 Nov 2026 07:39:36 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 05 Nov 2026 07:40:00 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 05 Nov 2026 07:40:00 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:40:00 GMT
WORKDIR /var/lib/neo4j
# Thu, 05 Nov 2026 07:40:00 GMT
VOLUME [/data /logs]
# Thu, 05 Nov 2026 07:40:00 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 05 Nov 2026 07:40:00 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:40:00 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519a9a41ed4d0dd53ed546fd982e061170632c9ca7cd9f82a1070cc66faa4301`  
		Last Modified: Thu, 05 Nov 2026 07:40:25 GMT  
		Size: 92.6 MB (92598929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e8abbd9dcb2b4297d14ac0374b3b73305a4c6c0eaaa81e62ae51ea735bca61`  
		Last Modified: Thu, 05 Nov 2026 07:40:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279270d26c3a0f7cc0fcb9a25c54cdd10ddcbc5b070bd37deefa160e555a864b`  
		Last Modified: Thu, 05 Nov 2026 07:40:20 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae9e2d46cfa0ba5acaa26205e8bc52c6c890949a90f68375448240332c5a02`  
		Last Modified: Thu, 05 Nov 2026 07:40:27 GMT  
		Size: 257.3 MB (257301192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:d6523c8b0306578ae7b906bb95873546aca17c4069c34dbf5361650958d20a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4406238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b2996247ee0c0f73d3970c69a58110e5204e74b959644d6a6ddc08559eb3293`

```dockerfile
```

-	Layers:
	-	`sha256:1e711e39e77278f1e623c045ee247bc3758d64f35b4041d41a5e65d20bcd64f3`  
		Last Modified: Thu, 05 Nov 2026 07:40:21 GMT  
		Size: 4.4 MB (4380941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45384c767ddb92f83065b217b4ae38e3dcad115235e7e58edad6bc99e476590c`  
		Last Modified: Thu, 05 Nov 2026 07:40:20 GMT  
		Size: 25.3 KB (25297 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:c9bb50b1b86c97887775d11646365e2c04f4eca12c3f722f1d9912685e0ef143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.1 MB (378121991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dddc40c7ee916940a3491aba9b5962279bb3f1f9e8c6decb5e16d15beddb72b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:43:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 07:43:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 07:43:26 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 05 Nov 2026 07:43:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 05 Nov 2026 07:43:26 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Thu, 05 Nov 2026 07:43:26 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 05 Nov 2026 07:43:50 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 05 Nov 2026 07:43:50 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:43:50 GMT
WORKDIR /var/lib/neo4j
# Thu, 05 Nov 2026 07:43:50 GMT
VOLUME [/data /logs]
# Thu, 05 Nov 2026 07:43:50 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 05 Nov 2026 07:43:50 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:43:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c0e558fd4075c7a3ffd55e630de03130be26b579b1418ae4921e9e358864bb`  
		Last Modified: Thu, 05 Nov 2026 07:44:16 GMT  
		Size: 91.5 MB (91525603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e21abaa666e047f21388f1d021def09d1de9c199fd352c221ba5fca785932e8`  
		Last Modified: Thu, 05 Nov 2026 07:44:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa804129f633f9e836545cdb8eb17d98f7abca1da7cad2f8b162b12e914cfb9a`  
		Last Modified: Thu, 05 Nov 2026 07:44:12 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ea65b3f8d86bb505faf3369d1836b2b492c4495bf0a058d20023e6ce652a29`  
		Last Modified: Thu, 05 Nov 2026 07:44:18 GMT  
		Size: 256.4 MB (256372151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:64eea586d18f61b3b64bac4574b785a9f18393aa87ef23e5df1b12a108058e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4401092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647a8decbeec9628998352ce6406cdf32f17c4fbcf2b29b5c7a08f5cccbe9aa1`

```dockerfile
```

-	Layers:
	-	`sha256:fb7e868fbbedfb00655ec25d36b0bb50aec85d61fb9b8f717e8373c61bdc3ad1`  
		Last Modified: Thu, 05 Nov 2026 07:44:12 GMT  
		Size: 4.4 MB (4375505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8425d7b0b2abd8e67a386475cfc37788d152293a916c3af75bbdc29e8623f197`  
		Last Modified: Thu, 05 Nov 2026 07:44:12 GMT  
		Size: 25.6 KB (25587 bytes)  
		MIME: application/vnd.in-toto+json

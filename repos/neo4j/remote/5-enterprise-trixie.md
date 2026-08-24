## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:091bddccef2aa074033c1cff08791a8b6bcb8f2ffd1f2925c3c2524c61cc4ed7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:804fda14ff59385676631ded8fda62c264bb384ed09ac3daacc03563e4436651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.5 MB (711542643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b60ebffa985abeee89ffbdacca4c7ba89979c297d6237301d85f7b41bb0abe`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 24 Aug 2026 18:06:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 24 Aug 2026 18:06:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 24 Aug 2026 18:06:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=5697d800b0e6622e36ec6faa41541398293982461b5d144a543d32daa2499310 NEO4J_TARBALL=neo4j-enterprise-5.26.30-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 24 Aug 2026 18:06:42 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
# Mon, 24 Aug 2026 18:06:42 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 24 Aug 2026 18:07:10 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 24 Aug 2026 18:07:10 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:10 GMT
WORKDIR /var/lib/neo4j
# Mon, 24 Aug 2026 18:07:10 GMT
VOLUME [/data /logs]
# Mon, 24 Aug 2026 18:07:10 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 24 Aug 2026 18:07:10 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:07:10 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f5c66123f80e6226bb09441af36b41d5343ec751ffada538307ea87a349ed5`  
		Last Modified: Mon, 24 Aug 2026 18:07:46 GMT  
		Size: 158.1 MB (158120301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721004ea56e968339e2a322aa3cf15ea0d15904fb5a961d478f5ea2af3b697fb`  
		Last Modified: Mon, 24 Aug 2026 18:07:40 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc29e6448e662954afb9d937df698883f23859f20e21bba18b4ccab93e50cf3`  
		Last Modified: Mon, 24 Aug 2026 18:07:53 GMT  
		Size: 523.6 MB (523631485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:06e95adcb710b785bd7812aea1225d09d8d2bcef242f953f3272012d9b2fff50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4673189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce090344826476cf935a3c9170e097afaa96e89a858bbedc0964c43ca836fc0e`

```dockerfile
```

-	Layers:
	-	`sha256:bffcff4c4aa76c8d3519b871ac10c82bda5f59a36ece3d2193b0bfc279ba9bc2`  
		Last Modified: Mon, 24 Aug 2026 18:07:40 GMT  
		Size: 4.7 MB (4653738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b50e63c5afd4bf4a24aaf1188f117740c2e38852d19fad3f75d68d6ed3a3692b`  
		Last Modified: Mon, 24 Aug 2026 18:07:40 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ded129fc4567d139fb1b4a310d2a21fd7e752024835e98acc16298665def4a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **709.3 MB (709260264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a485ba5ea15244b88699d08f4892aa4710c0b27dbde808336aa256f0333b15f`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Mon, 24 Aug 2026 18:06:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 24 Aug 2026 18:06:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 24 Aug 2026 18:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=5697d800b0e6622e36ec6faa41541398293982461b5d144a543d32daa2499310 NEO4J_TARBALL=neo4j-enterprise-5.26.30-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 24 Aug 2026 18:06:18 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
# Mon, 24 Aug 2026 18:06:18 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 24 Aug 2026 18:06:48 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 24 Aug 2026 18:06:48 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:48 GMT
WORKDIR /var/lib/neo4j
# Mon, 24 Aug 2026 18:06:48 GMT
VOLUME [/data /logs]
# Mon, 24 Aug 2026 18:06:48 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 24 Aug 2026 18:06:48 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:06:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b935da7a48dee94cb6fb562b5b73d894d6b08a25aa44c6d187b5ad1986e8e41`  
		Last Modified: Mon, 24 Aug 2026 18:07:26 GMT  
		Size: 156.4 MB (156401920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd18f4813bb3e4a55154a5391974b5a13ca4fd490677a4a7cc18cafdaac2e434`  
		Last Modified: Mon, 24 Aug 2026 18:07:20 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd118f358caea9b0487c63b530a08b3f195b527020f36e5e207dab4dd365ed8`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 522.7 MB (522704643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:c0d07332f542c1dd8a7bafc562f5855d210840ae4c435968762f43f3425c3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4667789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5b700ef6a9567d1b5dbdf1b9372d35503fd239bd8445d334dc95f53716856b`

```dockerfile
```

-	Layers:
	-	`sha256:71489f628759f51a13b3ad947e64a4f731667fbde42236f455ffdb55f82280b8`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 4.6 MB (4648184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf3a5b1b50bf9b366e840ced89beef21b5d353dc1e95f4117d6d38b909ae9de`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 19.6 KB (19605 bytes)  
		MIME: application/vnd.in-toto+json

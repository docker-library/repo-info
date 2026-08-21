## `neo4j:5-community`

```console
$ docker pull neo4j@sha256:89d577f2e49606de76441eca8cf7a0fe88e594cbaac4d2a3d86c6e59676e2b1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community` - linux; amd64

```console
$ docker pull neo4j@sha256:f0d31a1add53b219f8b1e5897301128620b142e15e68e67c71b3ef1b483c4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.5 MB (357527622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8b4631289ccd840f9a42acfed5e6deb2c8e3efaa72ed03d3b728eaff0eb247`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:54:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:54:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:54:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a45ca9644100d995500f7ea7f5bb4874e16e588891fdfbdff65d21321331caa2 NEO4J_TARBALL=neo4j-community-5.26.29-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 21 Aug 2026 18:54:42 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.29-unix.tar.gz
# Fri, 21 Aug 2026 18:54:42 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 21 Aug 2026 18:55:07 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.29-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 21 Aug 2026 18:55:07 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:55:07 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Aug 2026 18:55:07 GMT
VOLUME [/data /logs]
# Fri, 21 Aug 2026 18:55:07 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 21 Aug 2026 18:55:07 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:55:07 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04142bedd3fa8a6222c0a7fab3b650bd283067941961158cccb9be79ddf59e9e`  
		Last Modified: Fri, 21 Aug 2026 18:55:32 GMT  
		Size: 158.1 MB (158120367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683f1728d96dd9c4e038479acdce51a3ff1db0019739c245c3f549d1fb2181c2`  
		Last Modified: Fri, 21 Aug 2026 18:55:26 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3a4dcd4618041227c8bd47ea365b6b90926cd85d8b9eccfd737441f251c7b9`  
		Last Modified: Fri, 21 Aug 2026 18:55:32 GMT  
		Size: 169.6 MB (169616398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:504b48e0ef82837c496112abd95ace98c9dc54246591d69f3d4beaa54ce12cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ac1663eb3e8c4fae8ad83148af100db1a1111bbe99d6663c0a5ad7165800d`

```dockerfile
```

-	Layers:
	-	`sha256:bad29a3c4066f6f6e44ae79b9355bfa3e9cec38cfd774b49d917b63ccd57df1c`  
		Last Modified: Fri, 21 Aug 2026 18:55:26 GMT  
		Size: 4.3 MB (4289273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9931d1360429443254348e6b843aa8813a05b840e80fcc0819eb944f3e799c88`  
		Last Modified: Fri, 21 Aug 2026 18:55:26 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:a58f3320cb0112b71df549bbebe42b75236b0dd365df551d1bf16c127f8414f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.2 MB (355240924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e4fe6df87b9e183d045cb0c10fcd94d45313a8599a8983fbfb4174eb1f0dc9`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:46:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:46:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:46:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a45ca9644100d995500f7ea7f5bb4874e16e588891fdfbdff65d21321331caa2 NEO4J_TARBALL=neo4j-community-5.26.29-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 21 Aug 2026 18:46:59 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.29-unix.tar.gz
# Fri, 21 Aug 2026 18:46:59 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 21 Aug 2026 18:47:21 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.29-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 21 Aug 2026 18:47:21 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:47:21 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Aug 2026 18:47:21 GMT
VOLUME [/data /logs]
# Fri, 21 Aug 2026 18:47:21 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 21 Aug 2026 18:47:21 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:47:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f5a8e50b6cb1ede94ce2d059a6d7e70b34f47c6e87148ebd30ccb941a13e72`  
		Last Modified: Fri, 21 Aug 2026 18:47:49 GMT  
		Size: 156.4 MB (156401948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f2c07bb9b1e419e7b6bcb04635c3652a626a1a2a5e4f0d34616141c0e99513`  
		Last Modified: Fri, 21 Aug 2026 18:47:42 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618d07ed97bb1d2ff374a092504554138648730e6270fabf25176d185e542402`  
		Last Modified: Fri, 21 Aug 2026 18:47:49 GMT  
		Size: 168.7 MB (168685274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:f2043c1e48253b33bfaf378f267b5454a7e9c44b8a419a2b5ac49e3dc9d31eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf86bd1ee62675144a554aecb648b79cfba2d26df6bd13856b9db288978a20f4`

```dockerfile
```

-	Layers:
	-	`sha256:9e307b94343ee8604917bebb2cf83500db6e767ff06c965627c5ad49aeefb508`  
		Last Modified: Fri, 21 Aug 2026 18:47:43 GMT  
		Size: 4.3 MB (4283791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09324eb9c1c7eca5361d60071a3c2703773ee9aa68c7cd86082054495a786197`  
		Last Modified: Fri, 21 Aug 2026 18:47:42 GMT  
		Size: 21.4 KB (21448 bytes)  
		MIME: application/vnd.in-toto+json

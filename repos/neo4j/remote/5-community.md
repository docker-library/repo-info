## `neo4j:5-community`

```console
$ docker pull neo4j@sha256:f1e52d4dc6da122468c4a3c1050a4f5e117f6d3268625237c34d49166f0d6082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community` - linux; amd64

```console
$ docker pull neo4j@sha256:57ecb62bbb0c41c98fb69e08ee014c959926f3bd16ee8ef466c4a1e298f6157c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.7 MB (351667694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ac4fbb3863670c42fd72cb8fbcb500ba5c2e67538eaac98e45f56936807c81`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 17:50:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 17:50:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 17:50:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 12 Oct 2026 17:50:37 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Mon, 12 Oct 2026 17:50:37 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 12 Oct 2026 17:50:58 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 12 Oct 2026 17:50:58 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 17:50:58 GMT
WORKDIR /var/lib/neo4j
# Mon, 12 Oct 2026 17:50:58 GMT
VOLUME [/data /logs]
# Mon, 12 Oct 2026 17:50:58 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 12 Oct 2026 17:50:58 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 17:50:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b34a9d6f3fca9dcbfc3af22012becd698a9527eab2bfd4f2a40e1fee3ec60b`  
		Last Modified: Mon, 12 Oct 2026 17:51:22 GMT  
		Size: 158.1 MB (158117465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde338b56170429ce5b8d3ac3274a6f45392009b26c3c5a2181c108c79dec10d`  
		Last Modified: Mon, 12 Oct 2026 17:51:17 GMT  
		Size: 10.1 KB (10056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf78c0a83a2ea6efe6ab545033a8ef891653b4e0a03f89af54b93ecec53e13`  
		Last Modified: Mon, 12 Oct 2026 17:51:22 GMT  
		Size: 163.7 MB (163696791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:5faa132459af1eb4133c64b1148286548ac57314f17a6ca6a54f83628d422a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68f7ccd718da49df05252481987fe65536e40a11d2dcf96b29d2c92258fa526`

```dockerfile
```

-	Layers:
	-	`sha256:d320d5ebae002a7ae9fcc29b59fc72536a420ba7889204f788981ee5f7845616`  
		Last Modified: Mon, 12 Oct 2026 17:51:17 GMT  
		Size: 4.3 MB (4296756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9731b4b706e041efad6cc38c0f1545a1676a5fff242251d4ba38501ef2e044e`  
		Last Modified: Mon, 12 Oct 2026 17:51:17 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:1fea426c20cfe8c48577bba879b51769eeaf5c27db0b7441433077b3d89f5986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349377295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89a696bff278feee809fc4be17f86db88c2bc3935314f03ac2cac3b0050639`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 17:53:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 17:53:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 17:53:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 12 Oct 2026 17:53:35 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Mon, 12 Oct 2026 17:53:35 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 12 Oct 2026 17:53:56 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 12 Oct 2026 17:53:56 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 17:53:56 GMT
WORKDIR /var/lib/neo4j
# Mon, 12 Oct 2026 17:53:56 GMT
VOLUME [/data /logs]
# Mon, 12 Oct 2026 17:53:56 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 12 Oct 2026 17:53:56 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 17:53:56 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea28370e9599712054e3257d997debeb030c7fcef9729a39bfcc5132233fe0cb`  
		Last Modified: Mon, 12 Oct 2026 17:54:21 GMT  
		Size: 156.4 MB (156400658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44d1e7800e63a7ab15c269f28e8a2376c3a293c77c6f8aa931818e57af6e4f6`  
		Last Modified: Mon, 12 Oct 2026 17:54:15 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bee36b84b62842602959d51e8492e194993a544cbca573d44d79f3a8f9600c`  
		Last Modified: Mon, 12 Oct 2026 17:54:22 GMT  
		Size: 162.8 MB (162766260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:ee19fdd72c7b56805bb787af5a66275fccd74fee5cc7d82d0d6a4d73f9a6fc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d8535cfb6ccd1c5453ae01372249db044481ec735c74f0261247e607502824`

```dockerfile
```

-	Layers:
	-	`sha256:905e87f211e1794ffa030026cd9b9f75c78dd63d0ae1060626aed3c8d99deadb`  
		Last Modified: Mon, 12 Oct 2026 17:54:15 GMT  
		Size: 4.3 MB (4291275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b76da53c7f674cdd9dc18894268d560c18b94b92ad9bbdfb0737e00f605ef1a8`  
		Last Modified: Mon, 12 Oct 2026 17:54:15 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

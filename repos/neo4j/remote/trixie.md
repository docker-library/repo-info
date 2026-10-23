## `neo4j:trixie`

```console
$ docker pull neo4j@sha256:f238979f3c80da6f383f2e4fe91be4dc3580d7ee3b7edec83d0b8783c53b74a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:1fe282e747ecdd61664801935a843cd4d20ec5ff9693a4fa7aca1fb34e245e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.9 MB (379871005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81d424580c31c23697b3f203eed299b2e5f03b9eb56c24d28f4f6f022693758`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:35:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:35:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 23 Oct 2026 16:35:22 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 23 Oct 2026 16:35:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 23 Oct 2026 16:35:22 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Fri, 23 Oct 2026 16:35:22 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 23 Oct 2026 16:35:47 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 23 Oct 2026 16:35:47 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:35:47 GMT
WORKDIR /var/lib/neo4j
# Fri, 23 Oct 2026 16:35:47 GMT
VOLUME [/data /logs]
# Fri, 23 Oct 2026 16:35:47 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 23 Oct 2026 16:35:47 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:35:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f864b6c232b5dea3ebd4e4246d57582f9f6fc2df3c7fbc4b7fdadd232d8fe67`  
		Last Modified: Fri, 23 Oct 2026 16:36:11 GMT  
		Size: 92.6 MB (92618035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9fabad96ae3bc44bd6f2d9112be42eba91576b3a829a9d37dd666d383cead6`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 98.0 KB (98047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aabf8f70dbf36879d83bdace2de5ebf03478594e4c6526ae548c1b90eaa7280`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 10.0 KB (10038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543c63e9294d23c5025f88b8f27550080a6ac4873c2c18fd45596ea89f5c227d`  
		Last Modified: Fri, 23 Oct 2026 16:36:14 GMT  
		Size: 257.3 MB (257301274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:2f92b6812591aece2954116dfb248f56531bbb8b9bdcd99a74306eef27271243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4406255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4628807bb2573bb68c671b285c991cea26b4e6c12bbd223099674addd564700`

```dockerfile
```

-	Layers:
	-	`sha256:09028c4b2a6a9e9e529e17d2d5b188bb80a548db0839a983d32749d18ed63210`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 4.4 MB (4380949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ca925affc9fa4443f9d9f82b8ce9e9e4d64c00faba471d2ded0ecb7748ad58e`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 25.3 KB (25306 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:e4d20085a77816a4fbf7f10e30be80d92f3cf160dde8dbe417520ee3e11032b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.2 MB (378209843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b9fb2e4a7af67e19f26961891c8d9c9ef8df2eff7c58ec66990d5fa35a72d1`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:35:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 23 Oct 2026 16:35:08 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 23 Oct 2026 16:35:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 23 Oct 2026 16:35:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Fri, 23 Oct 2026 16:35:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 23 Oct 2026 16:35:32 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 23 Oct 2026 16:35:32 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:35:32 GMT
WORKDIR /var/lib/neo4j
# Fri, 23 Oct 2026 16:35:32 GMT
VOLUME [/data /logs]
# Fri, 23 Oct 2026 16:35:32 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 23 Oct 2026 16:35:32 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:35:32 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc15277ad6636f43a0d706cc53fb3400a65dd13c8ad95daa029dff34d14cd88`  
		Last Modified: Fri, 23 Oct 2026 16:35:58 GMT  
		Size: 91.5 MB (91528845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db190ea1e493ecc356309cc451a5dfc184cc01268326e91334ddb0bc554dd8b`  
		Last Modified: Fri, 23 Oct 2026 16:35:54 GMT  
		Size: 98.1 KB (98058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20ef007c008e46add344b75f046fe956c5425c6e4e274aff91e53b135d1fe2f`  
		Last Modified: Fri, 23 Oct 2026 16:35:54 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728e9d59721edcae29e12f8e2ebedd6252a76e4cb96767e5bbde48a51ddf1915`  
		Last Modified: Fri, 23 Oct 2026 16:36:01 GMT  
		Size: 256.4 MB (256372389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:334a6e1310d1f739d7d61eefdc1b42c63c7fe669c15f887adcf4a6b8b4855c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4401108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d578ce0f6feaaffbdd7c2ceb3ccd4d69fe4b7b6db76c05b9981d2c1698e03fcf`

```dockerfile
```

-	Layers:
	-	`sha256:2a28ec73ac25cb2ba19825d32696741d003b3c451e8085b3c46a2f7b5b45b58d`  
		Last Modified: Fri, 23 Oct 2026 16:35:54 GMT  
		Size: 4.4 MB (4375513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7087fd3576f33f756d025d170b62b1862522b5d4436e4fe9dcad3e447f6683a1`  
		Last Modified: Fri, 23 Oct 2026 16:35:54 GMT  
		Size: 25.6 KB (25595 bytes)  
		MIME: application/vnd.in-toto+json

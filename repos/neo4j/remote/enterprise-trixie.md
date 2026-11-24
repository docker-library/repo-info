## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:e646eecd38ecff6a2b4cd87a7d496fbc05ad478becd0126a0fa7fed5dc60a532
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:580db5cafabb98a981498807ba44d97d01809d1b58ef06fc006ba2b9c3d820b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.0 MB (571023213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125561ffde1b324ce9a193219ccb8e95b0a945741e223c5d668d0a479d63ee38`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 18:42:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 18:42:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 18:42:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=46a1484145d57073a6094b1ac958bf6ae1ec25b5f6969f248d1403df46715950 NEO4J_TARBALL=neo4j-enterprise-2026.10.2-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 24 Nov 2026 18:42:48 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
# Tue, 24 Nov 2026 18:42:48 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 24 Nov 2026 18:43:15 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 24 Nov 2026 18:43:15 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 18:43:15 GMT
WORKDIR /var/lib/neo4j
# Tue, 24 Nov 2026 18:43:15 GMT
VOLUME [/data /logs]
# Tue, 24 Nov 2026 18:43:15 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 24 Nov 2026 18:43:15 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 18:43:15 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f984238ad954ab186507609646897db9bcfeea984baf6cad8d127e68088c89`  
		Last Modified: Tue, 24 Nov 2026 18:43:48 GMT  
		Size: 92.6 MB (92613960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685ab57d77bb178ae3e7ed60dd780e25069ba9c6a8e12c9d3011bc9769f693fb`  
		Last Modified: Tue, 24 Nov 2026 18:43:44 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ebc06c426d4982fe04dabd4c14c1799fa1763b55f457e2042b233621d9f56d`  
		Last Modified: Tue, 24 Nov 2026 18:43:54 GMT  
		Size: 448.6 MB (448556998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:16e197d7f31b18b9fdeebb7b4d8d7599c4a6bc8c359f9ae91b0f5de24a9a8313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2199f34befb1205a853a7647f344876c2c42379ddf946f853c2dd508e8d0df7`

```dockerfile
```

-	Layers:
	-	`sha256:420ff7834fb7b92d0362a3012c837d34dfad3981093961b99116be52e7743a15`  
		Last Modified: Tue, 24 Nov 2026 18:43:44 GMT  
		Size: 4.7 MB (4720076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb15209b19d4fc83f6220e8294938043d01d3526e50c2f9b9d880aeb7ecdeba`  
		Last Modified: Tue, 24 Nov 2026 18:43:44 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:9b617e98363c78b0f1110662b8c1de3fb7329964a543751dffdf1ca589478c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **569.4 MB (569388993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878d3213002d6af905cf4d61027d0b402ed488d2ac5223d592afb22fa723d267`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 18:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 18:42:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 18:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=46a1484145d57073a6094b1ac958bf6ae1ec25b5f6969f248d1403df46715950 NEO4J_TARBALL=neo4j-enterprise-2026.10.2-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 24 Nov 2026 18:42:10 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
# Tue, 24 Nov 2026 18:42:10 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 24 Nov 2026 18:42:43 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 24 Nov 2026 18:42:43 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 18:42:43 GMT
WORKDIR /var/lib/neo4j
# Tue, 24 Nov 2026 18:42:43 GMT
VOLUME [/data /logs]
# Tue, 24 Nov 2026 18:42:43 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 24 Nov 2026 18:42:43 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 18:42:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51675547eb805ca2ab1d3ce1cbe5769402eb721cdf666a2a2611fdc669bc34c0`  
		Last Modified: Tue, 24 Nov 2026 18:43:17 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a7a6cad5057d39bfd3e417f3a87913a4896e09f97ebe1c6b988b1e228c05ca`  
		Last Modified: Tue, 24 Nov 2026 18:43:13 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea7224ebf4799b4f0e00e3bbb751381b8675ecf05e21936f1e0c819e5f5e2c4`  
		Last Modified: Tue, 24 Nov 2026 18:43:23 GMT  
		Size: 447.6 MB (447626941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:97da878b8130f694ba2e2bdfaf07e0599cb3fd857ecfaf88e071132c03883314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4734839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c9b690b312e92cee5ad417f8579e32dd0e2af144a329b4d8f5584d02579557`

```dockerfile
```

-	Layers:
	-	`sha256:d4b2d004a50ff12ff191be9215fecdc0daa5d60e329d02b0330ef63dfa0212d5`  
		Last Modified: Tue, 24 Nov 2026 18:43:13 GMT  
		Size: 4.7 MB (4714544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de41173a7637338324d5e56244bc74934c5b24ab8c8a649eabadd9b5a320e0a2`  
		Last Modified: Tue, 24 Nov 2026 18:43:13 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

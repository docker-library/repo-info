## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:577eb43120e8688e62e753e962c47d30044ecaa95147ee5386c29f226b878008
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:b2699aee42587a5a579648ff5dd4cfa35b82326615280a8df7c632a247485aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338528225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571b90f0ab913728ff370005cfcc6f91e579afb33bd62103cd86f831a1946afc`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:25:40 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 12 Nov 2026 00:25:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=db8f7ab2eab05109c87d8bb2096e14100532e5701a76d56257f06301569b6c26 NEO4J_TARBALL=neo4j-community-5.26.33-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 12 Nov 2026 00:25:40 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
# Thu, 12 Nov 2026 00:25:40 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 12 Nov 2026 00:26:03 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 12 Nov 2026 00:26:03 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:26:03 GMT
WORKDIR /var/lib/neo4j
# Thu, 12 Nov 2026 00:26:03 GMT
VOLUME [/data /logs]
# Thu, 12 Nov 2026 00:26:03 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 12 Nov 2026 00:26:03 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:26:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a86a0b4f686860913d640bc6fd6bebadf77a9ef1634e209a0dd56ff25fabcbd`  
		Last Modified: Thu, 12 Nov 2026 00:26:29 GMT  
		Size: 158.4 MB (158409387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de325084f13adda2102fe21822903b8651a0f0db4041db60002b6f2ad4f4fa65`  
		Last Modified: Thu, 12 Nov 2026 00:26:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da30244a0d58cc0c29ee22ae3951595acee3015ad08f83d7de85ad0fa45f59f`  
		Last Modified: Thu, 12 Nov 2026 00:26:21 GMT  
		Size: 10.1 KB (10078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ccce9ffbf9c34107032f7f0efbc78ed8da5afcc0efead9338717f7a16deda9`  
		Last Modified: Thu, 12 Nov 2026 00:26:29 GMT  
		Size: 150.3 MB (150252467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:61e619ca6387a4e754c91d80f5872bfddd235628ec4b0cfd3d0f26fced93aff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c985459d1df2861a0772abfd98710f1548aaa5cd04208b352bc0cb55042933`

```dockerfile
```

-	Layers:
	-	`sha256:ce95da98b743d0350b9e3134a96e658604bd062671500c72c10433248d9f9831`  
		Last Modified: Thu, 12 Nov 2026 00:26:22 GMT  
		Size: 4.3 MB (4295477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d2ae26bad3274eeb80bafca36435e049659ea26525965684d0fe8fb08571e14`  
		Last Modified: Thu, 12 Nov 2026 00:26:22 GMT  
		Size: 24.0 KB (24011 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b5ba9424e6a1760397a362f0b35c7e350730d4ef754e3dab605093af64d6b012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336237946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2570214cdf39dcea639b83ecc116db476cb9eaa867bd04dd59551fecfc4329`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:39 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 12 Nov 2026 00:40:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=db8f7ab2eab05109c87d8bb2096e14100532e5701a76d56257f06301569b6c26 NEO4J_TARBALL=neo4j-community-5.26.33-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 12 Nov 2026 00:40:39 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
# Thu, 12 Nov 2026 00:40:39 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 12 Nov 2026 00:41:02 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 12 Nov 2026 00:41:02 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:02 GMT
WORKDIR /var/lib/neo4j
# Thu, 12 Nov 2026 00:41:02 GMT
VOLUME [/data /logs]
# Thu, 12 Nov 2026 00:41:02 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 12 Nov 2026 00:41:02 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c50e13dd27998d36bd77d7f8e620e9147a37d0d8f8357342d8322a8e5c43b8`  
		Last Modified: Thu, 12 Nov 2026 00:41:28 GMT  
		Size: 156.7 MB (156691641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1281e0457cd6837b5927face560156d453f8eeb3faa95db2105202ec9f83f159`  
		Last Modified: Thu, 12 Nov 2026 00:41:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b250459a37909c8b44be8636444ab17039ad4e5b0c4618164650c245168d938`  
		Last Modified: Thu, 12 Nov 2026 00:41:21 GMT  
		Size: 10.1 KB (10074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa72231e8309be129ba5bfe7bbad45b3ac94f90252b1d81119cb7e51697f29dd`  
		Last Modified: Thu, 12 Nov 2026 00:41:28 GMT  
		Size: 149.3 MB (149322034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:884c74129da535a680dbc9807e9c5b2b6cb14f64a743e92570ab031e87596f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4314250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2f9c299052f8aea81321ac833638248bfd541ef412139032c7e8a6653072b0`

```dockerfile
```

-	Layers:
	-	`sha256:eae099be233a14ef76bdd8619e0307c1870563c81adf1b7c49c92ca8107f2612`  
		Last Modified: Thu, 12 Nov 2026 00:41:22 GMT  
		Size: 4.3 MB (4289996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eeada2a1a602d292c9c27cdd46b0899c52bfb38a043dae7fb76910465851fe8`  
		Last Modified: Thu, 12 Nov 2026 00:41:21 GMT  
		Size: 24.3 KB (24254 bytes)  
		MIME: application/vnd.in-toto+json

## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:1f68eaa8653a249d771a9c3d548aef0aa0608b1de7d7c8c0882ee6bee4edfa8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:980f08984bf8567748cab1b99c62645aadd379daf4f32ac2aa903c27b94198ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.7 MB (687722262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa99dcde2726e20eafd0b168d1e9654d77775a700f9d72f6a4be579e270abf7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:59:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:59:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:59:31 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 20 Nov 2026 17:59:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=484d19f9e4953b50d69d79a2177719bfeba721f0da17312c8720df82af7156e5 NEO4J_TARBALL=neo4j-enterprise-5.26.33-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 20 Nov 2026 17:59:31 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
# Fri, 20 Nov 2026 17:59:31 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 20 Nov 2026 18:00:01 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 20 Nov 2026 18:00:01 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:00:01 GMT
WORKDIR /var/lib/neo4j
# Fri, 20 Nov 2026 18:00:01 GMT
VOLUME [/data /logs]
# Fri, 20 Nov 2026 18:00:01 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 20 Nov 2026 18:00:01 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 18:00:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78a94941d9ac2d22a14fd62209cd82999fa7976bea1f8362f337c9a9dae08aa`  
		Last Modified: Fri, 20 Nov 2026 18:00:40 GMT  
		Size: 158.4 MB (158440960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819356bfb7366fbdb4a1c5b6cedb21e1d8a3de35541b10c9d73c1a45229c5fd7`  
		Last Modified: Fri, 20 Nov 2026 18:00:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69c6670894353bb94ba97757399b3e87aea49c513fdcf872aeb20a2c37ca26f`  
		Last Modified: Fri, 20 Nov 2026 18:00:33 GMT  
		Size: 10.1 KB (10074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24985f43d307de7d103121fc292984e5f15928ec81fd4ae156a401b53911f3a`  
		Last Modified: Fri, 20 Nov 2026 18:00:52 GMT  
		Size: 499.4 MB (499414938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:702e2d1da503061dad071f84f4c4a7fc2d236dd84c02e9b2785f3d4c94de9328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4675491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fb5952b783acfadc14cf7a8f89efe3a2d635d9de7f81b85ba146927a5c4dd0`

```dockerfile
```

-	Layers:
	-	`sha256:7a1f749b142cb98e820eaf8e81a119d9f9b2064f5ffb3b42b62c111a3b2c47dc`  
		Last Modified: Fri, 20 Nov 2026 18:00:34 GMT  
		Size: 4.7 MB (4653250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61a79f5305c969ec89dffb342778f57e02477d2877dd7b5bfe79c566cda7c10b`  
		Last Modified: Fri, 20 Nov 2026 18:00:34 GMT  
		Size: 22.2 KB (22241 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ddb63c75ff7f96008ac9549f6d1bcc33d0de9ccdc219832edceafbe3d7a07797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.4 MB (685401654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d623bae4651e776f72d360d7dd5443cb0363fef5d7e100a7484f4dd0afa5dc91`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:41 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 12 Nov 2026 00:40:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=484d19f9e4953b50d69d79a2177719bfeba721f0da17312c8720df82af7156e5 NEO4J_TARBALL=neo4j-enterprise-5.26.33-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 12 Nov 2026 00:40:41 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
# Thu, 12 Nov 2026 00:40:41 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 12 Nov 2026 00:41:11 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 12 Nov 2026 00:41:11 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:11 GMT
WORKDIR /var/lib/neo4j
# Thu, 12 Nov 2026 00:41:11 GMT
VOLUME [/data /logs]
# Thu, 12 Nov 2026 00:41:11 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 12 Nov 2026 00:41:11 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0582f0103ad3c4695e9d10db08a7619b79586beb722b3e817a5f5e2b6e7a12d`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6b9504546cb8f5f5bd95bf2ec20cbfb7b5227fcaf212f52a8759a8dcc2637c`  
		Last Modified: Thu, 12 Nov 2026 00:41:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efddd9dba848a70676dbef2a10d34d94770ae00e131df8eb6ca559d5aedf84f`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 10.1 KB (10074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52aee6ca0422db4e3f6d85b4678b6c52c028159ce59c8dcbdf90aad2e2cfd03`  
		Last Modified: Thu, 12 Nov 2026 00:41:55 GMT  
		Size: 498.5 MB (498485732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:0279ec26a7dd711cc28eab1b239adf45ce58a7b5911e8dfdec7d961a298f2590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4670099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ecb743a65d8c90456a5ca50ddc5018c8c35430aaf50343d9b87094d685e3fa`

```dockerfile
```

-	Layers:
	-	`sha256:d18ede2fac83ec490c239e7469148fb771d695379da1b1e6b5c55e6f9aa67857`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 4.6 MB (4647689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dc9261270ec12ad7dad9b804ab90354cd41ec8a938fab689f2e6c9aa34b65c7`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 22.4 KB (22410 bytes)  
		MIME: application/vnd.in-toto+json

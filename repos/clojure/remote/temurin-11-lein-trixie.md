## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:1f696564f2d2fb7690ae6c35b4afedeeb19ca463ce2227c406ae569197d597b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2ee6a2bd3b3cf85750baa30d83cd56208596b1ad3b031efaca212f9cf01caaae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218595162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141f8a9cee07a062fba2c490348ca25f3abf5e1cb85093681537e8fb5dc68470`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:23 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4e95d363fbf7954bc6270d066d848041a13c90d219d184a9f00a5d02a85ed2`  
		Last Modified: Thu, 16 Jul 2026 01:31:45 GMT  
		Size: 145.9 MB (145886182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd0a561a5f3d36f135d713cf2aec2acda272c19c1951a87eabeddb558405a75`  
		Last Modified: Thu, 16 Jul 2026 01:31:42 GMT  
		Size: 18.9 MB (18881162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4b4988f0551e965f090274aed6e7997b9360cc5bee562500a1fab1885ff65f`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:af7532b197d53cc436e0f64c1fdc367f9c982b69cf22b433747fc7b505646fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcf460ed2d7c638fcb11515dec6455ff4e68b96b348eb28c59d0cf15f0a7b88`

```dockerfile
```

-	Layers:
	-	`sha256:e8ce31bc7032827282900ccec6468b02ed4b6fd9cfd1ccff9a1848467ff044a8`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 3.8 MB (3837372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63b9e35be0ea71c6070a896747e287ad73228ff12c61101e6a1eadc9f956c4eb`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1e4c07c04b4f666aaef6b46a9009002cec266b9fe6f2a57087b21241dcb64b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215623688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81cbdb95f647c8e0acd183c1b4584a5b7984f9e06407188d588ad84a2d43f159`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:22:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:22:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:22:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:22:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:22:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:22:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:23:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:23:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:23:25 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:23:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:23:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f13ceee1313c63c2b4be9a3bea788e3c75da56f3e4c264c6cea9b891ff95a9`  
		Last Modified: Thu, 16 Jul 2026 01:23:47 GMT  
		Size: 142.6 MB (142582185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccd0b17af043a91d21af527ca3317eb3a7eef1c0a4b24341913882e48afbc9d`  
		Last Modified: Thu, 16 Jul 2026 01:23:44 GMT  
		Size: 18.9 MB (18852086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff533240767497fda94058edd3a441678032b7dd49dc91a92d44f3aae5916f2`  
		Last Modified: Thu, 16 Jul 2026 01:23:43 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c5c7771b9f72a0f3111dfa0572d565474825b699904d8264be4d667c7bf47273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f095ca1c9bfce43c16f69e76eddc9e71b7a29decd0874dc52d94017def16166`

```dockerfile
```

-	Layers:
	-	`sha256:f34f3f449c3dd87e29ac1549f452b03873502cbb10362095fbf2cf5bc7b8cbe1`  
		Last Modified: Thu, 16 Jul 2026 01:23:43 GMT  
		Size: 3.8 MB (3838230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ebcf57b309b32440c54cb3e19f1866ee3e8a8d56392d7168ce0db678c82655`  
		Last Modified: Thu, 16 Jul 2026 01:23:43 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f622b61ea72e80c1402ae607ddaa79a3540cefc3eae66fbb3fad54d4c29b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209695639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ecd8496306f1f99adf105fc3b4627c52c6ce59f9dd408de3a1b876360d166f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:30:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:30:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:30:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:30:25 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:30:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:30:26 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:33:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:33:21 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:33:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:33:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec7af664a669f7b98a7f59cc1132ef680f8d6ecb178893c971a9068513e413`  
		Last Modified: Thu, 16 Jul 2026 02:33:59 GMT  
		Size: 133.1 MB (133109889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a4163ea510cb8c9a63a125c6e0c937772796426fb1aee7c0be7de6c2ca70f6`  
		Last Modified: Thu, 16 Jul 2026 02:33:57 GMT  
		Size: 18.9 MB (18936496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ec4ac0cad249c8338c80ced3f82c11d86ba51f5c590fc54f998780e9ccb6cb`  
		Last Modified: Thu, 16 Jul 2026 02:33:56 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b2e3f6de65db1448546c316d2b012027caab84aa9c7b3a8402f701a2fa9455a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2a4bfb11dd414e6de67a5c832ba3d604f23c0f92522906ad5171eae4c6b9f6`

```dockerfile
```

-	Layers:
	-	`sha256:f29202181f0b9dbc14fdb4315c4b1d06377d187001efee60879d7080b018e25c`  
		Last Modified: Thu, 16 Jul 2026 02:33:56 GMT  
		Size: 3.8 MB (3837757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff65e78e0893ba6c93528a666da039855dbe6f332a1f0f574bef3dc12219ee8a`  
		Last Modified: Thu, 16 Jul 2026 02:33:56 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:894e9e99001143d5ad47efea9b62f400ef8ec753885575208158faf47c4fbecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199470744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99a1e9959dfe68c6b5a8a6913f60d57747cfc9eb9bb56a0a9f5ddccbeafc0ef`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:43:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:43:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:43:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:43:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:43:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:43:19 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:44:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:44:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:44:32 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:44:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:44:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29472702e321d0917c3dc2d9bc40ddf844d24f8fc8e588fc2f763899bad6bb22`  
		Last Modified: Thu, 16 Jul 2026 01:44:59 GMT  
		Size: 126.7 MB (126651679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d1af07938c28c2381d5e81dc7cadac83af26158fb483b360ea11839539050b`  
		Last Modified: Thu, 16 Jul 2026 01:44:57 GMT  
		Size: 18.9 MB (18922096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20bba9c8767edb16482eec0d113bb9815b253ab0f6b72c7990f549ee2a4f5b0`  
		Last Modified: Thu, 16 Jul 2026 01:44:57 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:402643fe652dd90d30381ddf0a94673fc1546c3fbceb9ab49f7039935357ba8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb72b7894084d9aa2e09e77c44835a9f77fbde349c50fa417766fc3cf585c60`

```dockerfile
```

-	Layers:
	-	`sha256:24393fb2fe53f0facfc288eb48eeed261accc22eb6e63b625446251ee19552de`  
		Last Modified: Thu, 16 Jul 2026 01:44:56 GMT  
		Size: 3.8 MB (3833803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91537a7b8e78ae5886b1981400a11c360f3f51eb1876ec9a5411e635478b9443`  
		Last Modified: Thu, 16 Jul 2026 01:44:56 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

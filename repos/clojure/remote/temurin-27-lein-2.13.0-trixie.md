## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:b2fad4983e3001631111fcf989bb0db1ae5ddf156c67fbb6caafdc8207dccbee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:98b908944e750122b71f50d54992522cbaaa3929a02c74cb0028f3c4212f0876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166463351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca23c851ec88fe2e1587bc8bdc62d62e7917a23426e418495622787dee93dc7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:11:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:11:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:11:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:11:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:11:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:11:49 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:13:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:13:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:13:06 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:13:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:13:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:13:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:13:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2a3c91e06d7732da9e109f6cef3383ccdcca6166fde2f2c6fa075ad0eb0e6d`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 93.6 MB (93649643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a3fe05937f7ce7866c8a2b2f1f2a06525c46929e94e2ab89f8d9f1386fe02`  
		Last Modified: Fri, 20 Nov 2026 18:13:28 GMT  
		Size: 18.9 MB (18885052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ebb9a1368fee05ddf2bdc591e2cf560df8eceb98448f24f204de2ca5a92807`  
		Last Modified: Fri, 20 Nov 2026 18:13:27 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723a2bb9bb67270a4d5ce3163e6875e62c879a1bbaf4d3dea26d4cc2f1dd9be5`  
		Last Modified: Fri, 20 Nov 2026 18:13:27 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ced385ba9225e9659e153de60f6b643ef54bfb2695c838cf64da71bac3e01644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e128d6ecc7babdcee00f00a48c5e21ae7d8c446703cf2981225b36822e775a4`

```dockerfile
```

-	Layers:
	-	`sha256:e3ea781f370324906aa4dbc875eb4c18478db0501dc54ab5fce8f9b3bd826e48`  
		Last Modified: Fri, 20 Nov 2026 18:13:27 GMT  
		Size: 3.8 MB (3790116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674d57d2c1cb90a0989ddfe204bd49d2815964e8e03b18bb4fc7dc661c788693`  
		Last Modified: Fri, 20 Nov 2026 18:13:27 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e036ea7fec0a9571b9b2f104e3a011f320df99815f6ccad52b2731034ca15f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165798377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69206a4bd6a8a27f229e7de307ea17be343d13d7a7fa8e7c6cb62bc48ae20a07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:07:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:50 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:50 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:09:11 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:09:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:09:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7307ff37beebce03a882b9973c1f1711a252f78a74034498cc9f390fbff8b2`  
		Last Modified: Thu, 12 Nov 2026 01:09:33 GMT  
		Size: 92.7 MB (92660455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d84bec610e7ef78a56df23fa11f8d28973066559862e7d17706709509de7472`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 18.8 MB (18843175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb16ad803a2bd612cc770c99dac60f0d6a9f7f4c4bd37a2aa3b047264a5703`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91eecda0970b90153c686f5867946cb50511c728bc642b8d822766fd1074cc76`  
		Last Modified: Thu, 12 Nov 2026 01:09:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a4ed0f51b412e56e7a95f8e98636e80391f7859ba20ae7fbc0763dcd022d0c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f249fd8ef9965c57c3177395d92104f883919d556b2d0b14c4bcb2fa3a1372b`

```dockerfile
```

-	Layers:
	-	`sha256:606a47f93edd236cd55d50ba1e4073d3d55d5dcedc70d0a82b58cd3c1f264898`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 3.8 MB (3790361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a51073d935ac0f0e637c4bbc974d589e4dc37a87bfaf9f3f0ba3b6458ad9756`  
		Last Modified: Thu, 12 Nov 2026 01:09:30 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d45c801540c79ed41aadfa53ccc20f7b99c10610253f025295f683d42a73058f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168615363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd576c41ce6d12de76851294697071929aea52afb2405f0bda19f9da1dbf64a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:01:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:01:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:01:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:01:59 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 20:01:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 20:02:02 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:05:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 20:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 20:05:12 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 20:05:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 20:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:05:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6c5dd76cedabd84f043fdc0b063d5baa529c1b95e0188959650b2432e0eb94`  
		Last Modified: Fri, 20 Nov 2026 20:06:00 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98da25ac5d01fc991e011037bd1f3a0f349ac715bfc8c191a5ce3fa9310dde7`  
		Last Modified: Fri, 20 Nov 2026 20:05:59 GMT  
		Size: 18.9 MB (18940300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c261b9a9f6368de8567a91946dcdfeec2a9b07600d9758d9ba2fc6777d42b7d7`  
		Last Modified: Fri, 20 Nov 2026 20:05:58 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba11bd014e34b564962482bbf35be29bb9976c544ebf320826f30f8d3ebcbf9`  
		Last Modified: Fri, 20 Nov 2026 20:05:58 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e30f1b68132de448243cc165836920cabe7c7d91cd9ea4893ff73f0204f881c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bbd972f4299d546cf37d78007676cc53dcb75f3aedcf8f5f73b5f171ef5faa6`

```dockerfile
```

-	Layers:
	-	`sha256:89bcd354d39b64c509c56ca25c774620402eebd747315943cfcd6c90663072ab`  
		Last Modified: Fri, 20 Nov 2026 20:05:58 GMT  
		Size: 3.8 MB (3773189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc3216df573e34232df31a6325fa494898e9efc0c9061e5b6db1b79c759fe6f`  
		Last Modified: Fri, 20 Nov 2026 20:05:57 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

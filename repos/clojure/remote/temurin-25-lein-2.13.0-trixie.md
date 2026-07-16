## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:a8e9193c9454b7d368ed270831ebf0ee8a67af453ce364a79bfda750aeae5bc5
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

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:db9dd2bad00bba388b490fe64fc3e56c0fd361eb3b54f04758b58ec76e02e25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165284444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e80a043f90fd02856de30c59a596e5c2a8a4c8f204af8cd0a69e9b4ba3eca34`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:34:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:34:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:34:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:36:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:36:06 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:36:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:36:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba70ca20e65e1192aa8d1ceae95662a7428095581fac6e3cdb9d0cf70325fbb4`  
		Last Modified: Thu, 16 Jul 2026 01:36:25 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43103fe81f14c3e15b6acf8ca5c6e2a4aebff9498efef54e93cef3bcac4243d4`  
		Last Modified: Thu, 16 Jul 2026 01:36:24 GMT  
		Size: 18.9 MB (18881685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90602842f5ea1961e186c32dae0c55fdbc6c0d308023a1e76700c56dd74f09ae`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d699c3ee04002bbcf960ac5b912a0bedb70f3aa9e3072bbd3c0f247251cf85b6`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a52a25a4af96c1d4fad20f46520d58a99fca5031c6f8712363c8beb38e88eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8350dfd54a9ccba00b246849d8ca3a77be23d7839da9fde70757d2c586c00116`

```dockerfile
```

-	Layers:
	-	`sha256:1cf8d88c782d6cb187b9772fe50d074530c5337f607c90b79f5ee22696450301`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebef8a8c05d16b66f7070d0255e61d1e631f809d78158399c15be8bfadefda23`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70cd7e4714a767a33242e5bc05fd8e6feccf4d5691d28a96fca81a5225739f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164584158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88b27bed6ea05d06a684320cf9eb199b103fa4d77ec195204aad931f3541dc4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:38 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:38 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:53 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d42d47fcd5310e0df8adcef1e6df0fd75e4bfc81f2d5c17cc6ffbfbdccb301`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 91.5 MB (91542206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821d98ac3eeaadf3230e67343d3d14448e33b9059c9de3dd0c57f9898bc15f67`  
		Last Modified: Thu, 16 Jul 2026 01:32:12 GMT  
		Size: 18.9 MB (18852148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1714f55eb657819d7ec4e7de9f803848acb4ff3de41d4c22d639e14d378eff9f`  
		Last Modified: Thu, 16 Jul 2026 01:32:12 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2a4a80e2f9a93016a4bc16a5ded1859003b5102b01af1fcb63f2273d0d19f1`  
		Last Modified: Thu, 16 Jul 2026 01:32:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:725c52627f76188062a995ad5ef011482dd4c09f684e858f063466ebc4adaeda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17309d596b050ac83e85fd6c4bc33e60f6adc59d79421a73e1b0213cbdbf756f`

```dockerfile
```

-	Layers:
	-	`sha256:464a19afdc18e2ee65ed76d49dcfc6854871ec4eae78ce08d7a01cd421532a8a`  
		Last Modified: Thu, 16 Jul 2026 01:32:12 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:044c89cd6b2e286497c42fa197a46ffb59e135ff8cd86e545a718b5782caedda`  
		Last Modified: Thu, 16 Jul 2026 01:32:11 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:66462e52bd2b712dedc33b2f3064cdf0dd3ef5b7db540f825fd755e6215a08fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168500222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4ac1972265508b87a8c760d3773e5414d2b11bdccf60f1765029285c5217f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:59:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:59:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:59:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:59:37 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:59:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:59:37 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:02:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:02:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:02:36 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:02:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:02:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:02:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:02:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023419aaa22bd51cc990854874a746aee97263909b476e5f2d18f55629bb587e`  
		Last Modified: Thu, 16 Jul 2026 03:03:13 GMT  
		Size: 91.9 MB (91914003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c612d6dd1ea478564f0def630575f3499773da87a2b8a77e793f3d0c6beddb`  
		Last Modified: Thu, 16 Jul 2026 03:03:11 GMT  
		Size: 18.9 MB (18936557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8eb991c39fe8dbe299fd808f148943620a16184bb2f46fb128bfc9449ce137`  
		Last Modified: Thu, 16 Jul 2026 03:03:10 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f01bc9be57a49df50ecc66a004ba01ed56fcbc9a332da368b348ed200d12be5`  
		Last Modified: Thu, 16 Jul 2026 03:03:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:634640938e825b44a422792f7e28d1f4a28aba8a1a1a446741b7d15cdd89bb38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74707eea334664d0e0ad8cdad858e1e32342a84512af8b73f0d0ac5a2ec009f6`

```dockerfile
```

-	Layers:
	-	`sha256:76b4dc5c6129661c3dba0d0817cbc833242f515e83d412e46d636642a8adcf80`  
		Last Modified: Thu, 16 Jul 2026 03:03:10 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:211348a73839585b3f20953e2aa365c5f95d50e0a6b996e4f52890ad9cdbd20b`  
		Last Modified: Thu, 16 Jul 2026 03:03:10 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:ee91267d75c04cf63cf0a382003820d550711f424f705a7efd3cce37afa3bb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161240337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551e56a0c764f979bcaea76b469766c5149231ce33eb592c07e25776fdbc6096`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:53:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:53:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:53:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:53:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:53:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:53:31 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:55:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:55:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:55:01 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:55:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:55:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:55:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:55:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d13315ca06c86762662132f058db280d393a111e5ba81c8f8a44c43c3c3fa`  
		Last Modified: Thu, 16 Jul 2026 01:55:29 GMT  
		Size: 88.4 MB (88420315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a799421c26ca3f53f111c8999277176d30acfeb4a4bf31e43978b8c4ca67faad`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 18.9 MB (18922659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b944c9242af614a293d6e7162344a4e1c0193841ef972138d051fd1115ad47`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f62245a0c5110c259a76ae255e255ca777635adc1411eabfd0ea9919e3c3ba9`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8e634b1a27edfabf1159e449b7ef0b5ee523d0b5a8f5e9eae0af674624c80109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa0647c0a3566f23e4afd2c015ad75db2fe501b9e1b0976faf492025def627`

```dockerfile
```

-	Layers:
	-	`sha256:16d9a37d425e8dce77266a1c0eea091227d19fa2b4ec821a0ea97c20dddd04e4`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09a0516a23e96825e06705085e8fe488b86095bea4521284631675f71ebbb16c`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

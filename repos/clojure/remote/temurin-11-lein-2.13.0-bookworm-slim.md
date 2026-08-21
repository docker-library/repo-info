## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:2840c93e5f363d177320e4b61df390246452409aee997effb63705de525ccf0f
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

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:733ed3a196635c915264c4ed1bd8fa2de565edd1f9628be3f91e9d849d2c6810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196681976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e819a43f84729cec745d8075e2d707ddc31b7370ef5b8d6263d5df98c9588ab`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:09:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:09:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:09:56 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:10:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:10:59 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:01 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4aa20f2ca2fccd668ed800c70a7d4c3ab79ab797b6bc575bbacee8f254a570`  
		Last Modified: Fri, 21 Aug 2026 19:11:19 GMT  
		Size: 145.9 MB (145861460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a829175b28ef71184a5d71a0ef4e4f50a7af91280f83875972bbabb2af297f2b`  
		Last Modified: Fri, 21 Aug 2026 19:11:17 GMT  
		Size: 18.1 MB (18072726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58730f6fdb7c439dec09748c23d924f02ba58510e2730ee4e833f1932eddfdcf`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cfc3d4682d923dd054c13d2885ec2fb62e140bcadca626624bbf82fe41ecfd13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e495cacec0d9fffac97aea89c3c8f899cab0515645c26502ab74be5ae60cd29d`

```dockerfile
```

-	Layers:
	-	`sha256:b4e2936500e3842d931c261068647a4ca712e027aa9a3ff7826426e6a370a3c9`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 2.8 MB (2757090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1149d954807c665dee4679524e921901f450ccfaae0fd851c3b77a30cad0844`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ba25ff5840a8de3690cb998f9abdbb81426590ce47e3e29f562cb2196bbc895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193105510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d487d01397e63c52ec0aa37a5842b66d36ddad8b43d3a362fd93a1f18981bd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:00:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:00:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:00:48 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:01:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:01:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:01:58 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:01:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:01:59 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1216941d37009a92c8a66f4d06173f5f270e80cf94a89b6a90b8d1e4b2324103`  
		Last Modified: Fri, 21 Aug 2026 19:02:21 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbeb2480c4620d930653d20fdc31ccf40ad393084557b6d82fa835a13ed5608e`  
		Last Modified: Fri, 21 Aug 2026 19:02:19 GMT  
		Size: 17.9 MB (17906479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a2782555ba214a9e7cdece954058fbaf12512287ee39d116d9a5e49e528948`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:59665a755084c8ecf59706ef820623755a62662e42191c8e33f276a7491dd324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253ca3315d0858724e35aac4f0871ea1c07b737d44f44c7617437f5a68c28568`

```dockerfile
```

-	Layers:
	-	`sha256:198f4512198c0647a0dbfaaf2bfeca148f854ab04bb3f79b968fedfeb531016a`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 2.8 MB (2757323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8094eef7ca8be120f18efead664a91afec7418d7df0e53eb4843ac2f663e61ab`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b589eff8def40dbf40d01a60796cf69ebc5c37c785c37c5a4c03ed8db0326f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187980813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1be7c39e7c07e17e499600f64b3e9a74f08a43152f7a6a3f411beef854a28c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:52:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:52:34 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:55:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:55:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:55:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:55:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cece95074d9f98cb7ffd64415805e6108cc4eafe0736f316502a68df5e465cba`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1a06d08af4478fdea2c61cea99d2bd55f35996df0a7786a1a9a5c51cab8eed`  
		Last Modified: Thu, 20 Aug 2026 00:56:02 GMT  
		Size: 18.3 MB (18279099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f209c136f9a9719b9ccbef8ae9e1a054114cdd9aa34a310c02a02c83bfef918`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d120a741ec47ef2d2203427c8dfb891cea4399fd1de203c32590f2cc4f3e98dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7653a0f8575d970401f03432ed13117ce604145493bf5361ded8dcdb56878269`

```dockerfile
```

-	Layers:
	-	`sha256:65f039fb714807f78a2d2633094d23e3a02406b8946c245cf80efbc6c8cf713a`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 2.8 MB (2758310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35da1f6952de94786da8074f2ffe57dc959ce5491a38a7ca588aa921ebd408f7`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1159cacd7723a03b332fbcb7b3f502da66b4624206b3128ef4239b2e4b39c889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175780600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f33882dcb1f7fe31781ac3921fbdfb3cb9dc0d3db7861526e20f3bb0892187`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a628df3bc4b8979eb35b19e174103d827ef21f8bebd6f7f511de67c5851da047`  
		Last Modified: Tue, 04 Aug 2026 02:49:48 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4c492f301f783d06a1a8196102417b2c6614c6b9fc01229e8136ea1f8ac3b8`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 17.7 MB (17724690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4008a01ce877faee517b493e555ae118f82b633fdc498c146f105905ff1ea97d`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18387bbba52242685bcb910592b43f78c0d888ec30777ee909b6086e0ab6777a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cd93ea4d63f961a60459d90d13c769d9ca1dc296aed09decaf567491d6ac0e`

```dockerfile
```

-	Layers:
	-	`sha256:703bfca2458421063e15f7aaf811583e97c8a9634045ab2e1bade6d9f29f9c76`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf67842c0f009ebe32df468e6d0d7ad25e948ef5c4d59d24ad843a2c0addf8f`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

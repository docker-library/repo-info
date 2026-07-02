## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:cbb69db63493c6788b50a6cf0ee3a344c55ecc3c25bb81dda8c7a93c42e3a12f
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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:88ff718ed4ff24260735287db9e416ff4d0319f22e1193375759c67d60da31d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196961890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df9c3cc1b218b19447e05a8b08b4b724cf559f7d2d3889f1bf5413fdd5a3958`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:38 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031336ccb6ff1f45ca3c97eb5f8e83061cde9225625854e7a11bd3b94cf88d05`  
		Last Modified: Thu, 02 Jul 2026 05:52:00 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09531d0b8810b615558c221af65dccaa6ab440f3fc3b810f8c8c37d91cd14777`  
		Last Modified: Thu, 02 Jul 2026 05:51:57 GMT  
		Size: 16.8 MB (16754528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fcadee95340b060c8e0ea8fcaa048c1a9b4a613b6febf52bfa25eb6db08cbe`  
		Last Modified: Thu, 02 Jul 2026 05:51:56 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8733718d5376fba97f73df408b3c8050be5dc155245e8de6f2c84f5c6cb668e`  
		Last Modified: Thu, 02 Jul 2026 05:51:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:96e9366a52a51f81aaffb741dc17eba2e5f29d7338ca796c2e611896609b32f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1c53b8b278ceecd8b76c11daafce9f796b69c4dec71fdeb23a3ff1abca2191`

```dockerfile
```

-	Layers:
	-	`sha256:906372a524ff6642b3d40398b85c2fe686ce0ee0837989fe030779fd18d9d07b`  
		Last Modified: Thu, 02 Jul 2026 05:51:56 GMT  
		Size: 2.4 MB (2367081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d78e739407a0eb71ac6e203a3405e3572582eee0f78136b8d89dac9a678d79c`  
		Last Modified: Thu, 02 Jul 2026 05:51:56 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d50edb5254d161e3bd9ee610c5cae949e190e1cf0e5e5f4a8f9aa5cb3ff67279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196099809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8722bb8a8f4ee726bfece3f50a4a2503b5d798f2d4b0d87b4710fb8b9d5cb5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:54 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:52:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:52:05 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:52:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:52:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235ea597956133d0b0a770cdc857bfe941340f1980d2c0de35d020ccd6c6eb27`  
		Last Modified: Thu, 02 Jul 2026 05:52:27 GMT  
		Size: 144.7 MB (144724315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f8ba71f7391894fbe1ddfea6e3e6e955a54f730e7edf71aee11c7d01b35240`  
		Last Modified: Thu, 02 Jul 2026 05:52:24 GMT  
		Size: 16.7 MB (16711278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b42dc3323e97bb92458d57dee9c38eb0267f831fbfd9be6c0cbdc2a9f824b51`  
		Last Modified: Thu, 02 Jul 2026 05:52:24 GMT  
		Size: 4.5 MB (4515234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bf2d6ffb7259a676fcc14f7fbd35b357551c7d326baadf06d72affd7f0edc7`  
		Last Modified: Thu, 02 Jul 2026 05:52:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f58032114fa1c51b140249ca08250a17099c303ca448dd8b69fd526b64df988b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae7df6f14c67ca6c7d2b626546222d41617d678d5f8f482f8f37101d49baa21`

```dockerfile
```

-	Layers:
	-	`sha256:4b67c9dfb91829684b5c4d34db25cf10dcd7e36418e20a63bb327af668c2e93c`  
		Last Modified: Thu, 02 Jul 2026 05:52:24 GMT  
		Size: 2.4 MB (2366691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dc43c17a3203ed1c226c0049bbf71749ce815ebb886d3814dd0544904364b4b`  
		Last Modified: Thu, 02 Jul 2026 05:52:24 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f66acece7dbf03a1ed2c75431ab2f7a913fb5cf196cc3fea50d07422ea88afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200670312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9870cb211f1b1b3cc0b9f84f5f994c1ba317e5c876d37ed138f4a7e803a988`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:12:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:12:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:12:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:12:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:12:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:12:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:15:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:15:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:15:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:15:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:15:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:15:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:15:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a98bb09fe2905e280f55a5a18ce330dadbdd8e631d0f11faa306ca11aa04656`  
		Last Modified: Thu, 02 Jul 2026 07:15:54 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cee493bbc80b2e30c9c488fc73a83ac4f39c5f8897b667b1a93a5f8da1d401`  
		Last Modified: Thu, 02 Jul 2026 07:15:50 GMT  
		Size: 16.8 MB (16782096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62956f63c3432cde6173d95dc836bdb7bbad613c4b482f3316764fa4b419142`  
		Last Modified: Thu, 02 Jul 2026 07:15:50 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5ab460938780a65a8c92bbd1d1dd02a5a1bf399a5fdb5e5e60f16e7c9bce0d`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1f3765d7b044abc93880342f2c063ddf723b0378c6b3b81874a6c1615d55f0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab5d75c0530a587ed4182adb42f9508f1feda426426b56e8ac90f478069050a`

```dockerfile
```

-	Layers:
	-	`sha256:0dca64bd1da090b11f4332fe2ef2487928dac110a0294a28eed2174c3b02599e`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 2.4 MB (2368061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9db1d5b1a961616b2b04ac30436e1c88c7b640c2cffc5602a327570ae088418`  
		Last Modified: Thu, 02 Jul 2026 07:15:49 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:579e65d6aa207f5d9451fddee11380c9e9fec15f770142511b48905fa7bd80aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187057282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83000271444aa8f8b698b123f9845a5416ad8365925f3626be7f460c5a091e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:18 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304e11a343a7137b7f56e1646f63fd377b0e35fd4a8aa11af65471a512171c1d`  
		Last Modified: Thu, 02 Jul 2026 05:51:43 GMT  
		Size: 135.9 MB (135910453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661c3b397e14247d70b0e6eb198d0e596c176e045026ddedee4bea7a8dd78da4`  
		Last Modified: Thu, 02 Jul 2026 05:51:41 GMT  
		Size: 16.8 MB (16779827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9836793e112045286b7f73f78553718ae2b4947c237837d5e887e03055f9f479`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60b3697ae396ca051335ca90f74e0daa41ce9c74f6cd73e6691151b89af53ba`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc8526700f5aa646cb1a9c3cca6563f677c9428d105fd4513cdfcf1f4eb3a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb10ec287f148ec09f633c26737b7ba17a61ef8be36d5cea58485abc754b06eb`

```dockerfile
```

-	Layers:
	-	`sha256:08f10559c11e495bd9328ebe3fb4117381a3624452b1153ea884c93a2e32c25e`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 2.4 MB (2363508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17339b5d26292cfb60ee5e417981cc3ea881148a4b3026c236f1a190e14983a`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

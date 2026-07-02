## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:851fccb8530591cd2607468d11ed2604e15bc9dea062b795032cb22003dc27b7
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
$ docker pull clojure@sha256:21c1ab026797c005a87dc2453850f0fcb9533ebafd507ebd6d941b8eceeace82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196710955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a78d53a648f14c34a206bbd89dfa128fe36f7b0991d50da35287217d7a73074`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:47:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:58 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:06 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306268f223dd2b7f9ea3dbed44effb226882fca820c312bc6e7859861862faf6`  
		Last Modified: Thu, 02 Jul 2026 05:49:28 GMT  
		Size: 145.9 MB (145886198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528e9c6b50d71715bb8cfac864ace468cc6882a93614c68fac5e8088951b5e0b`  
		Last Modified: Thu, 02 Jul 2026 05:49:25 GMT  
		Size: 18.1 MB (18071903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6193a6eb547594b77d1a0c0e44666698d4cd42e59f869884755464b0857c3`  
		Last Modified: Thu, 02 Jul 2026 05:49:24 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4686317388d5210dae206e5f4776a16c1c24ba2f1d49bff53b439464a64ad57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9861b4399a6c604c6135ee7acfd5088bcbb581fdc1c032e2910af2f385f08a2b`

```dockerfile
```

-	Layers:
	-	`sha256:78a05b6870d829e1bed47d11a01e2286e6e8dfca3e97652cd70b1a610dd0bb45`  
		Last Modified: Thu, 02 Jul 2026 05:49:24 GMT  
		Size: 2.8 MB (2751853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e04e4cde7d6c390026a0605d893718445333a7f7ea7a41311a7917264f91a0e`  
		Last Modified: Thu, 02 Jul 2026 05:49:24 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:758ae6d7a4cc5baac004e1b5c06b4c07fd99452f1ce2cc6e900263cfc51dcf6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193114049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3fd2868c08bfa75c9770e1b975f7c5eb45fc7cbcd92ffd9a5c8505c2b30922`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:48:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:24 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:33 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1d54e24c4b3d843a3659e4027dae8c80c988b188a6cbe8f398b86920a13a01`  
		Last Modified: Thu, 02 Jul 2026 05:49:55 GMT  
		Size: 142.6 MB (142582195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe620d78dd874ec851b04a887885d1af71671a9ba17c2a9b7a254890be06021c`  
		Last Modified: Thu, 02 Jul 2026 05:49:52 GMT  
		Size: 17.9 MB (17894225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae69643a8346b5e55e98d64877fc0291c33778580635f581a09a55c6317a9bf`  
		Last Modified: Thu, 02 Jul 2026 05:49:52 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab00bd6722f5c82757080f2cd557e76de9f171d8d2528e62971e534f5a2562f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f04e47f594ce76685678fae25934086ef3b25a8a1c7f82ebfecffb6e9d3513`

```dockerfile
```

-	Layers:
	-	`sha256:42e447526cfa652df537591dae348ecabd13579018447c2b51659678bccc228b`  
		Last Modified: Thu, 02 Jul 2026 05:49:52 GMT  
		Size: 2.8 MB (2752086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1282282d172c18ed6c7b5ab07af79e9b03e017fe1ef442191efb5c30cf786f`  
		Last Modified: Thu, 02 Jul 2026 05:49:51 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d2a309fdbcd2e5ee096fe417301984a1e4fdd0cae52077887b532d0a08a1ecd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187970968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da7585eb66e9b07dd3832bdbf4c17a9fa38e93e993703bf7a192703ee5fc8a0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:51:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:51:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:51:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:51:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:51:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:53:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:53:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:53:42 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:53:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:53:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d0b5bd3194eb32290a07b0436278d5023813e2e3fc46f70375c080cff018c5`  
		Last Modified: Thu, 02 Jul 2026 06:54:24 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89779175264645a1c7f18c84fddd9add7806f43f91d6162d077df64bd771bb8`  
		Last Modified: Thu, 02 Jul 2026 06:54:21 GMT  
		Size: 18.3 MB (18263596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fa11ceb30eb4c5e78a94c42b9f54aafca91332a246a62767b6ec884cc126a6`  
		Last Modified: Thu, 02 Jul 2026 06:54:20 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:289b5468d9d0bc507ea8c070970c0f1ecf29da12c02a4e454f8bc326c1a82a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adc409f7bb685b9313fb63eb04b005f2eada3f66b7ccf6b9f9993f9cd8478d1`

```dockerfile
```

-	Layers:
	-	`sha256:f4c7cc0e6004e1d00dbd1d16c48fbc3878a4bf6a71745e4c8fe655ecebad2606`  
		Last Modified: Thu, 02 Jul 2026 06:54:20 GMT  
		Size: 2.8 MB (2753071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af055584cc9c1074deeecaf3ca976b0477f09b78858d6957a8ae859fb973008`  
		Last Modified: Thu, 02 Jul 2026 06:54:19 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:81fee1c0d19408f983f52da5759edc260654679b832c4a49e5a7a9e7c6cf8e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175784872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb34a849fe93114612af18b42034588e648f93d9212c4bc0a76946c6e02c9fa`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:44:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:44:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:44:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:44:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:44:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:44:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:45:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:45:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:45:05 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:45:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:45:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0d58388b3901fa554305a051b63127b58668aff312ca0f23806e081ff91633`  
		Last Modified: Thu, 02 Jul 2026 05:45:30 GMT  
		Size: 126.7 MB (126651528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db1d3a5aadee7a4ef842ea7ce456f8c16cdcf8eb4657b05e25c32a6fb316eed`  
		Last Modified: Thu, 02 Jul 2026 05:45:28 GMT  
		Size: 17.7 MB (17724528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34a99af2a5efa30d330434e981af2bdf509fc67cb7525169e6bb733a13847a8`  
		Last Modified: Thu, 02 Jul 2026 05:45:28 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f67f3f31a05078a4845903f80ba30e34fb4dd0074a7c9cf0c4dee682913f1352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c64901fe9ddc6414a8d41c2ddc08642ae3b6c6fde9fc88344e47594653a1cef`

```dockerfile
```

-	Layers:
	-	`sha256:1ba029ab8621b65ee7d3ef47cecb6e99f87f752e935d99d58bc82599525af14b`  
		Last Modified: Thu, 02 Jul 2026 05:45:28 GMT  
		Size: 2.7 MB (2743671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29ab8db1130913cfd19176b642fb7b1649f579e4cbb0680e4f66cd61e97b3274`  
		Last Modified: Thu, 02 Jul 2026 05:45:27 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

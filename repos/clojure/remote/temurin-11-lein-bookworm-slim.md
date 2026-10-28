## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:35ed7723f7b96a379e116adbec1061b321955243f1f7f7c0274b6bf33158b569
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f8d4a9c5372bf2c9863b2940087a93e09c81814846a9a0f722017e4461f08c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196699660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16ddccabc9e24233e08a8b120fafc8fa308b9663a899d75a96e48b74cc27d24`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:10:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:10:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:10:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:10:19 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:10:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:10:19 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:11:35 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:11:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:11:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dcbee8c79fa28e987022f2f00907fa5d217099079e7d466802e51db3d6b19c`  
		Last Modified: Wed, 28 Oct 2026 02:11:57 GMT  
		Size: 145.9 MB (145864299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db10afded7ce2f2ecd39c0a1ba740efc60d859e56b0b6a90a85d48bdfe645da`  
		Last Modified: Wed, 28 Oct 2026 02:11:54 GMT  
		Size: 18.1 MB (18072703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee33494a56caead4d2a6691a0bb3d570e96998f194786b6a39a51ccadd08c38`  
		Last Modified: Wed, 28 Oct 2026 02:11:53 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:75d8059052034dbccef0a0af40d7fbb2ea34a21e82ccd9352b91987c12e0acc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6005dc2f2c0c23feec05a1f68c61da5a8b3a4fcb22bbfefb314cc3496101705`

```dockerfile
```

-	Layers:
	-	`sha256:13e2707a226e183fa3964c9b0a73a1c797918d682eb2a8de72fff1a26988017d`  
		Last Modified: Wed, 28 Oct 2026 02:11:53 GMT  
		Size: 2.8 MB (2755839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b111f958724f769562a1e3ce7fc038cd371cff81948e5a6dfdb3c08e421525`  
		Last Modified: Wed, 28 Oct 2026 02:11:53 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f2b9b94fcaa8dcc73f62fb3b85dce29fa00725314a090f5fd2a25d3d7f38815d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193146313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8369a161c31faea9e8713b73b120fc7fa231606e4c760b36492169afed71348d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:55 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:18:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:18:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:18:13 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:18:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:18:15 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dfa196fface4d166e4afa2c63bdfb05e31c0a7d226381af00b902e4dabab93`  
		Last Modified: Wed, 28 Oct 2026 02:18:35 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e75a4628ab203e9d96f529cf5d5d472787aba40268d4b910ed5c02b44a084e`  
		Last Modified: Wed, 28 Oct 2026 02:18:32 GMT  
		Size: 17.9 MB (17916522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ef09876d0055083e9ebc291ff326b8bbdb1b5dd771948d8906a198664b3454`  
		Last Modified: Wed, 28 Oct 2026 02:18:31 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6581e9573e81362401cd68788ebf5f8f93b02f10596f62fc126de30f2fb72ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6cc5cbb9366f0f76b4a2812bcac4eaa85afa6759a6243f258935ac8ebd0fa2`

```dockerfile
```

-	Layers:
	-	`sha256:14211b7eef15eca91a053d198695e47e9bbcb6c0cbadd00bf2e937ece4b0c947`  
		Last Modified: Wed, 28 Oct 2026 02:18:31 GMT  
		Size: 2.8 MB (2756072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:996a331e421f0bfe734619bc7abf1f63bb0e2df750e6814ab2161d989b5efbdc`  
		Last Modified: Wed, 28 Oct 2026 02:18:31 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d0d3be2f759822c3d6cc9d669be21c5664da796d2881f5c07be59713134edc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187982524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c26cdd9f0c64941f6dc6172b7da4e0c60b17edd56e904b5daebd43e2604860d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:35:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:35:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:35:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:35:32 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:38:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:38:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:38:48 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:38:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:38:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3126ca02f7790503a62de8d81f97b4eafcb894a09cfbf4fb5315b98d3d023d90`  
		Last Modified: Wed, 28 Oct 2026 09:39:37 GMT  
		Size: 133.1 MB (133095020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ec610d1deebae96ea373f32a741a7de55a46a020bd42e562a5b1678c48ff81`  
		Last Modified: Wed, 28 Oct 2026 09:39:34 GMT  
		Size: 18.3 MB (18279411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1258481b6efc8db0fa8917d22295c76314499d761e463cbc7d91b6fefedf59`  
		Last Modified: Wed, 28 Oct 2026 09:39:33 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30e635f8e5a2a0c6ee555ff85e245e12389be5ff0eae675ecc32da55e18a2430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9339ee24425aadfdd4c640e93b60a760fa445bc2a8de014d1aac23f326a230`

```dockerfile
```

-	Layers:
	-	`sha256:f7a3405418c2638f2487d239f6197ffc99dd0e45058d2deaae6c64bfce03334d`  
		Last Modified: Wed, 28 Oct 2026 09:39:33 GMT  
		Size: 2.8 MB (2757057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbc2620719ee213eccc2e1d458aad8108b249cdd74760c1001dd89fbb197c6c`  
		Last Modified: Wed, 28 Oct 2026 09:39:33 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

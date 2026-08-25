## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:558ae16cd0e3a11ca99cec2bfd750c975ac00d7724bcdf25e122434ad78743d2
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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fdc7b17eaf2897b39ffb4749b0c0ed75612ecdbdcff6630343dd7b4fd05354ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209160263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604750be5e1ae0c806c1039b6b3fbde76a808e0a3875926359aeac0fcd8b87cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:18:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:18:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:18:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:18:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:18:03 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:19:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:19:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:19:11 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:19:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:19:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cd897b3a131271960a46aedc7230652e47951a460b1e778659873db9112e229`  
		Last Modified: Fri, 21 Aug 2026 19:19:31 GMT  
		Size: 158.1 MB (158120290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1835d046955ff4f1a32a23f4a24376921ab3f60bc4805a4c2a1d902a871b5e2`  
		Last Modified: Fri, 21 Aug 2026 19:19:28 GMT  
		Size: 16.7 MB (16743567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fdc8e8fcd9a1fc78da898f64e1d3599a1bbaa1bb0c2aa882ae878a23449f26`  
		Last Modified: Fri, 21 Aug 2026 19:19:28 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d7a9ae3f38b871acc221743f616b4194e47f9988dabf07f2473070b372335`  
		Last Modified: Fri, 21 Aug 2026 19:19:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:65ea2559f963ef36bf94668854d45e4a97ff27930a60cead68c49dc2990fb382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f54b680d0b2b2833ed1afc34175cea6f4beb59ce9b2773b726f5da3113217e`

```dockerfile
```

-	Layers:
	-	`sha256:a16866a07db0a1e0e9d6f27182df2b65d318726d2b2e97c3b109190ecf4d2352`  
		Last Modified: Fri, 21 Aug 2026 19:19:27 GMT  
		Size: 2.4 MB (2368967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8b1cdb10096b23d5fd505f71b5cb3151a51932a6e8310eca7392f9ee7a9883`  
		Last Modified: Fri, 21 Aug 2026 19:19:27 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e214f72d6f63dbe19bee5f16f041ad0755d974f54a92cbd25c51acaae983b7d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207788519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8bec2b06f017c989eae035916b473e6c83a465d576a29cd6e60171cb2cb118`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 00:55:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:55:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 00:55:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:38 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:52 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9fd9dda7de7607d811747e49300f8f6f15ac1f2837a93914f611624a8e3584`  
		Last Modified: Tue, 25 Aug 2026 00:55:55 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c14eb75651be672419ea07728b344a6d6f85639172dfe1c199fc421d4d4e39c`  
		Last Modified: Tue, 25 Aug 2026 01:35:03 GMT  
		Size: 16.7 MB (16711381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651a06ebd4412af4222834bf3595d6966c507934dcd2c2fec4ae2e5bb5256bb0`  
		Last Modified: Tue, 25 Aug 2026 01:35:02 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16866523475b459b19a2b3ee14c18d5d396355916fbc1fb34a571335c1eb3107`  
		Last Modified: Tue, 25 Aug 2026 01:35:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:651efecfef03b8158b6a3e802d9e8f2fd99c57bd4a8fd50320237bc96a2c2558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f709629023fbc3e01ebc2a61130f555e604ca2168ec54d1936b1455d0bb44f`

```dockerfile
```

-	Layers:
	-	`sha256:1fb47da908be1e569b9edbff088cd579f160a98e7bd08bbe9e49336c3470ea3b`  
		Last Modified: Tue, 25 Aug 2026 01:35:02 GMT  
		Size: 2.4 MB (2368775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:582d3ff875cc747cf8c2cc15dd4ca89e07c0b8c4fd99a2101fff4d57aa76f040`  
		Last Modified: Tue, 25 Aug 2026 01:35:02 GMT  
		Size: 16.9 KB (16919 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9195c21e94328e5035c7d2ab30cbb96ee9953203099e79a0aacb82582c6f410b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213173940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b735605b293b8355e713cfa35ef52c1a7c1179bf2da9056306dd379380ef0de4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 22:51:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:51:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:51:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:51:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 22:51:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 22:51:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:54:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 22:54:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 22:54:02 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 22:54:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 22:54:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:54:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:54:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543f8faec154a40b02dc777d587f6ad4f70ee990fb1b9ecb9858f48dec66ca85`  
		Last Modified: Fri, 21 Aug 2026 22:54:44 GMT  
		Size: 158.3 MB (158274931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6de3cc1f23bff46c71739f8d03d87359d6e0fe6c1266f0bd20cd1b57f06e2`  
		Last Modified: Fri, 21 Aug 2026 22:54:41 GMT  
		Size: 16.8 MB (16782004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed089509db5c504594388adb6d8b03b5980d3bba33eed4f56cdccc8ca86b568`  
		Last Modified: Fri, 21 Aug 2026 22:54:40 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3950f6a87671f33e4dffd511c8969bb89a7e5f0d789887abfe8d75fb5e57e59f`  
		Last Modified: Fri, 21 Aug 2026 22:54:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6631ffb9f6d49e1755f4d49dbca81ab9b5371d37d1fe5303bb067e2231da6417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc6d0ea1f7e64500fbe0e369e36b8503adffa3ee7893f2ed2d6b4ffb2eff915`

```dockerfile
```

-	Layers:
	-	`sha256:b8c941ada80d8594e5f2a041f020b0874e490b000e8f7d86e4eb44037fd3b66e`  
		Last Modified: Fri, 21 Aug 2026 22:54:40 GMT  
		Size: 2.4 MB (2369947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8eb6311f0df7e1e49a026a5036aa2838a13980f0861d77d50153dddcbd994e`  
		Last Modified: Fri, 21 Aug 2026 22:54:40 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c79b635f644f78e5a9120709e6a56a6b9f9b2d0dac135454383dc9d24f6e7ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198510998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357ff2c0d331ab117e807c75ccfef75b9ea909fc5cfef2a1c5a3382e208235bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:08:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:08:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:08:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:08:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:08:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:08:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:09:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:09:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:09:31 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:09:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:09:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:09:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:09:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b912fe75edacf74bf32e6abad9b85b2eafe7ac06f68b0c19114361c125df52`  
		Last Modified: Tue, 25 Aug 2026 02:09:57 GMT  
		Size: 147.3 MB (147347818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10abf036e5fb8feb19ea1942b82624930f83b9b8559a63b4341a388e24068694`  
		Last Modified: Tue, 25 Aug 2026 02:09:57 GMT  
		Size: 16.8 MB (16779849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a1dbbed933e8b13179f0f296fc8121c024a5ba1523a7b443255f2b4018725`  
		Last Modified: Tue, 25 Aug 2026 02:09:56 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce07263d2cae7c7a55aa5edee713ece4099e15b03a04edb635b3ec935575925d`  
		Last Modified: Tue, 25 Aug 2026 02:09:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fdf88ad7f02aa5bf830cefacebf4724c3fea6201fd6f0415836d6ea35f80e1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf445a95c72e1c1f4a01aad7ee4475dd06cb063b73f1aae4543e8bec0bfea6e`

```dockerfile
```

-	Layers:
	-	`sha256:b366af16c84e9a6989194184f415cd35f5dca8a70d096190bcb946d20499d763`  
		Last Modified: Tue, 25 Aug 2026 02:09:56 GMT  
		Size: 2.4 MB (2365592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5ee3b3b7591d8c9cfde84b159c5eccb071c0f0ac29816113539b82a4c208e28`  
		Last Modified: Tue, 25 Aug 2026 02:09:56 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

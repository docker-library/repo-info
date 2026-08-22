## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:0231474ce646fe987b0a677f8b56be63627d3f2ad5f22b435b67312d1afa53f7
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
$ docker pull clojure@sha256:4d43ecf392c5fd2ae5e9696914ce4ffec93c0b18e8acb574935c89bfbb472e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207772896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5dc2fd3dc230a23adcead8be16816ad16fced0150405d3c275e83324b230f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:06:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:06:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:06:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:06:01 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:06:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:06:01 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:07:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:07:20 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:07:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:07:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec509ad3dc8f9d3361e530e9604f069986f3d47400e531e836ddb4db7b380749`  
		Last Modified: Fri, 21 Aug 2026 19:07:43 GMT  
		Size: 156.4 MB (156401941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74f1b350d009ebbf6f7db2b481fb6d840b993b99b8ab27d76a7a3355fcbbcd4`  
		Last Modified: Fri, 21 Aug 2026 19:07:40 GMT  
		Size: 16.7 MB (16711725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc0cc81e90bcd0b053dda6c7db52a76ca22d102edf6098bf9ec3ec7b55c198d`  
		Last Modified: Fri, 21 Aug 2026 19:07:40 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197456ddc48b9353881a51075c3a92c5d655c099997e68bbe657d47141401f4d`  
		Last Modified: Fri, 21 Aug 2026 19:07:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:64909ea317039cb6fe0990ac25dc591dcd6562c2ac1ea1e7de7ed95b36f268ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b3feb5d884a9fb1c3abff47ac9c9460aaa538c652a00ca333472215ee39a8c`

```dockerfile
```

-	Layers:
	-	`sha256:ceac439a234f2daaa461140d5b0f413843972c4b0c1f624c9f1477e93dafaffd`  
		Last Modified: Fri, 21 Aug 2026 19:07:39 GMT  
		Size: 2.4 MB (2368577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb29421dc9773a09ffa8d736e533f7db984d57e6b442087980e16430dba43d93`  
		Last Modified: Fri, 21 Aug 2026 19:07:39 GMT  
		Size: 17.9 KB (17874 bytes)  
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
$ docker pull clojure@sha256:d1057dd369f2468a9481515df3492ed743f2f8a7909e4e3bf0c51b8aff4fe5c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198489927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2788e086f261a873e2f3c38bcd599583a667eaa08d869d9a57433cb2de8c2f46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:56 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:10:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:10:12 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:10:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:10:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:10:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:10:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c175a56efcdd4d77fc01c70aab6f9186fb53bed8a574659e3344b8c940b5a3`  
		Last Modified: Fri, 21 Aug 2026 19:10:39 GMT  
		Size: 147.3 MB (147347751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a75774911180a67d67a74f7e0d540bb50075cb41e84f2469ea63ca903c07c34`  
		Last Modified: Fri, 21 Aug 2026 19:10:37 GMT  
		Size: 16.8 MB (16779962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d77efefa98e7843bc3eec25f2e5220c2668aa40fe91c5b31fa9c7bbd468ec8`  
		Last Modified: Fri, 21 Aug 2026 19:10:37 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6416ef3058a9c0a5b75d131657d0c6dd38bdbc2197746baf36de77534be529a`  
		Last Modified: Fri, 21 Aug 2026 19:10:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f44a998de2b6387d9176e9d09a854b7ea534a4cd682b6153221455fd7a8dd00f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91be2981d6b9dd1d01f8fca7e4851b71da9c697e124fc632d529c8efe8f33dd1`

```dockerfile
```

-	Layers:
	-	`sha256:b3389eefe05fd542d68623feaec359bf4b7be1caf1e6c41434780b634e3baa5c`  
		Last Modified: Fri, 21 Aug 2026 19:10:37 GMT  
		Size: 2.4 MB (2365394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d942906c3276904be0aa2e77893bb9ef8e576abd9dc1f8d73a41c3b84cb893c5`  
		Last Modified: Fri, 21 Aug 2026 19:10:37 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

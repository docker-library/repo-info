## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:34ac835963a5e227e5ff61ad193677f2a3be7b8b2deeb3e83e039bd40c8522c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:131675616cac0d16d1f0c6a65a9cb72f6519bd4596ae62d4d432bd54068851d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219034465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b67ad0bc2a10ed37508e8df0b63c067ac9d91da90e32c48825d7af16c1c13d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:15:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:15:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:15:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:15:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:15:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:15:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:17:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:17:04 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:17:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:17:06 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1c6e45aa1bf032c4b2f0aa9005ffc033e73ae6b7408ffd5bdf30f0dbfc78fb`  
		Last Modified: Wed, 21 Oct 2026 01:17:27 GMT  
		Size: 145.9 MB (145864516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3bb011f279fc9ff92a701effecc267e989608626cb3fd022fc719ea249f49`  
		Last Modified: Wed, 21 Oct 2026 01:17:24 GMT  
		Size: 20.1 MB (20132657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fc54c27c5deb61ff6fb5fa6639464272bc880da9416991803d888130501d27`  
		Last Modified: Wed, 21 Oct 2026 01:17:24 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:199c22061ec459cd2c961db52cbb95a2e21c663282ea698279c3d4a7553f795f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d11bf390ec9d94bf86f7d52798a71ae419086d6a3e5ef4ed486cac1272f9c95`

```dockerfile
```

-	Layers:
	-	`sha256:5fc700092d5b1f80cebd32402ce2ec063fac5831bfa14b4535ec73cb855ba9de`  
		Last Modified: Wed, 21 Oct 2026 01:17:24 GMT  
		Size: 4.3 MB (4307520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a345bdc2d0be0623db8c0f0995c40c54c75c7d0aba48fce6935158c4e71e78e`  
		Last Modified: Wed, 21 Oct 2026 01:17:23 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4a2e37fd2bf564f565f3b65019e406e6bbbf14132129eba9fee09564b84f5b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215461547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cf8969822d1bdebc05d4bf10ba1780e13902d05a2c171cb981882d591cb9d8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:22:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:30 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:38 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8516a8be796a7701dbbc2b5f819f5c8117ca47f51c829687c7ef4f39760e76b1`  
		Last Modified: Wed, 21 Oct 2026 01:24:01 GMT  
		Size: 142.6 MB (142576561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a04933ddf77a54d6cfe21505a81f5ea6f1dddbc73977dcdfe07a0545040c53`  
		Last Modified: Wed, 21 Oct 2026 01:23:59 GMT  
		Size: 20.0 MB (19966619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a149dfe43bfdc82198ccd1111d535aeecd14bc4ea2ee10952a29e0da26cd9d2`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4d12af5b8e1d9ccaefcd2928508a28f96cb82de2ea7d0d7093f4ffd1e9b475f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c08ffbaad3b9d6784709c10910f4903cc4778ea7324e8f2ed73a98095020e8`

```dockerfile
```

-	Layers:
	-	`sha256:367a4a34f186edb6c2c51951f3778d3e3f516469b20258cb34c9bd8637e34760`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 4.3 MB (4307753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cec534e9e2db4b038c95f6d0cfad6505c3ea32ef62e9c8154fd21fcb8f2d3744`  
		Last Modified: Wed, 21 Oct 2026 01:23:57 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6bdfb2ab457a58de86dd630d2f48a00390ce39d1068967e73742c1e9f04ee276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210331920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780c5fd0bb60f82b7d4d95286bd2bbb7abedf1504b0c99d81084b858443d4809`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:58:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:58:09 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:02:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:02:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:02:51 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:02:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:02:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4acc757fca417d1cfc1b6862285d3cd733d26064b6cc3a074bc6ba8cdc16ae6`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940166f37fee849db58073c47d3a4de974c049ff68b77d6359bb6e5f1512c736`  
		Last Modified: Wed, 21 Oct 2026 10:03:56 GMT  
		Size: 20.4 MB (20356792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f289b337686b9cd857e5b1df4881664be866a3e201b3ed47de0df98e7f740c`  
		Last Modified: Wed, 21 Oct 2026 10:03:55 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2eb7d12c7f3212682e13977c69550f1fe98ce399cd18228887de68fc09e532bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e442ba87b56d3f5d63d95449780d856d1e2a06ad3d12b55e58a56420c4ba2074`

```dockerfile
```

-	Layers:
	-	`sha256:d1c0c87147627b8a6f589d9a0b51ac88c542ec09b6c62208a9d87a74c41f4e51`  
		Last Modified: Wed, 21 Oct 2026 10:03:55 GMT  
		Size: 4.3 MB (4308766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53a096833479421ce0be007c7bda17ae7223b555a45a3c25211716e77d3311e4`  
		Last Modified: Wed, 21 Oct 2026 10:03:54 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

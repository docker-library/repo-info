## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:eb6b7052ca013a0cdef22d3311b37545d2970a51df0120a8b6e7cbc709f7959e
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
$ docker pull clojure@sha256:d85dc63a3e7ef03a78aa8eeb88e9f1702436d2e06d843426eae2edec7e277b1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212804113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887c54f1a551bc79f3910a727af854edf2dd2769d4ac852179fba97af78d48f0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:14:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:14:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:14:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:14:27 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:14:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:14:29 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:18:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:18:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:18:28 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:18:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:18:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6366ab15846561f7c1d7bb19f95bcb3b146f60270eed9d77a9cd1ff1a47fee8`  
		Last Modified: Sat, 17 Oct 2026 05:19:17 GMT  
		Size: 133.1 MB (133095131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0d3d8df32dae6fd6bde41401b3f47137a2b29f4955db51f0cc56bcaf582bf5`  
		Last Modified: Sat, 17 Oct 2026 05:19:14 GMT  
		Size: 22.8 MB (22830988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5c839f03336a84dae7d8372c781251462d9a9eb950eb8c90729e87411381dd`  
		Last Modified: Sat, 17 Oct 2026 05:19:13 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dcc41ca71f3eddc1bb6192a4b1783fbc675b51dacc2e92f42a5a9380603544a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe67b35b528a55d9ec05b6096558d064b590d4d5113e86e37621b2071807723`

```dockerfile
```

-	Layers:
	-	`sha256:8b671935ad2488dbc5c10a4a1b493b97e75254966547bfc1d6e578277377868e`  
		Last Modified: Sat, 17 Oct 2026 05:19:13 GMT  
		Size: 4.3 MB (4310061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e46674e9998edaf1e9dfa1b3ad31414caeea3d71b2a2aa86eb5848189810cb5e`  
		Last Modified: Sat, 17 Oct 2026 05:19:13 GMT  
		Size: 15.8 KB (15791 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:3ecc1527e4ef95d9ab9c86ab14dfa34aaf7a515e40ac15f4f3ba5e0913c4c416
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8af1b38991d0e0040b8281a9bd8deb59d0eabbfbc60aae73d2e8b146aa9d45d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199847322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23402cd2ac55ab2917943013b898c8b41fefd9496be3b0da247d114aafc7e246`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:46:45 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:46:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:46:45 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:47:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:47:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:47:57 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:47:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:47:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:47:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:47:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2cbcec664d7ff2d905d2ca676dd8c10f278fd89c1fbde8f4be3d36f891e6f4`  
		Last Modified: Wed, 09 Sep 2026 03:48:18 GMT  
		Size: 145.8 MB (145822697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814e21bcd5e93fd700f693c379d6693300dbecc7403c75d1bc820c0349f7a583`  
		Last Modified: Wed, 09 Sep 2026 03:48:15 GMT  
		Size: 19.7 MB (19716323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445d8247561a1311d732c64777e34e142493f054efb0ecf64253595f29ed0b4a`  
		Last Modified: Wed, 09 Sep 2026 03:48:14 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06fc0a09b190011a57069bc41aa4b9233fe1c37534fe55ed3207d53c18418fa`  
		Last Modified: Wed, 09 Sep 2026 03:48:14 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2eec21175b4b067d182d8266b1c610f44df32601dcdcf2d5d356ca5a470a6f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50b323664363a98e838d4fa91c2917baff50fe57c615192272243cad9dcab22`

```dockerfile
```

-	Layers:
	-	`sha256:81df828e085771b7e0c88fc744afda0adcbfdda798d8b080ce34003cfe485fc8`  
		Last Modified: Wed, 09 Sep 2026 03:48:14 GMT  
		Size: 2.4 MB (2367313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d44333c1b777a87c798c4e831cc25ffacdb8981eb768feb80f74c0f21d960a8f`  
		Last Modified: Wed, 09 Sep 2026 03:48:14 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c0e93866e1055ed8366061055c9e3850e98d0a38d231213582380dbe999880bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eb19b56db5bb503ece3b916983ac26dbcc550fd5e74f9cb583842f82f89d56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:20 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d959b7aba36376c0eb11deaa03d754d83286875b6bcab0fac7a8970344aa41c`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 144.6 MB (144647465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ca03365ffc2e859b15afa3cfad0069be16fd18a669b482a3a5b225b5d51cf`  
		Last Modified: Wed, 16 Sep 2026 04:36:41 GMT  
		Size: 22.4 MB (22378098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6406397ab4c3c7666ff86477c3a0845876a0904ecb22033e37c6e7bdecb40`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a88697f949f4145ee5f4d86b7bbc47f018e9312f9e49a911875217150013a58`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fd58ee7813891630d6160555f647054745dca54da7152439631299d5382a876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15b43a269048a7615a778cc305ddd48351c4bf5df1dad3bfb7fc9e384b7149d`

```dockerfile
```

-	Layers:
	-	`sha256:2cb0ce8071f8d44660cb19d33ca952f165a8e2a3a2c4d8318f8c1dded0f3e86d`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 2.4 MB (2366959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bab18fdbbb454d98f3b8ebecfd75430dc4477ce1dca1460fccb0a983a07196c`  
		Last Modified: Wed, 16 Sep 2026 04:36:39 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f7f104da344a28cb27756f323f7742d1b547dbeb277e87af57deea602f0ff3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203796535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d99f5747c92ad3b368541129d3b3f3745a498a265e3c838459f94a34018932`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:51:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:51:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:51:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:51:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:51:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:51:32 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:56:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:56:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:56:13 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:56:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:56:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:56:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:56:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8424a82d45599e85d2d1bb14f344d4c49d28c26e6d913e5b99373a8fb271aae`  
		Last Modified: Wed, 09 Sep 2026 10:57:26 GMT  
		Size: 145.7 MB (145674329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fd8619b47f6913c24a1361bc1a47ee188c1abd6bff2b9b63a7c33f1b98394a`  
		Last Modified: Wed, 09 Sep 2026 10:57:23 GMT  
		Size: 20.0 MB (19991076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fa402f354e7f7288d5e93b564ab31a1a0d336f645e06902588048c14bc27ef`  
		Last Modified: Wed, 09 Sep 2026 10:57:22 GMT  
		Size: 4.5 MB (4515239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4961e6d529ab629ce33b6d0328331416c3e11b05c479d7f2eabc3db82819b8fe`  
		Last Modified: Wed, 09 Sep 2026 10:57:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b1102a8a80a7610d74c546afd3e6392fd8e48f7574107fb9de61ecb61819bd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e3c59279d7154f97ac071db70999b3ba20b66815e1f65b7863789d5669a814`

```dockerfile
```

-	Layers:
	-	`sha256:77231909c48039988f5230ad43ec6e1460a28357758fcc31254a6cf5fbf962cc`  
		Last Modified: Wed, 09 Sep 2026 10:57:22 GMT  
		Size: 2.4 MB (2368293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c808fd5d8b093170d34eca00b845ae39986b87a13128d5a38a2432c83f974a4`  
		Last Modified: Wed, 09 Sep 2026 10:57:21 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

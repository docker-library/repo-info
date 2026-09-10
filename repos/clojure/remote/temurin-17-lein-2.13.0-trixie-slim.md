## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:7e73d9e191e2fa0734622de4f720acc654b230cc619be0a012b813beacf6696c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:af51f4dd399e19b28cd4e483b9c7be6000a8e1fdfa8a429aad4522bf147c9d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199359879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036e18947cc10b2eeeab5c0559ab61c6a1db7cd1e427060dbc1fd741546c771`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:58:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:58:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:58:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:58:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:58:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:58:07 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:59:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:59:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:59:23 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:59:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:59:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:59:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:59:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68253e1860fe4f6b45daa649ac679dfbb1aa5702d49c497a398b889f08fba86`  
		Last Modified: Wed, 09 Sep 2026 03:59:44 GMT  
		Size: 144.6 MB (144647498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cbbe869deedddc290c33a1236403d3527d8c7710f939fe58ed5176fa4e1324`  
		Last Modified: Wed, 09 Sep 2026 03:59:42 GMT  
		Size: 20.0 MB (20037181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7d077e06066300805d4476d36c57e7b7c3c806638856adcb677dfa40ddd91a`  
		Last Modified: Wed, 09 Sep 2026 03:59:41 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd8bff2b1c3d0d0032f684af16d4920334a992be9db5fa3d092aabc6c736397`  
		Last Modified: Wed, 09 Sep 2026 03:59:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aa24772e310fb32b71178a35e4f3dfaa73f5d67f54aef74813ebe638579fd543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bed09c00ca17681849deb788f64caf18ec0fb982b61a8a9497419ad7af1b6dd`

```dockerfile
```

-	Layers:
	-	`sha256:879615894d4235c85221f330a100723863a84372deb5e04e20f0d2819c32dc84`  
		Last Modified: Wed, 09 Sep 2026 03:59:41 GMT  
		Size: 2.4 MB (2366923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c9222481533615e5a3069a39acb58e8bd5c033b7ca46ec8d4f1ac11d690e3f7`  
		Last Modified: Wed, 09 Sep 2026 03:59:41 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

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

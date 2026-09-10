## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:a468014445490d0b951ea429c9fd831a166185d8894d3e2388e6f6f60cf7ca23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5becf8a4f78ca78be3c4208b14adc177f7c8a51427f5f7239fc403c8fdd8aa0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199885308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62c4c441f864521579bc71218753cf5f29e1fb955d74df5dc1654b1936d61cd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:45:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:45:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:45:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:45:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:46:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:46:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:46:25 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:46:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:46:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211b125cc3713c44d51112063a75dc4f6f13bd4bc4d767deeed2cc8247c17674`  
		Last Modified: Wed, 09 Sep 2026 03:46:46 GMT  
		Size: 145.9 MB (145861412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dcf815bfbd57eef8ffb6b363e2f9154d09589ec6305ad3fe36d3529f7799f`  
		Last Modified: Wed, 09 Sep 2026 03:46:44 GMT  
		Size: 19.7 MB (19715998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0b0fbc3e61fcbe8b3ad661f508d7f3a84a9fa8efda43c0e40c7fbdb8f0cf70`  
		Last Modified: Wed, 09 Sep 2026 03:46:43 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5125f8e15d4fc6af9d3caba89359900102bdd9fedf4d4d141845a8e71b0afd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7fcfd20662460171a514913d5b142a809249cda29ddeff01b4e65e0cb8f4ee`

```dockerfile
```

-	Layers:
	-	`sha256:34bac919577060632ab197702d6bc0ceca49e024cb2a6a62a6ed36230ff1348d`  
		Last Modified: Wed, 09 Sep 2026 03:46:43 GMT  
		Size: 2.4 MB (2386829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cebdebaa72a8625d60231a60d5942d6df20f8b23c631ff4c66979681c2999074`  
		Last Modified: Wed, 09 Sep 2026 03:46:43 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d3716bc4f4ba8091301328efafbd3e9513c9c6736b888826f1c1e20f32dfe75f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197278580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e8e261a0e55fe88e1503182df180f0f3d926b4f7707d17cfa06d6b81cc88b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:56:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:56:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:56:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:56:02 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:56:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:56:02 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:57:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:57:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:57:20 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:57:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:57:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db88df462eb2a11f656cebc1ad66f7b3071b2b3deea66f82215b4edf7fef913`  
		Last Modified: Wed, 09 Sep 2026 03:57:42 GMT  
		Size: 142.6 MB (142566248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395846c3784791029fd7538cd7bdac61ba0aa66df60f5d3aab72ac5821add109`  
		Last Modified: Wed, 09 Sep 2026 03:57:39 GMT  
		Size: 20.0 MB (20037503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a005a0ebba676aa4f29060b67f9322009c79989d8d06b40b564ca69db6b4b5`  
		Last Modified: Wed, 09 Sep 2026 03:57:39 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4223c45fc4c69695b471c6f0bc738dc8cec1a09c30677d4c2edb60c0f201ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029645ff052133458079fccd188b19d7527f448a8c74a4644c616e1882b0d198`

```dockerfile
```

-	Layers:
	-	`sha256:39acbab28b59c4880fba9268168a0584fb0b534cfba158d336b1db5b4fcf5a1a`  
		Last Modified: Wed, 09 Sep 2026 03:57:38 GMT  
		Size: 2.4 MB (2387057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3c52bc5b5cc7e59ff5011fcab0ad0c3afe3e2ce226407f40e4e8c643fead7c8`  
		Last Modified: Wed, 09 Sep 2026 03:57:38 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4946b6d8184fe3642c0e18ea5a6847bffbcce2c7f593d5be5f621c49b4b0a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191210515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c75f94c75147dc49f7d43a4e53c28ac6d45bffdf7e1bb38c3ea60f3a70af3cf`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:39:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:39:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:39:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:39:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:39:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:39:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:42:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:42:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:42:26 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:42:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:42:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748acee124d17029ddea4ad8592dca64d1e0976c49b98dc9c4bfe44b670d57bb`  
		Last Modified: Wed, 09 Sep 2026 10:43:06 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b011a8eeec07a4eb54eaa146053ce84bebf00689823850bfd0d94b661e30f`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 20.0 MB (19990325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adcd8ef7bd5e31f9f8bd8f250572b73da1834b9e6f308a56f738cdefb24eb6f`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1c36896724253a9d284aaf4c99d8f7d4f6f70992518fb0eb98068f2abd945b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25201afb06e9110f530717134c736834d8b3666a7373156c23785435edbef7b8`

```dockerfile
```

-	Layers:
	-	`sha256:7bce35c6e0dc455a6f54773f329bf13685ca49b63b35b31887dfde2fbc5c42aa`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 2.4 MB (2387194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00601877768d32a5964334d282e82b889cc7583fff9e490301b2832f440c6403`  
		Last Modified: Wed, 09 Sep 2026 10:43:01 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

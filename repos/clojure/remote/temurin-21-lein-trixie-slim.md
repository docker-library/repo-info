## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:c067bbc4406f92abdbf79c1e7aa4d2ab4884b028341927b018a1c86ea9c01a68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4cd3b44dc8ef1cba5714a6227e6f54f860f1e85b002bff9cb160adc003f33b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209171866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48098d5668e439a3ee4f73ef1025fe365fae0891cd80f0ebfc0ba42838676f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 00:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 00:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:53:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 00:53:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:32 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1595bd1ce65856b07f9e64fbcbfdd6e222eadf7f9591d7809e5052b514a9b85`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 158.1 MB (158120294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40dab7a87323c3db902e975796b72a7ba14fe7043dfefaafc3f532f0d341bfe5`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 16.7 MB (16743276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9630dc12aadb1fab5a6cfb320a4ddef74e3c991d0d058485d63d323da802d542`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a1a075b5f04a6172ac5bf6a0423b2108797017fe5b965c0d8ba0ec54db4307`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fc962a4b4c90155d900e178c793daf293cae9d87ff10d62cda5b9828ffc7a7b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7646d43873e448e5ec9eb6e912e87c4f135a082f7e9f3362fa86e780547328`

```dockerfile
```

-	Layers:
	-	`sha256:676db29d135c1b920f103f0fc07dbc7a75a5b4f84c9579bf212deeadae132fc5`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 2.4 MB (2369165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b8c3079db4a1ec77c9072df13296e6cf6c2a8312516d68f5ce918eeb6de85c3`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 16.8 KB (16798 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2693c81c48fb55e423621db121be14a3f877e7bd6d4e267bb5b9dd134f8c2970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213188399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a23fa5ea58527eeec001d47a7dac301f6a8baf8f991f04d32086082af91f630`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:34:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:34:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:34:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:34:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:34:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:34:10 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:37:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:37:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:37:43 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:37:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:37:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:37:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:37:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3b4dd466fa7b0db486b3caa3c5972aa862f6581f1795bea79b406cc8577501`  
		Last Modified: Tue, 25 Aug 2026 08:38:29 GMT  
		Size: 158.3 MB (158274891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f22a0a53b06764040ff630e71517fa5b014f7528de955ca8b80a3ac907c30f2`  
		Last Modified: Tue, 25 Aug 2026 08:38:26 GMT  
		Size: 16.8 MB (16782429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c372905d434c77c57abbd5c098fcc930230fc37d9d815af6153b9dabe3e391d0`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa9f2fa0b483693e820de0b85f961a58c907480c7eb3287eeb1e5f1f56ea746`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7cc465b1a4a12ef6b843ba797ca40c34cf82d5f01342341058ba89c88150e5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05277334e3b48bf79d4bede5ab5e26ccf7414b7ab70472616e1f567bb81fa019`

```dockerfile
```

-	Layers:
	-	`sha256:069bdd25a634dc28199a3f821a01e374138b9a69ace3215508327d7be9317ce9`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 2.4 MB (2370145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5f2b93ab337aaa7a3d003bac01f432cd908b367f82006c59840fcd47d59745f`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

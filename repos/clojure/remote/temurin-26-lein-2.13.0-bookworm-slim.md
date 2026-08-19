## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:699dfba601731425c13969d98a388197cb2714e6635ae437420e64de82ce6ff8
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e9f9248e2f25c978197f7a6bb03c4202f4f5d49c25a207c586f52891ffb82c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145345473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb4e54f3204dbbcda6ebe383cb1396c56c263d507afa32ee7d1ea263e7e1630c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:49:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:42 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:50:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:50:45 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:50:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:50:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af1e6a9ad0a915c4ef4558172e2dad5cdcf2e425f8221e0b4f956d2dc5538b1`  
		Last Modified: Tue, 18 Aug 2026 20:51:07 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee64e4204c825c92331f1235196aa713d11a94a1dc42cffb37ada9c4151f1302`  
		Last Modified: Tue, 18 Aug 2026 20:51:05 GMT  
		Size: 18.1 MB (18072889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431010e5a940bbe2a0d9f7a82c101334e719eb638efd3f1f3f2b168e0f04c708`  
		Last Modified: Tue, 18 Aug 2026 20:51:05 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad5486d6ab9894acb8170cd7e3eb6ff9f9428ddb078617b67b80487d69103205`  
		Last Modified: Tue, 18 Aug 2026 20:51:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b6ae91eea55c4ec3a50f13bc8a1497d3868806ec3deb3e418358bb8d48922d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfb8fdeb158388a1c966b67fd9810054028ebe53fe8b0f84fa062dd77dd876`

```dockerfile
```

-	Layers:
	-	`sha256:3f127fcdaa64c631c02ebf4de1e0457597c159878fbe78197570065649bda3cf`  
		Last Modified: Tue, 18 Aug 2026 20:51:05 GMT  
		Size: 2.7 MB (2702467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:447f482566a979ac8c3e018dff046a87f8ed4634b1a301be95ca9e1f1e40214a`  
		Last Modified: Tue, 18 Aug 2026 20:51:04 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e0af6f343fa723b85d4715e85e554300278a4d72b609abb15ede7a2560c0c374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144044074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f904485eba5553d38faed857e1c1f8c27bbbbe02c3642fff2d53057b66deb77e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:49:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:43 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:50:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:50:48 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:50:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:50:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf195ef4e8255d508f4f45fcc20acf572d8ba14aef1b7baadbe7de4aa9e99ed`  
		Last Modified: Tue, 18 Aug 2026 20:51:08 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5bf08d4dc083cc0a0ef21e48c7108e1f2d16e00903ef55f6561a7c416d63f5`  
		Last Modified: Tue, 18 Aug 2026 20:51:07 GMT  
		Size: 17.9 MB (17906914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80121e244ecc2d6cfc942019cd2493928b6ee6d38c0e498e03e91c221e9730d7`  
		Last Modified: Tue, 18 Aug 2026 20:51:06 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df503d3160927cad279841439b376afc641c4fbbcbcbf745a99d3842989d09d7`  
		Last Modified: Tue, 18 Aug 2026 20:51:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f97fe17af828015389fbeef0958fb81f25eee5240c8cd78b1b279b1c9c006b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0909be777c4a0660230c0e88b8ba06c813b1c2bcad95686f9a2f3096843837`

```dockerfile
```

-	Layers:
	-	`sha256:9ca2635afe700d2e5afe925c08debaa76068141cc687c7f3ca2d450a3f6c3042`  
		Last Modified: Tue, 18 Aug 2026 20:51:06 GMT  
		Size: 2.7 MB (2702079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f914ed9c6cb65d07c21ea2a283eb112ef161b6c5b3797e0c26d1f30a10e852d4`  
		Last Modified: Tue, 18 Aug 2026 20:51:06 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cf7442a16996a9431d396adf9ac5f2a03778931e27130c25261e2d4df607168c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148757879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fae77215ad3d1b78b14275b2576878c0a0ae8bd591aa503de170d7479143a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:44:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:46:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:46:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:46:43 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:46:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:46:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:46:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:46:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a4afed690d95682effdb883fbd3eb1aed486e270763f40a0bf7cfc2990345`  
		Last Modified: Wed, 05 Aug 2026 03:47:26 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e524e6c856810c4c7c4cb73c9af6d9bdac3d4817eca40ce9406d0a2a656d141d`  
		Last Modified: Wed, 05 Aug 2026 03:47:24 GMT  
		Size: 18.3 MB (18263858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451dbe0e696d5aa58216ab1f20ace828649a181e933e0126282d52feea7a6866`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7968b84c08bbb8ee37bb3a367b8085d50918924e00cb7a46a428641a75962d68`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08762b70e1e464bb7688d9a17b3981d89a2a15af869f0515b322ce3d85ae8d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48703b689dea54ceeee13e22e2e9b9c79f84473e93c0a9cd91cc99a1a53324b1`

```dockerfile
```

-	Layers:
	-	`sha256:a2faa19e5e360a15929fa9c23b1680ccbd19a2365872bf9b21b834364708185c`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 2.7 MB (2683033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3183865a2458bddd9f8ae65606b5dd74a44d32d8ae3da3be2e9655ffa7d3a13`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d67eed4f424e351e624ed60883c9ee10a6106aaa79da2605d1e231fe594a9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fc4bbd070c27a08e6a64c38e99cba6c7207c0f51da92eff983bd856350d940`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:06:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036c1c2293a8c00db9584c9c37e69e7c0dd3e86f95cdbf4098831ad891c4ce7a`  
		Last Modified: Tue, 04 Aug 2026 03:06:41 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030d6075021958871fcbcfa0174c32300bf132be925b4d5f969968ab0fa0dc9`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.7 MB (17724818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37166f7cc8d4ae3e59bdf14a1a4853422104c4b5b775d96798e30882be6962`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f56abdd71c14774276b7ae16b4d0528ea1f70d79957c92784be9dc3cd1c3f1`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a4df52dc2e73c69124644139bca582c4042f7e7952429492cbbdd17522f8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f04a37896152f8b4bc29e3b50270daa55dce16074aa4626666ea72178c918a`

```dockerfile
```

-	Layers:
	-	`sha256:efd596409ae742a032599088009d307da101c623602e725a7afe328c8b9e157e`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f55bddbd465f1a5f5bbffb8742bf4f79f6577ba1236a5d980fa482d3b5433098`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

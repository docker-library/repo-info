## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:e467cb6b9bc8c3c6e09b51cd65fbef2b027eddd410896d8dd3890fa7f51d63a7
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

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f655f72e20efcfeae3ab31078cd37a6c77daa68691f3d1d566173ac48b05b6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145575582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754955755a42107783ad1030f510cb317f2a2bccec29a0d9aeb660463f3d4ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:55:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:23 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:34 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab47486f7cb640a21bc24da164264607ec5d5cc34b10f07dc6a4c41a64d7fa0f`  
		Last Modified: Tue, 04 Aug 2026 02:56:53 GMT  
		Size: 94.5 MB (94524335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417bc24adb03214b42b91f5b12ab3b0a6ff6d4c5ddedf1b8ee30f8d77b707d3a`  
		Last Modified: Tue, 04 Aug 2026 02:56:51 GMT  
		Size: 16.8 MB (16754738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ca5fb1e067c91f2c312811e701d3baa2e06dbada5db4a939ff47da74d0e7a4`  
		Last Modified: Tue, 04 Aug 2026 02:56:51 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38680b09019f78b986da89d9cf18aee5b053dfefc6b97589b5848621e28f309a`  
		Last Modified: Tue, 04 Aug 2026 02:56:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:908a1c368f33a3b521b213d73e5a47659b823583545c0f345ab36ad393f0aa0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9e089ff524d78ce8a141fbd1ab12521053eab9830567a22be8c023ccf80da8`

```dockerfile
```

-	Layers:
	-	`sha256:e4b82752405b0d069791bf283eecae6ac0f5d633fab117ec27e340079a28e717`  
		Last Modified: Tue, 04 Aug 2026 02:56:51 GMT  
		Size: 2.3 MB (2332008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b0cdc5b7772eacdc3a727c4101efa5e87c70aa8dfd95deffda39d46dc169a14`  
		Last Modified: Tue, 04 Aug 2026 02:56:51 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0adbc089de8cc8e7e3b4a37523e398c733c315a515a38dc0b233be7c80465c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144875409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e704d6a9e366cd86aa34c89eb9423cf090d42af9afb8dac1d36e9fde72b289b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:56:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:23 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7ac083879451bdb43a2a87c88d6d93d6401b907cb2e8dae0867457da369ce3`  
		Last Modified: Tue, 04 Aug 2026 02:56:43 GMT  
		Size: 93.5 MB (93504343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de821b128281f19009e4bd442e598e88e59a44c91c30b26874cf6802f948b453`  
		Last Modified: Tue, 04 Aug 2026 02:57:42 GMT  
		Size: 16.7 MB (16711728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4347b901891ad047ee43e43174acc8770312fbf469abdc7596680b69369dc90`  
		Last Modified: Tue, 04 Aug 2026 02:57:42 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7135475dae35f2e0ca644b3ec5dbdc6eee4641cf6ff322c1bddc0f47ac5272e5`  
		Last Modified: Tue, 04 Aug 2026 02:57:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a3733c05c2b07e5ad2dfd28eea29011484ee83efdeaca9d81c5b23a26fbfde48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60985318370f293b31fced6a6b7e001b421da4f6222e09af2ea88567df729af`

```dockerfile
```

-	Layers:
	-	`sha256:9880647d5c36505e03616143f4bf599fece716a44028daabe9a3df4872936ef1`  
		Last Modified: Tue, 04 Aug 2026 02:57:42 GMT  
		Size: 2.3 MB (2331615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b413d25fceccfed87b850773a37d18cdf57adc048b37053cf269d93d781649f9`  
		Last Modified: Tue, 04 Aug 2026 02:57:42 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:55f79dc9e3ad838cc48ac216febb9d5889b0d6dd7f39a5e3fa5631f3dce128b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c452648a83406c8c15bc891597fde8a74c647f40f4de184d131b1991bddd7728`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:55:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:55:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:55:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:55:54 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:55:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:55:55 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:58:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:58:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:58:48 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:58:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:58:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:58:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:58:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbf38bd3d6e1034cc60476a6be4177b545974325005bb3d2e3ac18376ecefde`  
		Last Modified: Tue, 04 Aug 2026 05:59:25 GMT  
		Size: 93.9 MB (93902068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e71b89532a6dea9abfb30dd09eed2eedffa113e813290c45a010e518506e93b`  
		Last Modified: Tue, 04 Aug 2026 05:59:24 GMT  
		Size: 16.8 MB (16782630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb5b99a0b93bbf8ace0bd9fca18fc229a927eb2dda0e9b5eec2f511345a31b1`  
		Last Modified: Tue, 04 Aug 2026 05:59:23 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beaedce59744a10f4babef0c6d9ed55697c68795711b53e2ea43673a9dce73e`  
		Last Modified: Tue, 04 Aug 2026 05:59:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:22db3b7b838838bee57de12beddd6a7d7d06bb412c900f68cb7e929efca446ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e665fc80b5d937ef89ad9e86cebd52ece58ec7b3662605be926f8fff8796b34`

```dockerfile
```

-	Layers:
	-	`sha256:0e024bc5d33fd69eb432fbf2619f436e9259e2c4f7a8c89e3fa8bb9e3a03c703`  
		Last Modified: Tue, 04 Aug 2026 05:59:23 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4c4c067c2a5d2e363ae5fc24666c2bda5003f6e375b24208c5ed1a80345f1c3`  
		Last Modified: Tue, 04 Aug 2026 05:59:23 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:87a112bf79843cac829ee90a95f8473a97843816eff4abbb6d8ba9b22e203313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141678850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb612862eb5ae3ee6131cd36a51173793c5e32000f3ee2114cc8b1ce95a2e35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:06:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:06:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:06:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:06:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:06:37 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:07:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:07:44 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:07:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:07:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecea0ab650a1fcb5766e108ab99b86b0e84f69f90ff559d69189cb36ac1e47b6`  
		Last Modified: Tue, 04 Aug 2026 03:08:11 GMT  
		Size: 90.5 MB (90536949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b4704344d008dbb886cb34f800b30df2dbf6afb8ac9b569e7d7a1ddb012a1`  
		Last Modified: Tue, 04 Aug 2026 03:08:10 GMT  
		Size: 16.8 MB (16779622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437808dba9bd9d964f4ba3ba7458301933979b54fbd5f2675c0aeaa0e0d83dc7`  
		Last Modified: Tue, 04 Aug 2026 03:08:10 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c804693414d892b6ee168dd7b84a3829347576178f52f6594eca4bdd5999b2`  
		Last Modified: Tue, 04 Aug 2026 03:08:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5711549bcfcdb36ba722fb8bdd20d87ec264379fa454f4cdef88a666b4d2622f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a00cf0a2b1449e3e2cecfce6a50c1ae20ef47ac6ff046c5a3cc4b2188f94a6`

```dockerfile
```

-	Layers:
	-	`sha256:13f67e501e040085f7d4cd7d3e9b917fe1df61b94f5c10c2a1e0a1853e3730b8`  
		Last Modified: Tue, 04 Aug 2026 03:08:10 GMT  
		Size: 2.3 MB (2313621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48f4368a278fe42fbad6829e837244f73793656404cd2b48ecbba35df01bc95b`  
		Last Modified: Tue, 04 Aug 2026 03:08:10 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

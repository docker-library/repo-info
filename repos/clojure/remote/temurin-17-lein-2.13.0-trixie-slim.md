## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:782b26a6ccad3366bea62f78653b59e80eb9b36393745151349391d240648b14
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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1f3c42c0b96b327554c119649b147315a195caa1f610eabc5d08ad093b110b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196946562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac804f82948bd94a4c788a2c2ecb2fde0276b1b31ee04bced75097c109e8416a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:58 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:11 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2d37ea21d99e6b4b1b08e39106e493a30a19682a31f92bc8994c147c3ecaba`  
		Last Modified: Thu, 16 Jul 2026 01:33:32 GMT  
		Size: 145.9 MB (145906354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01959d058c3b3c75f3187e18fd9abee28952c6663d87f866a1b9b6607046c199`  
		Last Modified: Thu, 16 Jul 2026 01:33:29 GMT  
		Size: 16.7 MB (16743650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ad09b4077e03722dee13ff6046ad2aa4868be880d9e7740b659ef882b4906`  
		Last Modified: Thu, 16 Jul 2026 01:33:28 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01aabfaa92ca55d8c25e39a8caf07bb66dd8a42b0b7cd7c358a5bee1180d993b`  
		Last Modified: Thu, 16 Jul 2026 01:33:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:397b1eb94d9f34893bbdf57321b8fd30ae00d4077a630ea3ddc2de501acca5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40674e22d7a0120663e665c97ad03aa642909144298382cd8b4de1142576e379`

```dockerfile
```

-	Layers:
	-	`sha256:32c4ab5a8cb8e6692d41e02a749609f26193a6d8c353a90af88f1242eaa2a1f6`  
		Last Modified: Thu, 16 Jul 2026 01:33:29 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c67d59bd4d049bf13a6b3a596c9616aa791892081ad40a0758f384d6a1e7f37`  
		Last Modified: Thu, 16 Jul 2026 01:33:28 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd7207530e0b73c41da9b8df1e61e75584f62d3c90337a09bd110003a18d0518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196105022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2557ea2cd72ba97b17712dd2c97819a96f7ae6b162fd784e9bca9c9eed040e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:25:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:25:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:25:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:25:40 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:25:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:25:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:26:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:26:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:26:56 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:26:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:26:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:26:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:26:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f188170106019b833f6a499823ed3a62d010b30d0a9107a307ba4ff1bb66ddce`  
		Last Modified: Thu, 16 Jul 2026 01:27:17 GMT  
		Size: 144.7 MB (144724316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e310c899b905cfd8299e1846ae86af5fdfbe34d136c8d4a24c51b99dae7b86`  
		Last Modified: Thu, 16 Jul 2026 01:27:14 GMT  
		Size: 16.7 MB (16721353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927a269d225ce1c05d66e9a3c5b8ea1dd301ede82ef8930854598404cde61c6f`  
		Last Modified: Thu, 16 Jul 2026 01:27:14 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6886f4edcd72f87656233d9808e932322d0b1fe9276b2b3c6b2735ad32344d`  
		Last Modified: Thu, 16 Jul 2026 01:27:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e388256631df2777eaa55ad3213cd09f16287b494084e38f322f9ff6576f0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13e37ff08233b5344ce3e7791c049d5d11e52909acd7d11ccf8de8cb1ba6530`

```dockerfile
```

-	Layers:
	-	`sha256:24948420e622fd8bc2eb27a96ce185637607e1e49da18c9d117b69da8cf9ca02`  
		Last Modified: Thu, 16 Jul 2026 01:27:14 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb2e01d26eb64a864424c2c5606f2c5b169e6ed8e91db09167dedd5687e48f2f`  
		Last Modified: Thu, 16 Jul 2026 01:27:13 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b6fad28f9c37cde563b7ce9187fcfe1c095f8d694c38af5809768404dce357fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6674e6d90b998dfd1f050d87333e38290ae53bde848bc914b3d26a7db8b3b913`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:41:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:44:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:44:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:44:18 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:44:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:44:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:44:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:44:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c238e024816cf59f7bcc40d6137f687e77402d51ca7aa991f5a3d83a53bafb`  
		Last Modified: Thu, 16 Jul 2026 02:44:59 GMT  
		Size: 145.8 MB (145766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283b1340d9666b8478a76e91b9cc4ebdca128159c3fb05c522e23325333468c5`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 16.8 MB (16782186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc3c123449ebb372894e465ee5552d0e578943921654ab3ddaac6c0d1684234`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45457275fb07419edc8f026297cf6860f5b0d1530b6d1c4cbe38fe19500abfc3`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a2ed428f4818fd7e97738d11e85132b1f370d413815e2dcbfe485c8990a1a558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ee55f5bd655de15cc6410dca2842db3a9060e66825fa82dfdb099a8710bb00`

```dockerfile
```

-	Layers:
	-	`sha256:6a94e69c8615234fe5de39437a2c22b8c4727fdab1fade306207a50dc32464f1`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf8685528aa79dbc112223c6074309bb1e62e27c8e818bce4880243a1859263`  
		Last Modified: Thu, 16 Jul 2026 02:44:55 GMT  
		Size: 17.8 KB (17795 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:165421d5465410d3564092fc929ed56f7452748111c5e9997330b34fc9a2c71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2742fe5e1ea8814cad72ded4c8779bd2da812923d0aa2ce43d4feed7a94e7697`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:47:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:47:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:47:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:47:47 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:47:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:47:47 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:49:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:49:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:49:07 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:49:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:49:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:49:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:49:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9c516885d2848b018e12372a39623b728651ee4e5e920820773e8ee4ab0b2c`  
		Last Modified: Thu, 16 Jul 2026 01:49:35 GMT  
		Size: 135.9 MB (135910475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a222f532b2e1445b9a4bd380069b78b75ebac858298196d558f4a0b4bfeff0`  
		Last Modified: Thu, 16 Jul 2026 01:49:33 GMT  
		Size: 16.8 MB (16779907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c27d5074a78774c53315d42dc94309cc3d54495fcf7a7a51d6342e665e42d2`  
		Last Modified: Thu, 16 Jul 2026 01:49:32 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76137d09fe0194a82821885cca28520ff4da08adf9ac2aafe1ee347a51e06a3d`  
		Last Modified: Thu, 16 Jul 2026 01:49:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1b171ceb80a60896d2a1c8d8406670204f20f68e8658189ca770e8492bba9114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89a2c13024166572f6a163b28ea2a0f1a6353b0c5eda0faa153d821371bdbbc`

```dockerfile
```

-	Layers:
	-	`sha256:e623d927737e5b2e92feb59e336e40f571465f14764b69db8e150ff7c34651d0`  
		Last Modified: Thu, 16 Jul 2026 01:49:32 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a548c917f70c24cba76869b4e4eae40a56f6e45083051bece7302261a196b4a`  
		Last Modified: Thu, 16 Jul 2026 01:49:32 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

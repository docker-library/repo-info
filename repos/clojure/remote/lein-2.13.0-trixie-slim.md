## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:c0be41f4902a83d3723f5685bca876e9dab4427fc28fb40b20492656b7dd3bb3
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

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9aad6857d5f6765764d8b1df08822b71506a3c95635fc103bbfd7129b56bb1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143626654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0921df697efd45000eacb681784c13f0eabdbf3c3f397407412b5adae1b85e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 01:45:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 01:45:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:45:19 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 01:45:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:22:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:22:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:22:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:22:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbaec6c0eb738de26b1d852139944f46e5fd40b9660bd3926d98567359bcdb7c`  
		Last Modified: Tue, 14 Jul 2026 01:46:08 GMT  
		Size: 92.6 MB (92574624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82ccfae2f3c1bdafea624f26c1fd86348a5b69fd563def64e05054327429e56`  
		Last Modified: Tue, 14 Jul 2026 02:23:06 GMT  
		Size: 16.8 MB (16755506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596a7579bdc0ae5cb995a5117055469a89e9edd77a46b9b15432a2f974c5286a`  
		Last Modified: Tue, 14 Jul 2026 02:23:06 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d94962c6e05994c5d7353749037d83d2294392f251d09db85eb644f6e7be1fa`  
		Last Modified: Tue, 14 Jul 2026 02:23:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79f3ccb7b5de19f4692d779d67b4c1d02a5f3f28c54e42d6acaa88fad56417ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cd18136f0f660c0ce53c5d64a96d62c0bce95ea0598c984a626af35e6e16d1`

```dockerfile
```

-	Layers:
	-	`sha256:0c5b4f5de712c4f22365841746570157232e75669c2e33d8d8180388896f09c2`  
		Last Modified: Tue, 14 Jul 2026 02:23:06 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:616f25a9722309b950f31f2fe1d37a20f94997ed963cf30956bcfb9dfdbcdb6a`  
		Last Modified: Tue, 14 Jul 2026 02:23:05 GMT  
		Size: 17.4 KB (17447 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:64144e2ad56f728eafe812b92f36fe99ec27a1c7a1e6c36ef5595f3d54546d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142923421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b46222b29e0186f79c4135276b4439f45cc68e47a67050833bf4b1011bdc2cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:29:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:29:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:29:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:30:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:30:21 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:30:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:30:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf317a95b558e16392e37056edd9db908e48de23b7664809d04799c2c104c4a6`  
		Last Modified: Tue, 14 Jul 2026 02:30:41 GMT  
		Size: 91.5 MB (91542251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a498080b1353cf5407fbb216e73865404472a5103add5cc6e72e8b70da21160`  
		Last Modified: Tue, 14 Jul 2026 02:30:40 GMT  
		Size: 16.7 MB (16721808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09847e67b62793e3dc701fe283b392b2571dde43ee5f7bda5274c71e34cc9332`  
		Last Modified: Tue, 14 Jul 2026 02:30:39 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d81d808336302023c7f015c282ed0489d78e2f139c58b6e324975aa20185d`  
		Last Modified: Tue, 14 Jul 2026 02:30:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2614d289b7cd921b2da82996941f891b7feffec2a4e0b4a01e43fe85b5d9b6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c40d40ce1c6b5829fe1447b96feb17cf6493bb5da1ccf97228882178e9109a`

```dockerfile
```

-	Layers:
	-	`sha256:4730085ce259f026fa554bf9ac554ac74f699d0b2a94409c45b69c1d45d3f629`  
		Last Modified: Tue, 14 Jul 2026 02:30:39 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3f1feaa9ad98cf107e574c8d06bc18c3952341c4fd5602bee8345615aff6542`  
		Last Modified: Tue, 14 Jul 2026 02:30:39 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5a9daa38bee6a26f77058bdcc9a31a64866c585dadae28f29387e57de15a9649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146813255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f786fd82b6c8b109ac76fb81680640837127901b8ff9cda3d7f17c80d1e498b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:45:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:45:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:45:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:45:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:45:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:45:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:48:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:48:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:48:23 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:48:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:48:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:48:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:48:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77b3f73dd586a77fe622998776c21587e9d1df8ad8c351ffb7e12f383d6dd3`  
		Last Modified: Tue, 14 Jul 2026 08:49:01 GMT  
		Size: 91.9 MB (91914023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f970399be15b8e94547828fc9b2fd0a589d997930c054749d055df86aea1c6a`  
		Last Modified: Tue, 14 Jul 2026 08:48:59 GMT  
		Size: 16.8 MB (16782117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ad419086ebaee9e822ece2543a3d322890646dc740f90c8213766c149be54e`  
		Last Modified: Tue, 14 Jul 2026 08:48:58 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e915d808ea3a220b882bd649471f03edc86344e33dc2d107df1e5f25acc3d0b`  
		Last Modified: Tue, 14 Jul 2026 08:48:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5043c846b69e9ea776eff3a1a96b57beaa1758245183a6bdd5c042fdd781bc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3251bcc8135fb9e7680e85834223dfcfd0c23b2f8d84bc7ed3558ada84430a`

```dockerfile
```

-	Layers:
	-	`sha256:da953a6326806dd77aad6b2e587e18a69a864fa6f8ad7c3e8cad2bad4c5a981e`  
		Last Modified: Tue, 14 Jul 2026 08:48:58 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0a0e26843f409eeb4f0af2b3745f92d12f9228ec2907d3f47d9c4c0c4dbeb5f`  
		Last Modified: Tue, 14 Jul 2026 08:48:58 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:368574840e4d0fb3366bf0332dcae07e7b36b1885f530a2f4bce07cc296db6c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139562749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ff3c0ef8e8d2c7576a780aac3ddcf475ca25b77adad5e28739552cd2e59801`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:34:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:34:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:34:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:34:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:34:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:34:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:35:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:35:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:35:33 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:35:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:35:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:35:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:35:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d73b0a67834e608ed05655b02da68afeed548308ccdded26bdad9f878b54e3c`  
		Last Modified: Tue, 14 Jul 2026 04:35:13 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74719880d32f998f7c665327d4e73a78b41a9d82d08085bbf4a96588238419ff`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 16.8 MB (16780124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae4e2e03286afc3ac0a4d2d0ff68243d3eb95f7ed6f8a3163cbbf632e10d9b5`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83877fb5b7412fe69e99eb6bac9e84bcd8e7b02d432c92bc243c456ea75791e2`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8440636214300c3a721cf6473c8da3e436f34ac9283ca411beb0293811b0475d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a92bf70a86b69b7e2d54a33f12430c64f39d88161ba753cb0478a5f9d412ab`

```dockerfile
```

-	Layers:
	-	`sha256:9c248efef1b1612c5fbd5074467ab116b11b9b159ffc46d3577715e6458d8aaf`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f778eb824af38d56837fcab55bbd0d3cc3c25c15430459c28b7c4227e32949`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

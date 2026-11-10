## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:e089b355751339eca60005a80ba5cda0b4644bf4a17e136f2f2ce9d714380570
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
$ docker pull clojure@sha256:b3fbbca796dcd02d5fba6267c5fcd188d17f28ba3d3e5a43a8c4d7f00f96e694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219096426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17308f43e7501318b8d1a8f36165817793fbcd382ecf4e2670a2b12dfc5a9f3f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:58 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:34:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:34:58 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:07 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b514cac6fdc708ee725e0c5cf8d30aa4309b648fb90cd74e6bd77e743a75f`  
		Last Modified: Tue, 10 Nov 2026 00:36:28 GMT  
		Size: 145.9 MB (145921690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ea0b7b21b49e57108a7afbe14624c1a910198805bcb93f366edda32d5189c`  
		Last Modified: Tue, 10 Nov 2026 00:36:26 GMT  
		Size: 20.1 MB (20133055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1aa372794fc2deca02dfe8be370c65455661d91c4fe3906645ec30a905cdbf`  
		Last Modified: Tue, 10 Nov 2026 00:36:25 GMT  
		Size: 4.5 MB (4515166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6bbcafdb3fc342d5d09e9e515ced9fd4d70362f6f7e2a439f3b71159590cdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5eb8905202b3325059b5f4f30199e0795ba5940861644d240bd7fba5fce899`

```dockerfile
```

-	Layers:
	-	`sha256:4b36ca54dae76de66bb31152cda7382147ffa9aa34e2474b9d97dee3712364c2`  
		Last Modified: Tue, 10 Nov 2026 00:36:25 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe994e6cc7042cd68148681f05abf39ba927c633a84d9b88974adf1b7b13a57`  
		Last Modified: Tue, 10 Nov 2026 00:36:24 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f945dac2a8d90c1abea81f1731d80572eb85fa070d85b8fcc081e37c42e6de3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215515897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7dcb741ff30d0f011ff240ca1ffb1edb90e4545e7b069679f0b142e949b417`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:34:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:34:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:35:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:35:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:35:22 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:35:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:35:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87374465bd70e7d93bc08cb26f2565e2e9fae8ffa42137ad76dee8efa7b63ab`  
		Last Modified: Tue, 10 Nov 2026 00:35:44 GMT  
		Size: 142.6 MB (142620994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0f3e57e4f6fd5b81409b92473c002cc08172f3cec66b3426c218f26810786a`  
		Last Modified: Tue, 10 Nov 2026 00:35:42 GMT  
		Size: 20.0 MB (19967194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30cb2147e719f92b54a692b101a30c54a463b467c6d668a6dc167018b448e90`  
		Last Modified: Tue, 10 Nov 2026 00:35:41 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c844e942c1300e3187e77ad2259b94899c9b62b8cd476f3c309417f97f572d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d29953e233a0c42391573c95f37bad9ddd320fdf89f305883160c7ce8bf8b95`

```dockerfile
```

-	Layers:
	-	`sha256:0d47fa4d046834a89b596652a918e18620e13be6d7f5b314e54f7e4366f25a38`  
		Last Modified: Tue, 10 Nov 2026 00:35:41 GMT  
		Size: 4.3 MB (4307747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:936d3c20a1868176b74949fda6bfffd6341bb343eda7e0c4da1d78c6a360c896`  
		Last Modified: Tue, 10 Nov 2026 00:35:41 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:f9073c989f2e02b53b726def9c854a9c6937bd3476af0cf2c421b4d18764273f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209512963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8726c28b5e0541869391505f3cd44b69e01e7c2aa5a5c36d747559a2e21abe`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 01:51:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 01:55:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 01:55:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 01:55:16 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 01:55:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 01:55:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fbb143fe0cc104d96d8a72e56786992c46cd3e6595a6ca56942d63b58e8a27`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 20.4 MB (20356916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e66354c7e1b38a9ca7d6023ad6d9ec22b184c32097bef64e6952f80bebedff`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2e27a38522be73e0d0d9dfb7aa1f3ca22d625697563fdbc01ae31e6d37dcf7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bbe44cb5ec24720ffa5b4261462ae6b62759884a00eed8ec255a41d67a87ca`

```dockerfile
```

-	Layers:
	-	`sha256:dab78de5317cf6d5b0545536a4415fd2dc11c4582b7c4f9ea1780b2750d80a3b`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb211e65e2d9c1484326b585e00dbc899f7cec98a05245f25d162c802dab0a5`  
		Last Modified: Tue, 10 Nov 2026 01:56:05 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

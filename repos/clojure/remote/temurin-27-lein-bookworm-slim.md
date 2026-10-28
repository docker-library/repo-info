## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:32c6f568445646b74317a3682774bb755b5a90054cd6f088314b68efcdd3aa7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e2d2b4e546d10c6e87650c7696b6b3d2bc53f263343855ca3132becb85a91fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144458255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2973756e5d09ed4e31b22d8f72ffd2bf7cfee1da42263abfcf992ab5945032`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:12 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:17:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:17:30 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:17:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:17:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd91a4ca1b6ca34fc84ae42c4febc12489e090c5e354186f8efc0d08c459e49`  
		Last Modified: Wed, 28 Oct 2026 02:17:51 GMT  
		Size: 93.6 MB (93622536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3cdab96bcd63a5440b7cc9e9e266bbde6940defd9697df2114aac03ecdcff6`  
		Last Modified: Wed, 28 Oct 2026 02:17:49 GMT  
		Size: 18.1 MB (18072654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01b9516329c145e1a881a7a9bc8aeb88582cbafb08bae088b2be30c8a6f2aa4`  
		Last Modified: Wed, 28 Oct 2026 02:17:48 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5029af465944afe3f54aa3e4d93280c5f0d9a9436097bdfee36f5a26dcb19d0d`  
		Last Modified: Wed, 28 Oct 2026 02:17:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7c34a9352d9f26b5c84189c4992aeb982b05241a565b5b23ac90292465144aa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fb73e4eecd72f6acecba9e72da949971e089068cafd0bf45589557d8c20ad3`

```dockerfile
```

-	Layers:
	-	`sha256:b4d13369af5ac55c816b1e90bde317f2a47adf47cb52c307af70ebb92c6128b5`  
		Last Modified: Wed, 28 Oct 2026 02:17:48 GMT  
		Size: 2.7 MB (2699947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77cd54977b698c326d484f4493b5b9776cf5b83c021750bcbf39e8ef972ddf73`  
		Last Modified: Wed, 28 Oct 2026 02:17:48 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2caf08d2d75c531f6e2f487b129ba8773981bd2760090de6af4c162cbe6b655c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143203216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0d0efde0df23cf1cf6c19da1cdb1c6a8e098cffcb4735b9da3741e66847c53`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:23:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:23:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:23:43 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:25:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:25:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:25:02 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:25:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:25:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:25:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:25:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e809a75f10fc310bb5f7466600095f51ce805e5d9597e5cf46e79b1d007bfb2`  
		Last Modified: Wed, 28 Oct 2026 02:25:23 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b25ae37834b35e81a3bf67dc720d747eaf6f6c8560e962b7b3930653e5d1aef`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 17.9 MB (17916459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec1b0f6a20b4754af6f121d1a7c06da05698a301a214d8db7dc0f4effb9e948`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2bcb8c4878346fb5f967fca5a25657c6c8c63df774f03e6574e5b322c5c2c4`  
		Last Modified: Wed, 28 Oct 2026 02:25:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff4abdf99557804f1249d30173b6a99500aaea84796dd5093d5b637b8d1f9c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54355b9b5e9b0123a9e7e60e849f2a5578cb70d61e2ced360987c5c25043ae`

```dockerfile
```

-	Layers:
	-	`sha256:feb7b19358817e7f5f8ea034658a8e7fe5d419da11219b33fef7159d954ce345`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 2.7 MB (2699559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c20c847069a2ddf57b2fb50bd0336367b2d5d3e26eea09382efaace58b2d22bf`  
		Last Modified: Wed, 28 Oct 2026 02:25:20 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f29d61686a338a3d2b499d28ee0aac7eeeed62cfd9419534961d06a10c451a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147144275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9350962adde2d70b02be9fe8f53eb494cff2d1d0e63b4cd1ed3797d90dadcc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:38:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:38:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:38:13 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:38:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:38:13 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:41:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:41:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:41:42 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:41:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:41:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:41:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:41:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c08194d597ec2460af8b3a444f8995725d81ca5ced0756b4971b257c0a242e`  
		Last Modified: Wed, 28 Oct 2026 10:42:32 GMT  
		Size: 92.3 MB (92255813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4eb71338cd02aba045492d8f2d4d60569a22f053338a57763bfbf59959ef80`  
		Last Modified: Wed, 28 Oct 2026 10:42:30 GMT  
		Size: 18.3 MB (18279990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6bec2e41f44a9af031acec9bf44442f93262cbe3fe122a3eef25f5f498d210`  
		Last Modified: Wed, 28 Oct 2026 10:42:29 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cda001b677db54fcd080b9df89542d08c912d8108007924a74651c53a574009`  
		Last Modified: Wed, 28 Oct 2026 10:42:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1e06bfa67979b8a9b26be0a6bc900eb635eab777988c3dd7d30c2bbc18a3f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e27fbf2b8e294b8cb795bedfdf1d455f2eb4ba290133d8f0e62acd2c5ee9a`

```dockerfile
```

-	Layers:
	-	`sha256:c91453bc49cbc37ba427ad25eb08c67964e8690a99229165ff65b7852438a329`  
		Last Modified: Wed, 28 Oct 2026 10:42:29 GMT  
		Size: 2.7 MB (2685716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:501f2a3b9c32b07ad4d9528bd668f87810cd4089b3687b2923b7b3fd2c473f3b`  
		Last Modified: Wed, 28 Oct 2026 10:42:29 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

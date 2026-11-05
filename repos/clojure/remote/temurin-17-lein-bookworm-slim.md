## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:67dadf1205177ba268ff6786ea64a9b32606e0d7e578ec3c1e57457e52ec3d3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f79dcbdff0ba8fea52fb10165d9eb61ff30f3dc60cae3bae7fc231228b49b93e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196922489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae537d9e9d94039b76ffaec739bcaf14c9b7c466cf81b1ae05876e294c1d0e79`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:08:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:08:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:09:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:09:10 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:09:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:09:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a886787436469d662b7203ab076a4704c82a7d76ae04881a617030ad531378`  
		Last Modified: Thu, 05 Nov 2026 08:09:31 GMT  
		Size: 146.1 MB (146086141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015010714eccb4b9557e73db2202ed14bb88706d79da31390a2409018e621834`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 18.1 MB (18072720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b554fb5551be0d8bbd6b00c3e217f468178927491d20d84f7170ee067136a8`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d56ddd3f08448d2f16dc68cf9613d85020f6709146aa42b585e735b8519db3c`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ea0ac19180b20a947ec1c2651a29a7db8eb1fc4c5c4be2a1c9eec6fb9ac9d457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43cf985b30597ac0ef4087080abaeb99a7c51303cd12e3ef2250227a8efe255`

```dockerfile
```

-	Layers:
	-	`sha256:5c9d8150c49d385235a536c3f48b61fbb8e6421a237b39befbd950812616d7ab`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 2.7 MB (2736315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0131c5ddd1ed4a2bca7d794a8086ec308e0681ab51cd58da729cfc62116ff9ba`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3d6935d72e45d167242b8dc1c9a2df4980f5508c28a58e0f6286dda8593eec8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195523363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33bae5b87892482ae53e9d81185b0e65732a8d33fec4d281854969298aae337`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:23 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:17:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:17:23 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:18:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:18:30 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:18:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:18:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a87c56e360ee01cf8055959cafda97e42777ef5791488168714bcaa723c1c`  
		Last Modified: Thu, 05 Nov 2026 08:18:51 GMT  
		Size: 145.0 MB (144957202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7439847a5b867c2a9a39aad0042e5450febf04a1790227a57e16cf61f03bdd8`  
		Last Modified: Thu, 05 Nov 2026 08:18:49 GMT  
		Size: 17.9 MB (17906204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e0684306843d7695971de5cb85a4d73bbb8ffb95f1af385b079ab9e03c47c9`  
		Last Modified: Thu, 05 Nov 2026 08:18:48 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440907070cca96d81530cc3d7f213ec234e123b0f0899854e159f2741a4b4110`  
		Last Modified: Thu, 05 Nov 2026 08:18:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ddc54ff43ce1111be23bdcb9317d76e538a6cc9af19211208fc5d3e93e210a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3415bc07492f1bf0dbdff302c0c40685747c3f5fe3b82a10daa5de17e46305f6`

```dockerfile
```

-	Layers:
	-	`sha256:deb6eedb9a3efd1be65407b619067a8522911d7679215dbcb32de45702b7a503`  
		Last Modified: Thu, 05 Nov 2026 08:18:48 GMT  
		Size: 2.7 MB (2735930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cfe9ffda70839b047bcff08ef913a440004af7810f16c2d6fcf6fd823df20c7`  
		Last Modified: Thu, 05 Nov 2026 08:18:48 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e1d05f214421ffd341d602ae603ac64e67ba1ffe4f1f656817f22098b1e4105a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199748471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5752750f80f0d378220f84dcdad314739d3829d6f10ea9136048b94c6ba3c259`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:33:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:33:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:33:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:33:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:33:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:33:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:36:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:36:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:36:45 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:36:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:36:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:36:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:36:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b0ef70b2874f7493a9488f8c19903ddf56212078c26b3694e1aaa3cf5a1404`  
		Last Modified: Tue, 03 Nov 2026 22:37:38 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e320ec6fd5ce45b2e10e8a7e21660db8a2cf32bedaf3ea6d31ce6e1afa83ed41`  
		Last Modified: Tue, 03 Nov 2026 22:37:35 GMT  
		Size: 18.3 MB (18279500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85442591ee62828eb820829de868f90c0e968f911c0732401bf8910ed7db3774`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e7259d005c641068ec145300b3ef704d5456937d149c43955d08dd995708ff`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8628e9b2ad8f9dbf1506e78b9c2425b3d92ed9a2455ae650ce091f38af94d44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57924fa555e9cbb1a982dece4e031e794a1c80867db753af757b288c1bf5444f`

```dockerfile
```

-	Layers:
	-	`sha256:aad4d4cc967788a6990ee481668b3681d45ae043077cf23a91e3ee68e244e52a`  
		Last Modified: Tue, 03 Nov 2026 22:37:35 GMT  
		Size: 2.7 MB (2736902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00cd43570d0505b7a7516d956397d5bc992b3efcdd841d6f73aed835f89859f9`  
		Last Modified: Tue, 03 Nov 2026 22:37:34 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:afd9e77425fcb9ecf94e871e8b0a56902ca5dc914282f6ca48204e912a1e892f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f014f4e147b02db2efb329cdc37a1387e6ed04046ceecaf8d1c812acee63ea75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209277717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0638fe2f49c89ffe12a5ea6708fda781a7c9d6632f32ec4981489c87175a26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:09:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:09:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:09:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:09:43 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:09:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:09:43 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:11:23 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:11:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:11:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5a7ae4562a06e8eaa57553e4af418142e1d72514ed4aecd3ee85b27aec6e5e`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 158.4 MB (158440960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410e43cceca2ed59d65dd52992a25bf10fdcfba576a86024d87d0276e74f48b3`  
		Last Modified: Fri, 20 Nov 2026 18:11:45 GMT  
		Size: 18.1 MB (18072623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfe29dc27c047fc64d447cb70dafc75f0b21546a2618128a35b93c53a5472cf`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08708ac0341f076320990c96ae7fd187aa61854944036165f951ebba7ba0fc6`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:50e97c5e1e60e178e9bc24c2a6add05acbb07f011ac2c06fe045d9ed4b6aa429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2d3207aa78443a10366a64f35ad0628a93a67b31421e634b4c64e21a133608`

```dockerfile
```

-	Layers:
	-	`sha256:6dd412d2c33c0bb069c351471151115bab6dfb8130fdca0d30e7764b937f41ee`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 2.7 MB (2738175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e662c37ce8200c710cc5e44ab840f2a85dd4632ff1ba90c7df5f3dafa88453f7`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38bb97f27ffa15a37e2a378495457b7cd5bda8735c70ae1b580035009306705d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207258586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c2fab534d892308b1294530bc26bd90be7b77305656d985bab677619ea8407d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:04:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:38 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:38 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:05:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:05:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:05:53 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:05:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:05:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:05:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:05:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b466aa8babd6093efbe023e62665a94f24f00086adc4ded4dd1568bf0cf298e2`  
		Last Modified: Thu, 12 Nov 2026 01:06:17 GMT  
		Size: 156.7 MB (156691631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a657fa998b874c90a7c5b55fc2be2b2276f190ea19f61ed9502e21cfa8474`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 17.9 MB (17906465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5d91600c94562d5baa9a40fb315f50ad4e0b3e479712050d90dc6c1ad76c06`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7abfad04cda66b15ef160d54e2321c40506b2cc884b779a9b6564df15388bc`  
		Last Modified: Thu, 12 Nov 2026 01:06:13 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:324230d057be373db2792d1d1e57972218ac2bee1a3109984b8833158f4097ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96355c666accab94da6b3e1def30da461cd767bd8baecaf162b2be7a4b77b663`

```dockerfile
```

-	Layers:
	-	`sha256:366e9547eeead5cf48badeec6eb4c6a77e33a7a74642eb7a0e748854e474717b`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 2.7 MB (2737782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a708c0cd2e42af054b9ac3f95ef36030f5b924d345c68a178d2361a8bdb090e1`  
		Last Modified: Thu, 12 Nov 2026 01:06:13 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c56fcc92dd04d68352cdc095e8ee3985512147e39b529d2281b4b2a5ac5601e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212485537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654f214e6ae8f5591762e9ef9d79b4efb5202d2345236dbf79f08ea389e84119`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:29:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:29:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:29:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:29:28 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:32:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:32:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:32:24 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:32:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:32:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:32:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:32:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385c042b75343cb298e587225684cd2707d8c8551e26620575cfd326a5c4015e`  
		Last Modified: Fri, 20 Nov 2026 19:33:19 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bbe5c0ca5d6b7b90b9baf631010d218fec9fbcc0a5c207b2d98696b1709d99`  
		Last Modified: Fri, 20 Nov 2026 19:33:15 GMT  
		Size: 18.3 MB (18279338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b273a4d9e4dbdeb27f37fd9bfd9ed73a96cad8cf533b2efb28a2cf77c0978c3`  
		Last Modified: Fri, 20 Nov 2026 19:33:15 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e199257ca28d4e3c3881a6bd3d8d345c8ea26ea6d7024a564ba6ed8363ba547f`  
		Last Modified: Fri, 20 Nov 2026 19:33:15 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d521e24402dc25774079c27620b908decfa580a94e7b6614150ddbd623457826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21dbc4b8fff57277143116f7fb48a2b9a63979d4d03cd14a2b0b24a198b2ae8`

```dockerfile
```

-	Layers:
	-	`sha256:adf586d4fe08b5978cba5aa39133503ea94acb2dacd87997dbc107b1a9860f46`  
		Last Modified: Fri, 20 Nov 2026 19:33:15 GMT  
		Size: 2.7 MB (2738762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ff9590344978751709bc534898d8415fbabad221aedb86d491566700eb13a40`  
		Last Modified: Fri, 20 Nov 2026 19:33:14 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:4c332108215ab2597420e568af9d95c1592f96bf7eab3358f37d1000de46d7fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0df4a082e9f59a4ea3a5c4056032d708fd7b6b9c7c6b49e76548ba4b087a4d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196874672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1e801fe16890b403acff657080f1c424ef23034792793a48081b4723c19a9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:27:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:27:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:28:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:28:45 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:28:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2267da61bf825ee380de44c55d6dc68eace813daba07aa316f2ab9b86acec212`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1f665339cd980ab3e7b5d23d098cc84bd0eba84635f587e69023425a1b40a2`  
		Last Modified: Tue, 25 Aug 2026 01:29:03 GMT  
		Size: 16.7 MB (16743722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23385971f41102435ffcb6615c6cf377166ed704d595d6e0cbc814a31dfe0fd`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8535a026d18adb23c1208672439be451566caa2f3ac1a106f52a7ce57773855`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f90bbf41724cd1037650a0f235b8ecddf62d7db45ede41f2a5f41872fc8e62ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dea0d4fa81e4f8cf70972b067d5d10ff16c6c3c4555a875fa057043f5fb84b`

```dockerfile
```

-	Layers:
	-	`sha256:05cf9c01af3c62324e768a1413d936a7fe85c8f0df3e4211e747e0d2e4ca0fa1`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 2.4 MB (2367313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1444df5364655dde67599e108d86f516d368f308f468d52acc4d988a30b303cc`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a52e9c31cabeb9efd513bae00eadd6059b46637c46ca3f6df4dc27b838152c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196034054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a007029b73e81e3a63b361ee3d56b88c229446f1742c27bd5d65b1cd85c6d68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:23 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860853692f2d43901160e691cd61e05a6ac38e2cb1b66a466f9bff1860e9134c`  
		Last Modified: Tue, 25 Aug 2026 01:33:45 GMT  
		Size: 144.6 MB (144647521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4418c7a6c3dc1a40b35de21cba81239602ec7a871124ae1f6cf33ab52bfd72a2`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 16.7 MB (16711350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baea0ce54095a444d7118e22b15041f1598597da9135ba49805f602421f3ac6d`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3727902df797ce96aedbeb1ed96263122eda66254feeb56d3c4bcc7375a52916`  
		Last Modified: Tue, 25 Aug 2026 01:33:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e1f2186f48c5f1180b6e296bef75e8ffa83500ac1ce60fc1433cee08b60c29e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c147e853b097bb373246b8883a0cf1a5cab3ccb2499d35db99e7409e0f7c8d`

```dockerfile
```

-	Layers:
	-	`sha256:d2ad77bb1db71feebcc0570dc47b2995028b14561af4e76278bae7f624f6e8c3`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 2.4 MB (2366923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4e483e1eb05aa33acf77a94dab9561c10599850974d46b94be740833d00e335`  
		Last Modified: Tue, 25 Aug 2026 01:33:41 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2511237e0b8506a518be1344da75502e2c6bb948677b0e89c650b0773f71e5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200587614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a47e0b142b93d697f47c28246405d374c214ffe159d0cc3c30b127eb7bc79f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:21:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:21:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:21:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:21:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:21:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:21:39 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:25:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:25:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:25:19 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:25:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:25:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:25:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:25:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60459259dfa83678264ffde14d34e8eae6cfe792423e4ead4adc1f290b358bc5`  
		Last Modified: Tue, 25 Aug 2026 08:26:02 GMT  
		Size: 145.7 MB (145674311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f59b7df1f08449d459dba758e2e2d8dab2fc9fc55daddf791ff51faf980029`  
		Last Modified: Tue, 25 Aug 2026 08:25:59 GMT  
		Size: 16.8 MB (16782222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce060a769ac6f359d02849590649d126a5bf25064b32246205bf0825a867269`  
		Last Modified: Tue, 25 Aug 2026 08:25:58 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b468f27f8dc4fa3d7ffcd791f555f96789b7758de5a2116bfdfcadb6d15f0f`  
		Last Modified: Tue, 25 Aug 2026 08:25:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:124676e9accd61ccc21a1c9285aaf7acf81134f51db12eb96a1b40740f07e5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66787700605cd69dc4e7f0456950eca801983ee3cb19aad9c28ba6a789a34041`

```dockerfile
```

-	Layers:
	-	`sha256:87d1e359c1965ed715318c78cbf4209f0ce6e74a6209282b75ccb44e610e4704`  
		Last Modified: Tue, 25 Aug 2026 08:25:58 GMT  
		Size: 2.4 MB (2368293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26343b2e6617cf92ab8c1895aa0fdc018adb6d8d4b64043750045d75d0835d9c`  
		Last Modified: Tue, 25 Aug 2026 08:25:58 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:3a89aa70cb1264aa0820b7f7d436973d7b690ae72fdd0b5a6462607dbf0d5f91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:01ea084ab6dfd70cfffbcf4c78850baa35920d503b6ce9c615283f2129a9bfc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218676930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcded2ac018f9f11c927af85bc42c897db221a0a86faa32620c4ce61df682745`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:07:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:07:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:07:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:07:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:07:34 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:08:45 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:08:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:08:46 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42744744d65e20431ef303027b58525285e9a2bc1f066cf555dbf5fc1439e418`  
		Last Modified: Thu, 05 Nov 2026 08:09:05 GMT  
		Size: 145.9 MB (145864299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aff67274fa040d54b6a120be8c572ab77706d4a149cd15369b4b4f547f7204b`  
		Last Modified: Thu, 05 Nov 2026 08:09:02 GMT  
		Size: 18.9 MB (18884914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9ba8fa7b742cd2a3dd13c045261fd0804527c30acaa6cb0a3f3e8adab612f5`  
		Last Modified: Thu, 05 Nov 2026 08:09:02 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:365f7761782381a54270bde651facabff5a0d0a3ccd409a9a9309bf5a4e18430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806f507df7a09003b57c7a209d9675f86f2b35e5235c341fffb8a5725df46f8f`

```dockerfile
```

-	Layers:
	-	`sha256:c699d173bedf503ca267a00dcefd54502c55bec35633a6d5142a821d41d8b307`  
		Last Modified: Thu, 05 Nov 2026 08:09:01 GMT  
		Size: 3.8 MB (3845986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:667a9f6a1e85e991d504f6951d18dbda024be36490ac9cb6e548859eca3065df`  
		Last Modified: Thu, 05 Nov 2026 08:09:01 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:520c39a3bee76b8916df69fe5cf9a45c13a02f6abf89e25604eceded99c2339c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215712977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9756f6e111bace66a95b445a0b5c45e68fa97301045681b3c8b4310ada2f3216`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:37 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:16:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:16:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:17:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:17:54 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:17:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:17:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6ac8bdc705720b992448a2feb32cd6852baab2e662240a3a2e4b9d05242976`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d9755fe9e45868b7ec331ea3767b2e302a289f10a44f9e2c3e45fcad5adb9a`  
		Last Modified: Thu, 05 Nov 2026 08:18:14 GMT  
		Size: 18.8 MB (18842564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39548e7c409ed5cde1a476a568ed4099a1d28cb60b65a100450edead52a9d369`  
		Last Modified: Thu, 05 Nov 2026 08:18:13 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:20b9142772f794d8db880cb703d7615dc270a0c626a3228164eb31e330a8a9b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c528103e4cfa88d61da01c49b3e2f6a35f8d5241ac02411033dbef984f9c365`

```dockerfile
```

-	Layers:
	-	`sha256:f98f629917e6225217ca41d58ca5f33066e9a5eacbfad936adcb31fe9880855a`  
		Last Modified: Thu, 05 Nov 2026 08:18:13 GMT  
		Size: 3.8 MB (3846844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acedda87c8d72cdb305db2405712e18893ddc216a67cbf91b9e339ddac1d10b7`  
		Last Modified: Thu, 05 Nov 2026 08:18:13 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:494378179f0f4d1181edf03b73657fac5029ebc5dd19a0a74891593917bc4030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209775543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8a154c9064e0343b6392663fae706cb967cf1a7b5e06f7ef52e62eb4bd3009`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:28:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:28:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:28:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:28:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:28:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:28:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:31:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:31:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:31:40 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:31:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:31:43 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd1f52d56a84b4fc4c0ba3816aab28a8121d7f3b2aeb7bab543d6e15138eeb2`  
		Last Modified: Thu, 05 Nov 2026 15:32:20 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b735724a1836e1e32864ad4e78c4d023d80ba47d3e0f6fb12b8a9a5a4a8dca93`  
		Last Modified: Thu, 05 Nov 2026 15:32:17 GMT  
		Size: 18.9 MB (18939689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a60eaee5ac82e85ad6a52d8131326b0b6c67a0a5215b78acc6aa27cf783703f`  
		Last Modified: Thu, 05 Nov 2026 15:32:17 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:81413a142bcfcffe2c5f4c8f3fc27f7364e17f5fb6ca42b08a84f9cbb86efff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd805426310cfc6f7fc83fb0db83c014cd2763a1426a763a41da3fabe5aaba8`

```dockerfile
```

-	Layers:
	-	`sha256:ae66af24d97f478b413f6236c6abfbbe0e685174afa3f5c3d43a8e8edef8696a`  
		Last Modified: Thu, 05 Nov 2026 15:32:16 GMT  
		Size: 3.8 MB (3846369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:640398c8de04f5016ee71adce835aa1a24265890187110081e298f74476cd3b3`  
		Last Modified: Thu, 05 Nov 2026 15:32:16 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

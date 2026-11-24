## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:164ab482ed8459902e360032651bebd260709be41ab8c748cf78ad1bd054778e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:007dfe9b3ce0bd41d214fcc3e21288100b8ce7a0c77d985d4fcdcbc021b54727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231259319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334ca71d5763e530eebdd2467570523b93eb2738b2b6c2458257ff826e900b94`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:11:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:21 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:11:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:11:21 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:12:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:12:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:12:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:12:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d485c62fefe63e63a36c428b5db065a0ac545cf135350008285b743d99bed3`  
		Last Modified: Tue, 24 Nov 2026 05:13:00 GMT  
		Size: 158.4 MB (158440922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f5341265a49fcffeb5a9af0e5728b8b65ed351fee7cb98111ae9e8ef6d3a09`  
		Last Modified: Tue, 24 Nov 2026 05:13:00 GMT  
		Size: 18.9 MB (18893007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094e0573fe7565bacb70755260be99a3487d81ca7179e08d931a54d98f0b31dc`  
		Last Modified: Tue, 24 Nov 2026 05:12:59 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e56dcb5f9e179b57c645aa3ade9171a245f6d932f383f15cbbe017a8ae868b`  
		Last Modified: Tue, 24 Nov 2026 05:12:59 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e1375f48c3e14ed8f0ef09411303ba87304a7086499799142d13391b821f9824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19cc0c7d320bbdd43bbbf7d0d2152c2ead44efdd4d93a314964ef5f7aded64d`

```dockerfile
```

-	Layers:
	-	`sha256:1ed6deb2b25def7d4f630e2dfd0c59212bed231d65061a7eb33e919995c7310d`  
		Last Modified: Tue, 24 Nov 2026 05:12:59 GMT  
		Size: 3.8 MB (3827550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dafa917ce869be6125a1eb4b7cc0b9329738358be252022847c1d56b9be5a0b5`  
		Last Modified: Tue, 24 Nov 2026 05:12:59 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d632fdaf51f49b39fda6c5209ce4f11072d5b0e58637a3a127f35fba6607f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229829265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9c761505d6452c9afa3335bb69d84af62848ad3cd142dd5cd1be076ab3253a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:48 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:06:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:06:11 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:06:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:06:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2678582f6e34f227bb6f00971c2c55d0fc9ddf2e2768653b0e221cce51f0dc0c`  
		Last Modified: Thu, 12 Nov 2026 01:06:36 GMT  
		Size: 156.7 MB (156691645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82092f046e46e505757930536eb8701a23cb03d16237c1c7e0f5ee84299fbb34`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 18.8 MB (18842857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9008532d1f067c2d743beea23ce63835d040c8c396a052c5613005a7145916c6`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d6380553dbc01efcceb5d6c9654c0b759017d8bcdb73911d0abf31467b0d20`  
		Last Modified: Thu, 12 Nov 2026 01:06:32 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ec1c00142fae5f5c032593de688251c784a6d0b4c69ec936081f547b7c49376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78a071e32c3163f8953b549beb51b4b94a2a9fa09bd06c1bca1a3cc8f42b52a`

```dockerfile
```

-	Layers:
	-	`sha256:28dc63ff50efc3f53af7f34ebc1a9bf39fa98536dfce1f98c266b8bdecafea17`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 3.8 MB (3828554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c2495e52bbb00e894ca4c59a85a8ff74df7b0f38072e94f0390a217e374bf02`  
		Last Modified: Thu, 12 Nov 2026 01:06:32 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3478128be717d66319ac257e9ad24af9b46a84e3d6c5fab79e5224a92b22541d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238084077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680e6c9503fc89a672857b3ab9195a32ac5d172f200578ef87cb2bc7c2e25ad1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:36:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:36:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:36:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:36:46 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:36:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:36:46 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:26:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:26:35 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:26:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:26:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:26:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:26:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a01bca34f32a7563bebb74d43748e34221e6723675a95cef813ab7b59b2c908`  
		Last Modified: Fri, 20 Nov 2026 19:40:47 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f3b0dfdea7d09b054b7419131c0bdd8fe9f39a89b31f720ff7a461b09b6d01`  
		Last Modified: Tue, 24 Nov 2026 00:27:03 GMT  
		Size: 22.7 MB (22745846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2f57cfe67c8388c4541a7354f9337a85aabf66e098488152546ab67e47535a`  
		Last Modified: Tue, 24 Nov 2026 00:27:03 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593f23ce5bc8ddf2c8bc402384f2c2ecacd334c38cf5e95d1f6e37389007e31d`  
		Last Modified: Tue, 24 Nov 2026 00:27:03 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8ca5cde24da50facca13b016cd1a491c89afd7132688e74cbb39e63191bad0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ad82eed684b07933a9b677fa684d1a260b55e5ddc169364e8cdf424cf4ac6`

```dockerfile
```

-	Layers:
	-	`sha256:ca98c8795ca57a37fd59c53f4fae8478abd5c958de3f7f653a3582395e4fc1ec`  
		Last Modified: Tue, 24 Nov 2026 00:27:03 GMT  
		Size: 3.8 MB (3828074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960c6dc847b94323e6b4f514668e550eee6a12ccd39608e80cb0b9ea18ae9741`  
		Last Modified: Tue, 24 Nov 2026 00:27:03 GMT  
		Size: 18.4 KB (18358 bytes)  
		MIME: application/vnd.in-toto+json

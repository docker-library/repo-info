## `clojure:temurin-27-lein-trixie`

```console
$ docker pull clojure@sha256:fe1d110abaeca8d733856ae37e0e6d559b59a75ae3002c0b04534529143d6547
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f225dd25c098f46240fc383dca560c21e0f6e3b891365fb36e3bad8080c4c160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166417278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec3d8a37adc5b88f905d6ddb2607746fe44f2db9c53730413622035f7b8c089`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:54:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:54:04 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:22 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19383c3132b94fbf5b44b420ff83446e0da17ef6016999a8732a303cffe2ec3`  
		Last Modified: Tue, 27 Oct 2026 00:55:44 GMT  
		Size: 93.6 MB (93622507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee160f7dc284fcbfe8092cc1315af524d17f094365247d71a32023b86d20977`  
		Last Modified: Tue, 27 Oct 2026 00:55:42 GMT  
		Size: 18.9 MB (18885507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc8ea062f2771105c8dbc52716140e6e82dfafc7164f1c9ef4de0739e6349f4`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01e49bbcecc840f19cd86a40aa13d5dab82609757699040e5dadfad07088033`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b4438409da72c2862b2aa7221d2be6bd38d15d64f384db032e6fa4341e72c869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80db85c3825341b68490d350f2492a2b4b5ef9f1d408812460c86f255f9e3fb2`

```dockerfile
```

-	Layers:
	-	`sha256:728674ee4abc9c75a37128b3fac54ffdcd6809d6d5839f107acbb9a13f049ab2`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3d6add2faff06c4302805a35d9d25c7734a74fd560f103866d050490d00628c`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ce5d3c7984113d1b8c8d7321656fc36259a03751d517fe8c1229098dc1d64caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165764945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1715889e4d5b6f40636d09e24f0210caee347c0d5b6b93a86bec16a2e4ee329b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:54:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:54:13 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:33 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd4ec3cbcfd5e0bb66e18f8f08fed2d92447c89b1ec94a97431dd5e5dd06788`  
		Last Modified: Tue, 27 Oct 2026 00:55:55 GMT  
		Size: 92.6 MB (92633115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37130cb4d1901e15f23eb0899817dadba87cc681004069a0f26a75f3ccad5caf`  
		Last Modified: Tue, 27 Oct 2026 00:55:53 GMT  
		Size: 18.9 MB (18854589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b3cf30908b107638b7bc1c941cc6a49647fa66a17df845d380655ff9740c8b`  
		Last Modified: Tue, 27 Oct 2026 00:55:53 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac785c7447bc88eaed8b11d4b1c62714dd2453543f560749bb5f7afea4a2e567`  
		Last Modified: Tue, 27 Oct 2026 00:55:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e80cb647de9db5fac3ec3ff7270488c9f7b47b0df21d33ed2b4cdb690f5d43c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86718777d0b0290991419572ff302f7abb6ee0217184504b3bb6ce5d2fafc2df`

```dockerfile
```

-	Layers:
	-	`sha256:b4e6a30c327f19073f159f1b4e35c1962125de54fbb78f2114f16cd36238367d`  
		Last Modified: Tue, 27 Oct 2026 00:55:53 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ec17325c49d043c2826dd2b7827bc701bdd345c9c0dc8a8586fe13b931a1598`  
		Last Modified: Tue, 27 Oct 2026 00:55:52 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:689a1e9be0b5e850a2faf3eda4dfbd52632fcb266f60859dfbe18a60ec023d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168919488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30e446d97672a5ba9cc7b15325700e986ea3c451f263a07dddbce5e465b8f9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:19:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:23:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:23:39 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:23:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:23:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111adca601e00eaa2050db51193e634c29c863bee4fabc375f63ab9c17d0bc97`  
		Last Modified: Wed, 21 Oct 2026 11:24:32 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7427b215435103d55e93cea95f468d2f85d3604ced37df7c8aabf919b60bd853`  
		Last Modified: Wed, 21 Oct 2026 11:24:31 GMT  
		Size: 18.9 MB (18940458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c5a03014a0dc3660ccb6f5c617642955263bb49dce1ead72cb3434fb5af031`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c853d0c28e9f758f4b1e5324b823fa5486b29929a61a282f38f83821142808`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db71dbc01be98108a32a76521ab2ab97af862bca3503ed0ae6704803b7fa2bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3792779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4d6414427ffbe2aecdce3eb295a84c4b842196245017d8b4fb53c1f2c656d7`

```dockerfile
```

-	Layers:
	-	`sha256:c2b41e5b6ac5f312a58a22375ef799e28d7a5ac3673b711547b5d8051b0f1fb4`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 3.8 MB (3775028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7ec0425c37995dd906a3d373629315f4e6196da6c41a409823ddd5e589aeed0`  
		Last Modified: Wed, 21 Oct 2026 11:24:29 GMT  
		Size: 17.8 KB (17751 bytes)  
		MIME: application/vnd.in-toto+json

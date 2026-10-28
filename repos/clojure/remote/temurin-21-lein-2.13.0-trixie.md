## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:e2b8e286a63acf054e95cc1b95dec8a8dae31caa032e9ec66d485ad92509d67e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0ac7f5de89d18d4ac1cafd5026831f2844e15c119346bdd6394fc8982244500c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230912227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3323db8a12fce77a40a4a1ece1e3d1cf4f8be8b748a5a1adf994d08381c661`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:49:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:45 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:49:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:49:45 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:51:00 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:51:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:51:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e456f6a71f3128897106e44ba0b94f59eee4bcec82c1718b292c31a42e791e`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cb37e17b923919c915c5908cbdb8c93699d483b41ad6d2046f35a1aab9310a`  
		Last Modified: Tue, 27 Oct 2026 00:51:21 GMT  
		Size: 18.9 MB (18885471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f86de9e7bbff2de607080e42932146a8a868b5c4c20c45f6ffd7153a5609cc6`  
		Last Modified: Tue, 27 Oct 2026 00:51:21 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9095871120bc330edc65db167ff41593632781854fa8a830f41a931917415c5`  
		Last Modified: Tue, 27 Oct 2026 00:51:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:06e48e178e2a721723a28ce02e53af4e592b85d7758fc93d9ae254ff1233d0d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a9f128d1bbdda605e1ada1865fe9d0e9f64f7657b8b4e87abdebebe010a608`

```dockerfile
```

-	Layers:
	-	`sha256:b0947a812f4850c8b988d800105d7b145b8587989d50bb6e406b11c9bbd3ade0`  
		Last Modified: Tue, 27 Oct 2026 00:51:20 GMT  
		Size: 3.8 MB (3828322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5541884add64f2d5c800576caa470968202709e570715f1d19a8828d84fbaa7f`  
		Last Modified: Tue, 27 Oct 2026 00:51:20 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3107d32504d102127caa9a55ed0feb556910590c9a0ab2eecc13c4986f5b7e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229546815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0b479f9f4408b087a05bbd14e3a78de8c6c9cad145d3c82c8db881419ce5d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:19:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:19:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:19:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:26 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70c842ca803e129dbb155d03e4be441bdf72feea06a4107c7d31bec46a10b64`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 156.4 MB (156400654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1978f27d4d1be600ef8640b6498952a2b4d4458ea67eac2e77adb003222f0fe7`  
		Last Modified: Wed, 28 Oct 2026 02:21:47 GMT  
		Size: 18.9 MB (18854339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92b6cbc57e71b4026b508440e8d2905d44b0e6f14a8604b0e5b2582d71e16b9`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2da5fa91735fb4a39b40d56195db7ebcef3f97afafb63fd95c98e088dc30e2`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aafc64d6706db9d5959c62752a26f0faefb5ca0bf86eea247096f98b0d847632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858114b9b4efe4cb4def2807518df413e29187a82ec14c7b53d3ac11d41e8057`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2f7c21d2d0e8a60c7799b37b9938a83b8d0e149b94f1e47f7724323b8a791`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 3.8 MB (3828562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:780c099e1c505818bf9e7bd41f4797ca7310ba0c54378c017a753150499c853c`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 17.8 KB (17837 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0f0a8558947fa3d2a9a52f8e9b0226e2bfa6e508fde1bffc89d5398021a21181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234945678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74088f45b23481a11f7c5a2a4da6979143b51693b4309e71108cee5e13e07e98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:39:41 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:39:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:44:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:44:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:44:02 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:44:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:44:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:44:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:44:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e7cd69e3d8d325f9aeb846520a79195a54b18e1c6d87a600625c390cce0abe`  
		Last Modified: Wed, 21 Oct 2026 10:44:57 GMT  
		Size: 158.3 MB (158282669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58be1984c0d6f16f01f3fc3ef2a1fcb48a0bcde6a8e94312c0eefbc454733b12`  
		Last Modified: Wed, 21 Oct 2026 10:44:54 GMT  
		Size: 18.9 MB (18939815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bca585e83dc9a1d687a910242a1cc41bc36b8414a202be1c397b33ee5079538`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1b93af8b9dc43dfa683ba171420f27544e80c6defaeb881f2ad1f952ecbb71`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4000cccf874a9de8bbbc5c7acc4f7b941a87e72b3003d361919b71d9910dd326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e837ba1f40c28b6d5aedb4bd936bd09d1262f3f797dcc60c838e964bbcc59b6c`

```dockerfile
```

-	Layers:
	-	`sha256:af7b1fddd52e740a4662cf098c2ad9f60246307325ff48888ebbf3d3d467b7b1`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 3.8 MB (3829320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a25723968c7814774943cce7d1148ec3a72aa0fd61dc37bf426c7fa7b6b0c50`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

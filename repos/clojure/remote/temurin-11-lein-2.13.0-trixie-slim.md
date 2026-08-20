## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:5378459f88fecc2ad41ee6e5da89dbd7ba90635131d06269719d26a3fe19a874
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

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:17ee3bb7d3ae8225bda5bd09a8d35a657850ca241d6824f787fdc375d9ef4e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196924192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8b10d0ace4f82e594189b955b92dc0fa5ae3c2042d1f032d975497cac197c6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:42:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:42:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:42:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:42:01 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:42:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:42:01 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:43:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:43:13 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:43:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:43:14 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b855860b01dbea634becea1e738e52cd419076a1bc07427aceb8d3451ad699ae`  
		Last Modified: Tue, 18 Aug 2026 20:43:37 GMT  
		Size: 145.9 MB (145884905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b8b6262dc4b26c5bd07a6e17299f0abe9465dc0b60baace4cc2e69e2b54835`  
		Last Modified: Tue, 18 Aug 2026 20:43:35 GMT  
		Size: 16.7 MB (16743295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e5710c7f3078b50f9b66b6c6c8bb10b0682c0bf2b462b7d56cb3f4c2a6d459`  
		Last Modified: Tue, 18 Aug 2026 20:43:34 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1cbac8f9ec0991ed5767a657ecb4ad1f764bfaddca4ecdbd8f2e9b721e10218d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3050c79ae426dfd43324e28f3a939987e07da544caad11b28fc887f35a3a3904`

```dockerfile
```

-	Layers:
	-	`sha256:79a2706ce9f932b7ae06d88fddd1eb6a1a1b32a41bde2d4d35ff1f03af363224`  
		Last Modified: Tue, 18 Aug 2026 20:43:34 GMT  
		Size: 2.4 MB (2386633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae72251f7196da15716f3d98c7e265d29d6d2f9c7fd27a56102fdcde7add73d7`  
		Last Modified: Tue, 18 Aug 2026 20:43:34 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee24ccc0d63b465076af176bba5301ad2f60b5c48e82df38cd32e25d00d41f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193951980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49a9f99e68923c4f2fead692a07871f1ffb2f2176f8f1c0d90871bdfafa66d5`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:42:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:42:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:42:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:42:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:42:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:42:59 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:44:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:44:13 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:44:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:44:14 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7633770d07832a8db59687c19b80688a81f07b835c100e9f3130c99883690eb`  
		Last Modified: Tue, 18 Aug 2026 20:44:35 GMT  
		Size: 142.6 MB (142582134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d25c2bb1b7ec68bf8cb26249d54750c72423e31e9a15c1a447eae68aecb88`  
		Last Modified: Tue, 18 Aug 2026 20:44:32 GMT  
		Size: 16.7 MB (16711018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ae0b36614147c8036c1a691d2c8d9a3e477e912f445987390fbd80721bef73`  
		Last Modified: Tue, 18 Aug 2026 20:44:31 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6dd8e2a83806f1b16ef8c4ffc332ae235cc5045758d67d274fdec97ceff6c276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9298e1e95dc10eea6d084a261b6386dd42dc7bc36e78df596f8fbcaf81d36042`

```dockerfile
```

-	Layers:
	-	`sha256:c7a88b84d31c0dd22ffb800367dca575307c383e956532e37eda3f8cf9cdff56`  
		Last Modified: Tue, 18 Aug 2026 20:44:31 GMT  
		Size: 2.4 MB (2386861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e77ec69945726514e324f79fb12679c1fd0f181d8dde0036aac179491756864d`  
		Last Modified: Tue, 18 Aug 2026 20:44:31 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c3f4d200fb1dc6a0793473325cf6eca03b1a969700249dd4d6204e1dccf4cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188009300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c948819bd2da96f9e86ebaf418b5af3c81788f76d2a7c892364b76403c274cf6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:59:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:59:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:59:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:59:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:59:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:59:15 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:01:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:01:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:01:58 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:02:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:02:01 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb22f8cd11012128aeae41b646e618ac6e218432028e6138ccabbabaef027ac0`  
		Last Modified: Thu, 20 Aug 2026 01:02:33 GMT  
		Size: 133.1 MB (133110171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4184a6da832439fa25ff5a9afb3c2ca1862c619b8ead6a099c79d3b825cc49`  
		Last Modified: Thu, 20 Aug 2026 01:02:31 GMT  
		Size: 16.8 MB (16782540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb3266e3cbad45fa8bed769550dabbe40cf68c64afd8c7f0319ffda60c90c29`  
		Last Modified: Thu, 20 Aug 2026 01:02:30 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2dd1ebaa13fbaf95e18dd451b3facad3b9db0e267929373a5a0ba2fe8fc67479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d862b19a10644185ce208cb8480b8e5ad1f6eacf13c0bd7186616ce43f4facb`

```dockerfile
```

-	Layers:
	-	`sha256:d0170c6cc1f08cbb47cfa9e1580cb27f32da78317ad668040c3f84b6f6c5eecc`  
		Last Modified: Thu, 20 Aug 2026 01:02:30 GMT  
		Size: 2.4 MB (2386998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:877a5c59b7779a607b6d65abe5e2f8ebce732777d3d0b41b5a4f8ba043656d75`  
		Last Modified: Thu, 20 Aug 2026 01:02:30 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:bce72afe8aca244c09fa872486ae78359cf6971796d5d92ebdb66ea6d2a72650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177793993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50d1d32fcf5c448c0e116ac91d49838c827a0ce5da7abcf52e71b5d7933d729`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:31:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:31:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:31:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:31:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:31:39 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:33:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:33:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:33:04 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:33:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:33:06 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76aaf21df62edd44880e0f4e9a7a6244817ac5c24694e764a0d7d3794f02ddc`  
		Last Modified: Tue, 18 Aug 2026 20:33:31 GMT  
		Size: 126.7 MB (126652477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4e3be7a102cfd81740cd872a096c3ab808089b3b24ef016599e40a386c4f9`  
		Last Modified: Tue, 18 Aug 2026 20:33:29 GMT  
		Size: 16.8 MB (16779693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92f9755852ca3ae4eb7038493583a69df95653127c647693fd0ba8950d24c`  
		Last Modified: Tue, 18 Aug 2026 20:33:29 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:21c266032228023a185f43a6624fe1570f73f874c5a605778e379a994b4add69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0c76d17b278d1208f9b306ad87e599fe7a03d4753220b2836dab03cc1d20ab`

```dockerfile
```

-	Layers:
	-	`sha256:c2fe14b0deeb171f8631b74f52e4b4dcd70b9fd56938e9718164702b86f9f93e`  
		Last Modified: Tue, 18 Aug 2026 20:33:29 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:678e18829748d082371c9ebeaf62f7f699aa2dcd1b3d7eb7b2bd9ca491a14009`  
		Last Modified: Tue, 18 Aug 2026 20:33:28 GMT  
		Size: 15.8 KB (15762 bytes)  
		MIME: application/vnd.in-toto+json

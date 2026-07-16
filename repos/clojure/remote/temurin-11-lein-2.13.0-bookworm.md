## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:e7e1957993b02901949fd2e6e5b913f3d885543d07c6ae4bc2b622e0fb26de51
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

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:538988495a04d6570806526323a3d6b01c20497ebb865dee6666d6a8cd52b4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219007189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c78900e2283143937a936c8e3842085461d7fb9df23c043f8487c2b508ce34`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:29:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:29:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:29:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:30:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:30:27 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:30:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:30:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f441c700b5ca8abe9db9569148bb98ad460152e764d81bf61585f4576ac5bbf`  
		Last Modified: Thu, 16 Jul 2026 01:30:49 GMT  
		Size: 145.9 MB (145886208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1162425a46de7f6efa49cee4af6da7e54a57f1e5b784675364518bc03959abb2`  
		Last Modified: Thu, 16 Jul 2026 01:30:46 GMT  
		Size: 20.1 MB (20108345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e8b7895f2c9eae0d24cb3632c5a2f2c67d8dffee2405ceb1654f697f838e17`  
		Last Modified: Thu, 16 Jul 2026 01:30:45 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a23638bd0ec3c0ca0a8f61c129b9e9ed1e29658169f2b51bb422d055486bec18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3344d23509e42ecb526d9a19977ee1c23ff16b2a2d1a0b76784e07fec574c196`

```dockerfile
```

-	Layers:
	-	`sha256:62917d44a72ad197628f4f06eaa97eb31b86545c0b84a46d1ae9619a6b3143d9`  
		Last Modified: Thu, 16 Jul 2026 01:30:45 GMT  
		Size: 4.3 MB (4303570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15642e9a8d8125c87598534ac5d01bea61240c8e70541d270dd2a5a48c6cda8e`  
		Last Modified: Thu, 16 Jul 2026 01:30:45 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bfc29fc15ada5546d6d33f01e0b7756e650488b012e7089f591f0cf3cdff0ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215431883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba039fb67011fb61592940702f2cd5d2b7cb0850159ff4da9801dad1edf71be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:20:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:20:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:21:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:21:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:21:37 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:21:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:21:39 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad52d61bb236954968baaf4c3593b48f1285c2bd7e6a293ef30b4ee3a04d5bd4`  
		Last Modified: Thu, 16 Jul 2026 01:21:59 GMT  
		Size: 142.6 MB (142582169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c569c6c6f7ff97ddd56280fbedbef1edd52464fe46b862f02ef08b399ee00cde`  
		Last Modified: Thu, 16 Jul 2026 01:21:57 GMT  
		Size: 20.0 MB (19950812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a210f6c49d5a8172505161afa63284869131ff029ff307acd3d096510810a8`  
		Last Modified: Thu, 16 Jul 2026 01:21:56 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a4eb217062df0a6c1351162cf1e9d68d402003c1a98e10f0ed9badac0d724e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6820701b46261f0b2f8a5c453e1ada40fd9de853db878af08dfaa3f7f380c2ae`

```dockerfile
```

-	Layers:
	-	`sha256:3e1d17bbdcd9279f93d162274756d2f1cd5c36b209ed88e6ac02f95e88b724fe`  
		Last Modified: Thu, 16 Jul 2026 01:21:56 GMT  
		Size: 4.3 MB (4303803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb3b3e6321943a7bc31dc8b0b17776009a5c7821b2f155b4b2bb2a2c5826406c`  
		Last Modified: Thu, 16 Jul 2026 01:21:55 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:af2edce71220475b3fe18f85ff35df39f841cedec625cc47e989686633762a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210298948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1c986fdd73df109313013ca7523cbbaede200117b936ac78c415c5b606426d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:26:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:26:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:26:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:26:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:26:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:26:59 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:29:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:29:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:29:31 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:29:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:29:35 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d9d5a09449f710784dfdb3b4794257f6e4071745ee4fdeb4d6f1e1183730ba`  
		Last Modified: Thu, 16 Jul 2026 02:30:11 GMT  
		Size: 133.1 MB (133109943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00f0392d26fc1b3a46c41978c5a97acd3f214bd4157c539725174f0439d3352`  
		Last Modified: Thu, 16 Jul 2026 02:30:08 GMT  
		Size: 20.3 MB (20331923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a251fb08a4525e20c74c7fabcf4249b308e4e1ddfa1f343b15ea6ec3025505db`  
		Last Modified: Thu, 16 Jul 2026 02:30:08 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2859b2e0e85fb687c487055da2c7020090a291e1e0233caf9cc45a5a9210cc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6feffd9eccd9a1caa260116796d1a1e8f86e9d8f1d8de95854d64f86c2e64317`

```dockerfile
```

-	Layers:
	-	`sha256:ec4eee60264225b8180834d89245175b054c6c9e7080359ced4d2c44dd3d243b`  
		Last Modified: Thu, 16 Jul 2026 02:30:08 GMT  
		Size: 4.3 MB (4304816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faf3ec420eca5f7be7aabcd4f5dc83391c9ab05a05ddefd219403cc9cfc272ca`  
		Last Modified: Thu, 16 Jul 2026 02:30:07 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:0008a396a34a77c0926ef585ddf9f644fd02b4e569a33fce1cc7deda658110ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198094370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7a1248ff4d4d40cb2ebd591baa9a7eaa5ed6063c3f4434badf3af0d9abb1e3`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:41:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:41:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:41:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:41:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:41:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:41:22 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:42:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:42:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:42:29 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:42:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:42:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e106fb2afa0d3de7e5e2c1ca270abab54821b5b916abe15b98d79da31b7418`  
		Last Modified: Thu, 16 Jul 2026 01:42:55 GMT  
		Size: 126.7 MB (126651663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bef1fbe3ff41865e75ffa42d4dd51c1afcc525c9f8a4aa736ee999ff8ffd5e`  
		Last Modified: Thu, 16 Jul 2026 01:42:53 GMT  
		Size: 19.8 MB (19770198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73af6dede2fcfe8aa5d272c75c0bb5b5bb598d5abff2faa530017ff90f7ac9f8`  
		Last Modified: Thu, 16 Jul 2026 01:42:53 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1330f92c6757b361c3918b0b392743a8b2c632a435140a7215443e7fe6539f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062e3371e8cac0f9d3c86f9876de96ad756fa8687d441a4a67cc5c7b31af62dc`

```dockerfile
```

-	Layers:
	-	`sha256:07b4dd415833c9d88d9ecb1f1ae8f7cfb9733d4d6020e1dab1a1d1180a8b99c1`  
		Last Modified: Thu, 16 Jul 2026 01:42:53 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:834b12b0205ba15ae5534330362466e52c58693f33b55310f09b841d059f11b3`  
		Last Modified: Thu, 16 Jul 2026 01:42:53 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

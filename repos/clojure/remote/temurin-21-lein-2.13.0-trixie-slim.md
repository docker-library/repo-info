## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:3ed92e966bf31d92a1eb983a81f7bb30c38eb7b4822e3174129e43508b001c1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7b0ed4b827f1fc519da10734f91959229d1c9e6289051ff4497f79d02a8153d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209218484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b007ce299c288f72d64b926049e81060b883cadf9cab50c54e73b1427801a18e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:07:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:07:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:07:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:07:42 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:07:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:22:53 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:02 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b03c90e3c650782c35490fc82bdf7f839680d2b71e8f836aecb422727dceca6`  
		Last Modified: Fri, 25 Sep 2026 23:08:28 GMT  
		Size: 158.1 MB (158117471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dd142544ea03959618fa1250f93321d57e6f9c07b362636eb5622a69ab9e69`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 16.8 MB (16754952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e87ebe28c35c43951de547f4a22b62eb240fdc522b4dda553ed40dfe387587`  
		Last Modified: Fri, 25 Sep 2026 23:24:12 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de6cd1f99fe21b9c3741fbc726a78551e1d366532bf5bffd6cdfb7075448b7b`  
		Last Modified: Fri, 25 Sep 2026 23:24:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2422f0ed1691c58f50385db19e5a617cf8941a7667fc126a04b0542d05bc6c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0814aefe186957fdacfb3ab8a8eb24f541a992dee3b2b68e8b41fcb200e6bca0`

```dockerfile
```

-	Layers:
	-	`sha256:dbb4b00121a9a431cc059ee47a498dc01ca504cec2bfcb9e68d0f792dd3b14f5`  
		Last Modified: Fri, 25 Sep 2026 23:24:12 GMT  
		Size: 2.4 MB (2374883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fef09d754ec594e297e2859597b81339588920e739c62569e64bb8e9ecb52f33`  
		Last Modified: Fri, 25 Sep 2026 23:24:12 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:90329dc4abd1430e44b1988d7bb2c8d7819a071a68dca2600ce3df6a5c850695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207817696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b223ca7ec1e0bf64d810d097e47fd9330cd836a28c9543672ca4400a5ec1bbf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:20:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:32 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:21:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:21:50 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:21:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:21:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:52 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5d00feee25cca494fe3d1f137195f2a0566d05016f0131eca6a8a45319fc33`  
		Last Modified: Fri, 25 Sep 2026 23:22:15 GMT  
		Size: 156.4 MB (156400655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7771b58d2a2358170b09b6c0a21ee628df204d29a2e7e9ebdfd41598b3163b6e`  
		Last Modified: Fri, 25 Sep 2026 23:22:12 GMT  
		Size: 16.7 MB (16711712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c1c900343e85f09e8626f37255ed5e1f6a4945e556e36543f40c1d7cefb086`  
		Last Modified: Fri, 25 Sep 2026 23:22:12 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1e2dafa8c3d96a4290f67e70aeef9765b6f7a7bf0bbed21596270577e2e7d1`  
		Last Modified: Fri, 25 Sep 2026 23:22:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6071d43a94a7e1ca9345c4bf71472404a729067ee834cfec131467d24b3ae8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09fade7d9f95cebf7b0d361da0a7639a9f15590b340c4d41ffcb5dcf0cb234f6`

```dockerfile
```

-	Layers:
	-	`sha256:c8b7e4abe28140b2dba430e2278a9cdd3e84632f3b8797dce12b5416e3551376`  
		Last Modified: Fri, 25 Sep 2026 23:22:11 GMT  
		Size: 2.4 MB (2374493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e6f80768b0cde2426e90edc5fcd3ccd28b1d308f3a8ba291aeaf516961a6be`  
		Last Modified: Fri, 25 Sep 2026 23:22:11 GMT  
		Size: 17.9 KB (17871 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f0296c487f8e5c320fa37681f8b083dbd88b7fe218b672ce223b7de30f5adce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213214904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff75ee0c865817f017c8bd39431355e6e9fecdb57265f5cf0a5ceeb04cd9242`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:06:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:06:56 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:10:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:10:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:10:33 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:10:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:10:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:10:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:10:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979281c49b96086103e149ea859999065d7d8e56da642cb7c95c5f3a0934de46`  
		Last Modified: Sat, 19 Sep 2026 08:11:28 GMT  
		Size: 158.3 MB (158274938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8da980ffda8f3f2267dcb6e40dee337638114b5de7eff1828d8cc363847267`  
		Last Modified: Sat, 19 Sep 2026 08:11:25 GMT  
		Size: 16.8 MB (16783092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfa67d3772c0878ecef2849896488be0bc078546dca4c3be7369b4ce5d13cb5`  
		Last Modified: Sat, 19 Sep 2026 08:11:25 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934ddf64121e3d3f8830e2d11b09ff19fcf00a09d10e1f0d4ab6ae30605f34c`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:890697846a62993df49bcc7985c61f93f0222089bdc189a68413d1c65b78f364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06f7182dd9d3557e660ba9c973cc3ccb4c36c4392daf691e842c4d10d243271`

```dockerfile
```

-	Layers:
	-	`sha256:17e011edb7896d49b7d6b503e6d26fc1be4308012e5b94d06fda96ec004df11e`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 2.4 MB (2375855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acb0b2b7305ba68f645fb3f242a661d8db780b808a0be97ec4cbdcf1fdf22743`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

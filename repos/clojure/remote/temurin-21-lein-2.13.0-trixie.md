## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:17c96f208b3f857627282013d6e2c55bb97ee38165c3c7843b9f9057e55885f9
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
$ docker pull clojure@sha256:f5a4b00d989cdc91ae53731b5e52c83767364a360097008d8cc882665dfd2eb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231223079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2873f8620083258215500ecd7d1c01ae6a8de07173035a30add4ef460ea74d62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:49:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:49:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:49:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:49:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:49:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:49:36 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:50:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:50:57 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:50:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:50:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:50:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:50:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd96093f6af7d45df477a82bda25bbc80234feb0a6cb436006b9c7a3ffd3912`  
		Last Modified: Thu, 12 Nov 2026 00:51:22 GMT  
		Size: 158.4 MB (158409388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1312b8e7024263c644eb060b35239b0282ffd4aeaf197376ba3ed3f00c6050f3`  
		Last Modified: Thu, 12 Nov 2026 00:51:19 GMT  
		Size: 18.9 MB (18885069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62882e2d48a343f3421264b269d70111db0566a17073bfa51dc548e5c92f3d50`  
		Last Modified: Thu, 12 Nov 2026 00:51:18 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ee53684e22d69ad581392e37a028bf1f31d4c74bc3f2097cb283b0fc31717a`  
		Last Modified: Thu, 12 Nov 2026 00:51:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:de11b877dc53847131e0e38002239174b4642373bc19ab0f914af03cd06be54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa193d81fa1e2d93c2a48a32698fdd6551f4828001e5f19833d578f54b6e5036`

```dockerfile
```

-	Layers:
	-	`sha256:32455c837f74cdb39f73f67562e460bd64aec64099c1acff7f524e7516b9e604`  
		Last Modified: Thu, 12 Nov 2026 00:51:18 GMT  
		Size: 3.8 MB (3828314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39ed1d61fdbc6883d750dc7162ed13bbf4be8127075baa6b997f5c3075d6c83`  
		Last Modified: Thu, 12 Nov 2026 00:51:18 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8563d7582c49330450207bb931932a41e3310eee91e2af2b8edfa0662c30d4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234254169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e17c9a2d4172f40d1e4ec10d1f4b4f657708d9464f8ac6e1bd1abc30b3a30d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:52:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:56:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:56:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:56:19 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:56:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:40:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77324a11848d877bac9af5f0ca39315d93ee1d02d9b33c1cea449a77e36efcf`  
		Last Modified: Thu, 05 Nov 2026 15:57:04 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097ee97bbca2a67c6dd07bdf318732c038b92bad51b6ce6e96f5f324d736e8aa`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 18.9 MB (18939187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3d7077a930754818bbc4eba4e4e61d5aa4ee946677aefa4e8cfaa9e7548985`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adccb20e11557ff21cfe8fc5e26a972f8f3ba1568e52b6194d8469cbbb018de`  
		Last Modified: Tue, 10 Nov 2026 02:40:27 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f8441145d5adf36b5b4c5a575b4473504706eed7c1f1b5fea3adcdc42203fbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f501ca365bb804aff0b258887f843a088d403fd6ace02aeab3c4dee640a48291`

```dockerfile
```

-	Layers:
	-	`sha256:b49416623dcf7f79d0a3f2bcb669d1934a936ec641a693421741f5c1a84e3c8a`  
		Last Modified: Thu, 12 Nov 2026 08:33:32 GMT  
		Size: 3.8 MB (3828066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ccf8a6ebf86042e69d1217f2c9bec3c0a478b1d25fd215c538c5666604095c`  
		Last Modified: Thu, 12 Nov 2026 08:33:32 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

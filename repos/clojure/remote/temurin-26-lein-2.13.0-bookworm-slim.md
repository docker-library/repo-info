## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:9ace929352102eb9b3b64815790a8863275086157379fc7175bb5ac62a2210d4
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:483d4fcce781f97f1f8be098cd5e6b68747ca139c23762d0226db8eb7d7d293d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145349777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5fa91ee6887b821598f473ba0b8dd454985c30c5274eae8607e132643726da`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:55:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:56 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:55:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:55:56 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:00 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eec346fbebf6f006bf9d26cb2662b0617d66b41788b8fd373d21eaa5274e483`  
		Last Modified: Thu, 02 Jul 2026 05:57:21 GMT  
		Size: 94.5 MB (94524296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85922dd5a11226d32b0fe8dbe533ae7c7246675cf1884745fd3f61707e0a5d54`  
		Last Modified: Thu, 02 Jul 2026 05:57:19 GMT  
		Size: 18.1 MB (18072196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2393fcc03b025c651ae97dfb2c01c196d94cce97eb4367f9b4e4fd59d39b5712`  
		Last Modified: Thu, 02 Jul 2026 05:57:18 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d8f55799e10c30d7f4527f5d083338fbdafd677ff1e68d1118edff98d7b506`  
		Last Modified: Thu, 02 Jul 2026 05:57:18 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:198f0b343b19988cbc6f90aa6d69dff6f34f5a27a42f8657c3ee8fb2e7124e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09b259eda49c4d5f2c25bd97499d97d421518b968fa6b4a6df6b0bfb53e762e`

```dockerfile
```

-	Layers:
	-	`sha256:3583d685e4ed4599c6c3534f60ddda3521a69c89c9adc95c8550431747ed2b86`  
		Last Modified: Thu, 02 Jul 2026 05:57:18 GMT  
		Size: 2.7 MB (2697228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9aa985a4ba3e557b44295ee07e837f96b64d41a66fec008fa251a9a725e9e7`  
		Last Modified: Thu, 02 Jul 2026 05:57:17 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:58518f02df134224a53f9c760535ae9cb5eb5ab64d5218a4c65e8fc68931926c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144036255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0c5b9c2dd8265a9123932c44067be9030eb45daabd7550db5e80ec4fdc2076`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:56:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:29 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b18a537b34b1cb2b4c0f84af09b9a1aa0136c3698489daf2fa0e428fd666b21`  
		Last Modified: Thu, 02 Jul 2026 05:57:51 GMT  
		Size: 93.5 MB (93504350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8be293ebcf42ab33e444bccf284350b4b6ee1e059b911640252fdf517e68718`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 17.9 MB (17893853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbc0588fbbb3d2b132568cd1bedf2c800be28fa7f93a7a5fd44298ff97a4f73`  
		Last Modified: Thu, 02 Jul 2026 05:57:48 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3e96b850c9146ea62490f3aa21347c4955a3a419da30a7bb9962cd85eabb27`  
		Last Modified: Thu, 02 Jul 2026 05:57:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1ab8bd504ebc4bb3cef7cbae08ee2e824d2aff70b8ea10ec22a0eeaded57cbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea1a14c0fa1c0d2a9b96d9a0a86ba67e314e298615d2be241dc24bc25e5ca3e`

```dockerfile
```

-	Layers:
	-	`sha256:f14c98829e477fb10f78a16c71a6219c15d2152e022229bbd67c85acfa283375`  
		Last Modified: Thu, 02 Jul 2026 05:57:48 GMT  
		Size: 2.7 MB (2696840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9414078c3db9559963008cfab8f0873df026ed08c0cb8d39383c78425c593e0`  
		Last Modified: Thu, 02 Jul 2026 05:57:48 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4eaa8b6872fa98b38174fa42c50f01c827ef10b6470f0859d1498d0437a20c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148763690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f975ffeb17d2c4c5240a64ba658b9c9df0a3dedc14bf3b23c88f6af8e4a7cbb7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:46:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:46:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:46:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:46:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:46:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:46:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:49:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:49:23 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:49:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:49:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:49:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:49:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138e1124eaafebbf5053cad956e5af6afebceb4bb90e53a7c84739e5789cfe7e`  
		Last Modified: Thu, 02 Jul 2026 07:50:04 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed191ceec699c1c007d6c7da4fe6c95a859fdc7dbb8a4b2f46f67398a6f8319c`  
		Last Modified: Thu, 02 Jul 2026 07:50:02 GMT  
		Size: 18.3 MB (18264010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce150a7fe27f32d943a056fe5b6caca3ac293da486bfe5e54f3589967be7e8b`  
		Last Modified: Thu, 02 Jul 2026 07:50:01 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c472ab22d1236ae6d8b85be52d53419af8891f5ca093ce1185d77ca24453f6f1`  
		Last Modified: Thu, 02 Jul 2026 07:50:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5af1cddc11a8061fec2594714021ee5f97074ea9cb78fefc2588f1bac9bf6f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e91087061cece82b02ec280a0bd2648e35b1eff777b34cda29222d821ada24a`

```dockerfile
```

-	Layers:
	-	`sha256:981ff574f17c8face203f276a66a35d56f35d22a0e707adcd56c051bdfb2fb63`  
		Last Modified: Thu, 02 Jul 2026 07:50:01 GMT  
		Size: 2.7 MB (2682997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c616dd729768e4caba884e35f1ce6609f6b45d03c5b770c804caf1a291f0d24`  
		Last Modified: Thu, 02 Jul 2026 07:50:00 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:631f6ee62dced6af58a7fb3b5462f12e91d9945fb5a9d94fa983e8705cdadd92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139671079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63b75da7a612a6db3a98d323d3485953a4a7c389916084d8727710b5280f562`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:59:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:59:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:59:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:59:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:59:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:59:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:00:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:00:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:00:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:00:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:00:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:00:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:00:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27393891b020f91a2a54e0a88c00d83d4f7a0623d0f3583e0d0bcabe73a1d2f2`  
		Last Modified: Thu, 02 Jul 2026 06:00:42 GMT  
		Size: 90.5 MB (90536963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd79d22f5c5f169440dbe1d99d77dabe8b5f72d0c7c6ade2ccc59bf695aa3c0`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 17.7 MB (17724914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654f77a810727591c9cecbceab45e9d39c5113e226186b4016b7b8c9fb41cc02`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a58fdcac1c46c001c20fbe8a1016508e08da93395a69f4cde70921a24936c4`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c95a6c7a07f0d4da00a96a183286bf4247b1dbf8d494bc6ef10d9c11a0962921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2691994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff38000f2105926af49a768b6048c0c9f26a78f096fabd1cc4bf34df9873dc64`

```dockerfile
```

-	Layers:
	-	`sha256:1143963fbf1df49181305beefead2103d4f5c3138b72c0f363764049c4d9b3dd`  
		Last Modified: Thu, 02 Jul 2026 06:00:39 GMT  
		Size: 2.7 MB (2674228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7326be954c57a97a9afcbd26e983af7eeb353594f990de1c03c3c85e20ff69f3`  
		Last Modified: Thu, 02 Jul 2026 06:00:39 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

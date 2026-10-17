## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:74abf2da1e8bf1c4301b750a866dd4f837085614b6266e2ec1ec64673f4fdc63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:03d14f9a980348be0999f20af3988797d65c8e644aca47ed360e4cd6da4da0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (198952747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9f522090b29e63719b2691c9a5fa0e3b12e806407b61a73dcccf39d61d5299`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:48:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:38 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:49:56 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:49:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:49:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:57 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2274a7263b04734f3e5ce4389042fd5da688feb8b736edfd9867cbedb234c105`  
		Last Modified: Sat, 17 Oct 2026 01:50:18 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737a44c759fd46382c4d757252d2b2e9166449bfec2228cf8a840b10761cf825`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 20.4 MB (20362337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce5812f4a63dd6e355042441fc054a336414f9d4921f5097f46ed588fc495d2`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73cdea17f2295adbe282f0bf3a4fdc24ea7a551c8b1c1af32f596dcf9bbbcc6`  
		Last Modified: Sat, 17 Oct 2026 01:50:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6528c27150b068978f00cb087c967102a37d480736dd9a2ab221e06403d48f19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2c9e83ae0d7a180d7dacc4f9d3ee6d3b994188b1a8712568c409a1d4e78d52`

```dockerfile
```

-	Layers:
	-	`sha256:2843d45dfde4ff0ac6e13c1b435e5676aeaaea69c88e69e4ffad5ee35d1d5ed8`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 2.7 MB (2737618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:500031fbd76d9a1960223d33abb8a193e001ee60a17ecdc842fe3b59f3a52f42`  
		Last Modified: Sat, 17 Oct 2026 01:50:14 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d3cc52c40ad41bc91477cfbb1c9590b1443e3df34a50ba734745128986139d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197457216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5648af420cac5364626fe8b71b22e297a243cf56ec09c1096646392c1fc3a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:48:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:46 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:46 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:02 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f621e31e023b49df469ee358c4a513a9b7c061347ec580673026014e3fac972`  
		Last Modified: Sat, 17 Oct 2026 01:50:24 GMT  
		Size: 144.6 MB (144648237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73474892d66e2b6a758d1116c2c360da7f988f55da69cc9d9fa974425ef9a10`  
		Last Modified: Sat, 17 Oct 2026 01:50:21 GMT  
		Size: 20.2 MB (20156170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27c6ca6378e73200c24cec450c37f885bf5c0e51d7745e482981ab878c9501e`  
		Last Modified: Sat, 17 Oct 2026 01:50:21 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308238b977dcb25c85681969f4ab99457423d7e3297280a37a6f24f0254f8d2d`  
		Last Modified: Sat, 17 Oct 2026 01:50:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b1aedada9fbb7c994f8f996a1364ec156103813a206bfb5fdab00a393121be8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee7258379fa9ce1506fb61093a50817c7a48c34af9020e96e19ac8cb0a782dd`

```dockerfile
```

-	Layers:
	-	`sha256:dcce4ce079390d59055707814334ab017d03b36da5fa74df0c6fa1e983d267ff`  
		Last Modified: Sat, 17 Oct 2026 01:50:21 GMT  
		Size: 2.7 MB (2737233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7adb33086cd05e6d14e41ce8083d4ac79e1e819fdbf90271e297a8eab2e14978`  
		Last Modified: Sat, 17 Oct 2026 01:50:20 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:85b5d7cd591d49e0d28e9f2996cc0e0a8c14bf5cf60edc00e6d8b7cfa61ed6f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203014790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97df8d572e024a88e6e7ecc954b267edb2456472d8ca6acf1719b127099aa40`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:01:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:01:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:01:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:04:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:04:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:04:39 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:04:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:04:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:04:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:04:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a3330add54adab18a22cd08383f7e4def1d22934544cb2baa835ed88e94414`  
		Last Modified: Tue, 06 Oct 2026 10:06:14 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7ab1647958235a3906ab1c477c34d3319d8fa4299ec02230a63a1441c73a62`  
		Last Modified: Tue, 06 Oct 2026 10:06:11 GMT  
		Size: 20.7 MB (20735207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566fa77722767b66b7bee6ed44f88faaa2f672fc1ca97027b75d2835dbc6bf76`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461e1dfbe0a9a7f8647cba391475fae6612a28fb38d356ebb01e29ec32516a`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3bd4626d73aac93e16d47ba548a0f21f8543691e7358396ddb81fa343693712c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f27e72225c72091111cda7adb7e34fa60ebced16e5f2cf5833a36a819e07ef`

```dockerfile
```

-	Layers:
	-	`sha256:557f3b9e13b55cdda73bb7ec6621d3826b02f3c79ad8eb67347e8d9310b4a3d9`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 2.7 MB (2739451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97b9f7870aeccb51e02cab4c2e73a742f7b28b4ebf8d3157207d7e9bbdba9322`  
		Last Modified: Tue, 06 Oct 2026 10:06:10 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:511243804dafa1c3a30391e83ab8094742bee6891d9589356a9219fd337e7545
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cdc7954076d87e9b953363be020c49644c250237df77411685672e00683382e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143710888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540f3befacb0beacace0e27bf0dfb32f023a726708bdbe11b4fae73fe3d3f2e1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:41 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:41 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:06:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:06:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:06:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151ed32bb42c0830613ffeeb2bbf5114965bac3e4485e3bd19916ad9ef88a972`  
		Last Modified: Thu, 29 Oct 2026 20:07:11 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d69da70da53f8bbaccbe42a2a39604d04614d942f05175becbd12734575885`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 16.7 MB (16741157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4135ff460f8e8def4a1719d60cb7f429da2fc847abe56033efcc26afd10804b5`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c539cfd837f5cc46756dc3aef372a74408faef796e49b9aa666b8c75845cb9e`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f6e73d4853e671f7075f6035554fdc47f8c77aca78d98e31d366d42619785ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488719e31c76a454b1d25ec38ffc6fbd88b6b994173db611802f7c09c63f3ada`

```dockerfile
```

-	Layers:
	-	`sha256:5cd12f5b32beb72a00d4fa823af46084a5ab91dc0d7d6d6fcbe1ba20da0dca14`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 2.3 MB (2339796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e1def2bef5d3cce3dcc609f25db230ba785478f29ad4c88ebd930c51765907d`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5be8d3033a1fa9868e63fa3932e6c934bc0a2537eb7615f24ceef345527ede83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142972882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431ded57097812f42f1199a26fcae09352054da43c3cfabd6c5ad60849bf4af1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:06:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:23 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:06:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:06:23 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:07:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:07:42 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:07:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:07:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755335703a205c5ff5877b1b8974bade67497fea6b24fd8a67325f7f0d816ed4`  
		Last Modified: Thu, 29 Oct 2026 20:08:03 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2a8774dff66acc4fbd0107e555133e01fc3f8ca87c839211f6c10f07f0a311`  
		Last Modified: Thu, 29 Oct 2026 20:08:01 GMT  
		Size: 16.7 MB (16718151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9770b92062e8b6e189f8e3574a8236196984561bf296c6be81d5cb73cad3a0b7`  
		Last Modified: Thu, 29 Oct 2026 20:08:01 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3ff851016b017b60c79e9b8469e87768a03dd42013966f5f8222a0f62631e`  
		Last Modified: Thu, 29 Oct 2026 20:08:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94b4bbc9619456181ff5f4f53c14de6312bea8228448d68739aab46d07b50c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bf2dec4c582f405d048e71daa1a3e94e15d75bb52f4516afa6b6449ae9bec8`

```dockerfile
```

-	Layers:
	-	`sha256:894ab8ae9a7dd4c91a18b09c2ae022ffbad5e62ade901b6ecfe18bfe904806c9`  
		Last Modified: Thu, 29 Oct 2026 20:08:00 GMT  
		Size: 2.3 MB (2339427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcbf66126c922b7e746b61b3140b5ab77b22f27ae58fb4d1d35f5bd5ce365286`  
		Last Modified: Thu, 29 Oct 2026 20:08:00 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:96abf3cb255a04f83d7f8c99e7cfcc43072514b4ed3baef4239448248cd9bc46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145072422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2718b72c67ae929b309b8a10217cd8eeffb6edd67c3e0454ebe774ec3b70b167`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:34:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:34:23 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:38:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:38:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:38:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:38:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68133e9b05e76d46954f6cf5c0cf62b5a09a4149a5436af7285698288e95fe69`  
		Last Modified: Thu, 29 Oct 2026 20:38:54 GMT  
		Size: 90.1 MB (90111646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d21450694bf7a4a21081e29b3c218350839db2e0550b323e6cf28cac8d82ea9`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 16.8 MB (16778879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2dc044ca39169bf23065a0093527ae08109967d2dbdba0b570c9dab9d4d4d6`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e079ded38303b778f39b3a695eb60716a8a0ba6a6d92f9ee786e7fc7a68ce2`  
		Last Modified: Thu, 29 Oct 2026 20:38:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13fd067407443bbb46f2bd405fcc7def885f2b8d2dc39883ee48938e2febb386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bfd30e6e2bd9544f6b650a8d2ea111939ae30887783f264dad9de31d8d42b6`

```dockerfile
```

-	Layers:
	-	`sha256:6f81dff2569d19b43002b574c73b446d735821178db1da1f5f37888c7046d859`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 2.3 MB (2322239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46d75b1e53d542131f346ad561003390ff3f9522206fe0e193fec7a9afecd248`  
		Last Modified: Thu, 29 Oct 2026 20:38:51 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

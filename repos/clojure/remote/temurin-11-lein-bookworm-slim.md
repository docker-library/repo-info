## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:16580465c87b6bb0ef4232d24305e259ab7910d59f8e4a0eb9ad02c500eedaa6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:33141634cf2e339ce376b7820f7f5820f973d688a5dc03817b63471c4724206a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196759045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baed3a2f78393abf4ad88dcea494f61ef6b7e815e79ab5d15237fc92e56ce030`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:46:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:11 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:46:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:46:11 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:47:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:47:26 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:47:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:47:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78abba8e79728b7dc3301fb7d8984ce2eec1336a11f73f8f2c45e3d3fa11cdd7`  
		Last Modified: Thu, 12 Nov 2026 00:47:49 GMT  
		Size: 145.9 MB (145923140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130c51d11e0d559f21ec26c535e05d8e58f4c39a491c17ba9cd2c1238b101504`  
		Last Modified: Thu, 12 Nov 2026 00:47:46 GMT  
		Size: 18.1 MB (18072681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0feb612c36d05ce236a8e216fed007e0c2ad467e7503557b9a5a998af48652ec`  
		Last Modified: Thu, 12 Nov 2026 00:47:46 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7858e8e22bc3dec9cb031f5e8215ed08c6a121631e085ce1b36c98c9db08a5e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f334258954184f60ed4844dba96b7ddd48bc5acf99cb13b3274185658a5b52`

```dockerfile
```

-	Layers:
	-	`sha256:a33c19907af753d4ce1a9d964f12417c4404e38a580b91f4b4f857147c80e3b7`  
		Last Modified: Thu, 12 Nov 2026 00:47:45 GMT  
		Size: 2.8 MB (2755833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68eb6afd29fceea0fbeeff2b7c79ed9b78be553f6281a99a876aec78dadc011`  
		Last Modified: Thu, 12 Nov 2026 00:47:45 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3db3e985b22da0cceeb77db026b9c574c77a90886fc3d30e4ae92a1df070401e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193187051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac82d6e49a9a29d1a9d49aa2033864665f1acabe1fb100125666656c079a331b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:01:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:01:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:01:21 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:02:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:02:37 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:02:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:02:39 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011680b5fa73c9832c47e81cbe72c0e4e3ea1d924b1fb9b97dcedebf1f492c6d`  
		Last Modified: Thu, 12 Nov 2026 01:02:59 GMT  
		Size: 142.6 MB (142621033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e57f6ded09b0c5086e8bec19deb1e87a9bc050a78b55d291674517e364fc3d6`  
		Last Modified: Thu, 12 Nov 2026 01:02:57 GMT  
		Size: 17.9 MB (17906416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190a797be9fc92251ad6945346b23324454b8bd0104d15f53add67c60d4cef2d`  
		Last Modified: Thu, 12 Nov 2026 01:02:56 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ae954e5a262fcbfe3ed33bac452d65986b9fceaa69983be52f2d382423fcd90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7717a700313d53c7bbeed83c78d629bdbb56ccf7ef017cc4d6e6854136413d`

```dockerfile
```

-	Layers:
	-	`sha256:9e3b87be8b863fa4215feb6969296da3bc6ae8c1a51f7f0c823b65d1418e6953`  
		Last Modified: Thu, 12 Nov 2026 01:02:56 GMT  
		Size: 2.8 MB (2756066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ca885c79f582d6320db061dae8e5e4e86a419f35c950587e44ca4d673c3ae5a`  
		Last Modified: Thu, 12 Nov 2026 01:02:55 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e6f5c87bad16e40e20faa04911080256098e1440f76a631f67d5cd33d2018ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187160797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d986a1c0d845f1caff69baf066d936c98d92d498cfbf0be75f301392b102bac6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 07:40:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:40:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:40:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:40:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 07:40:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 07:40:06 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 07:44:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 07:44:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 07:44:15 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 07:44:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 07:44:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c8c7fb9813c64d9c15cc6bc75d98b58adde090ec7edfef1f3a9512b5314e60`  
		Last Modified: Thu, 12 Nov 2026 07:45:16 GMT  
		Size: 132.3 MB (132272172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5305bd25a70ca0fb94e035560d999668624de84b4fba8b0bb22e5c3278431f`  
		Last Modified: Thu, 12 Nov 2026 07:45:12 GMT  
		Size: 18.3 MB (18279806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb54fc6a69a6b2374b49289c33b8ddb8bd69a7931adf3d6c62e18d22c180ddf2`  
		Last Modified: Thu, 12 Nov 2026 07:45:12 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1a1f7360bd5ac05db04d198db0946b0f0eb39aa2b9ab9e5d04f49bdaf840643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bde965dd5144a8c333d66b2bdd7d0e03b28de9771f6db57e82b3a51c1a31d7`

```dockerfile
```

-	Layers:
	-	`sha256:efce978b95f18a99a2c8d9f6cfd55d82762ee5997e47505e1293f248d8b6e239`  
		Last Modified: Thu, 12 Nov 2026 07:45:12 GMT  
		Size: 2.8 MB (2755805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa3354acba1bf7908c55e9fc1d2778b23df87e4ada1e86c35f24c57c4376d9e`  
		Last Modified: Thu, 12 Nov 2026 07:45:11 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

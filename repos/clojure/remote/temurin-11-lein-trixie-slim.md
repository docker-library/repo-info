## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:3499385a4ac6c63cf3c14f6517f28d9e7c4c4fbfe36accf09f0ac5b87928cc5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b30a0abaa1ff72cdfce661d616825b59c6c3d81cfffa186f1cceca598130e0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196976850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2d6ca207b30880ad02a786f4d85ea478a8dfc877a09b82bd13559e4f9cab61`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:07:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:07:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:07:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:40 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:07:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:07:40 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:08:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:08:48 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:08:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:08:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9636308a2af1a3ad79476f0e08bf1f0a7cbedee92358e60fdcced5814ff167e1`  
		Last Modified: Thu, 05 Nov 2026 08:09:07 GMT  
		Size: 145.9 MB (145864298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1497a6d928182d35ae26995a281ff8c96f769a2fb24dcd1fe092e56a01326f5a`  
		Last Modified: Thu, 05 Nov 2026 08:09:04 GMT  
		Size: 16.7 MB (16741199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48460a6784155923e38aa312d9b81170b08053b9a810201d4edbf7964d4c38ee`  
		Last Modified: Thu, 05 Nov 2026 08:09:04 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9704148e5af0dc940c8b537cef4d57beb2d343b490650400c9f1d93c5de4986e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b273a76bd860c15a16abbb1508111f4062dd97a34cd04fb540b54ad427f4f154`

```dockerfile
```

-	Layers:
	-	`sha256:920b96dde9f8e6f94b69bb885b322c17d7981aa8f837b4f0a77318ebdfdce86e`  
		Last Modified: Thu, 05 Nov 2026 08:09:04 GMT  
		Size: 2.4 MB (2391270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:116eb3cdc21ca50f2b9eaef1bfc60608aca91f003bdba6edd1bf8528d45e64ad`  
		Last Modified: Thu, 05 Nov 2026 08:09:04 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:73b76c7ca10dc9955977897b7c0d63ebbdd9ba41b75eff3fa5358ee1cdca9397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194013391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe74aef2efbfd28347aff849ed3c44dffc9b61781ced461046c67d0e63c4f97`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:16:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:16:34 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:17:55 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:17:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:17:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87aec21e1b69213f58934bb51527c1a4bed10d5827c198862c5122ac6f319d10`  
		Last Modified: Thu, 05 Nov 2026 08:18:07 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e444b7844dae2e1fb3f0b1f46e3b736f5d0ca57807f773558588db6e667d4f`  
		Last Modified: Thu, 05 Nov 2026 08:18:14 GMT  
		Size: 16.7 MB (16707529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72a790947467ecedbfa926be6485e31846599788114ffd5279050d731501e4b`  
		Last Modified: Thu, 05 Nov 2026 08:18:14 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ec4ada5edee0cb44a0a55aa27c333fc268ada1cadbc1a091ef16a1f42e97f728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c24d602b72c2f0d55cc5e81569626ff009d10fb0b7ae0c9d9627a329763d948`

```dockerfile
```

-	Layers:
	-	`sha256:a6159d9c6f87d0954200930865877982fa26867fa9073e17e78957b89b295a89`  
		Last Modified: Thu, 05 Nov 2026 08:18:14 GMT  
		Size: 2.4 MB (2391498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92530b0ac4f1a02f1f882990caf1a4dfcefb1774caf154619bb123759801e54b`  
		Last Modified: Thu, 05 Nov 2026 08:18:14 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8aaeccc958fc22b1df7bc5089ef442a0f88abf6abed43703332da83e32978d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188056618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719cae63cd49638eff6d1b858d94c4780cbd3d0941d3e184c319d2156ab681d7`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:29:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:29:27 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:29:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:29:27 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:32:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:32:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:32:35 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:32:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:32:39 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeeccf415a210a0138d1856bcd2cbe0e989266852665346438a3c5f805656dfc`  
		Last Modified: Thu, 05 Nov 2026 15:33:16 GMT  
		Size: 133.1 MB (133095020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e679424d2cf01c83d373c3520113e713c40d8c7b43329345240bd325a5d609f3`  
		Last Modified: Thu, 05 Nov 2026 15:33:14 GMT  
		Size: 16.8 MB (16778728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d9dfb8af0f187e2573691aa1c4bc9b35396dffa9b445a0972b82a2cb51061b`  
		Last Modified: Thu, 05 Nov 2026 15:33:13 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d1a12c191c7c0f8555abf5bf444b31746fea797a2269d2b6fee82f5454210a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b811e8df20c8057485455fbd2490393204e3fa289ce42d15b4adb9dd3eb89d`

```dockerfile
```

-	Layers:
	-	`sha256:8203450407f45fbe5ce2b8544ec648988edb1914108a877bcf49f15430a97f46`  
		Last Modified: Thu, 05 Nov 2026 15:33:13 GMT  
		Size: 2.4 MB (2391635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28ec7d7814af8151176d81be1763b015aa60bc830a9421ffaf142203105acaf8`  
		Last Modified: Thu, 05 Nov 2026 15:33:13 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

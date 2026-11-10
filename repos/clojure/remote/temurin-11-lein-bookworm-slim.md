## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:99e0d6aa65b9bd266b2cdfa8cf16190a1e0190fbe89b2e600787fa7f3d30144c
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
$ docker pull clojure@sha256:353b2d74dcd1fa5f0a354318ffa9504739bcabc1010cfda706c2338e84212ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196757598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c47123ef0eae9410510fd3b3ee630afb2c76aeb105784ff4fc38d3b1e26b146`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:35:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:35:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:35:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:35:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:35:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:35:16 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:23 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb93c277481b9f66e36328bc2a4b1c2d9e8c9eaa845076bcc77ccca96b5b7046`  
		Last Modified: Tue, 10 Nov 2026 00:36:43 GMT  
		Size: 145.9 MB (145921630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5694ee671092229fde5982c1f0700eb08d29e109fca557eea875a18bbb9823d`  
		Last Modified: Tue, 10 Nov 2026 00:36:40 GMT  
		Size: 18.1 MB (18072767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dda2c8ff99e17cc67817d2837eaf46039e4480f65a4f5d9d5bd0a250e09b8`  
		Last Modified: Tue, 10 Nov 2026 00:36:40 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f2a74fc9b7d8001f2178a2b9f8748123d1cac613297c8cfd1e7c07ecc1851d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1377b8487ddc6ca8c37e4d0ea6cb53851d2b58e7263807e5f2d049f82004780`

```dockerfile
```

-	Layers:
	-	`sha256:4f380d814d42f2bfca1755e0a3dfd2e906efd65a93cc7032aab2f69fa0c72777`  
		Last Modified: Tue, 10 Nov 2026 00:36:40 GMT  
		Size: 2.8 MB (2755833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c508812e5e3a8847eccfb3fdcce443e0fc5b0017d3255ee7aca76a790599cdb`  
		Last Modified: Tue, 10 Nov 2026 00:36:39 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:25ceb6790b9df9bfa42a98ff337977922976ac42c54adbd6ab8e79a4e16f5f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193186792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99348a39382a3ea12e11fb5485da432a174aaad71588e1e2c477218a508386f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:34:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:34:15 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:35:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:35:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:35:26 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:35:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:35:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1836980e486b92291e5efa6541f57fff639a1c6ad4cd57bb7416e9f9d9da81b0`  
		Last Modified: Tue, 10 Nov 2026 00:35:47 GMT  
		Size: 142.6 MB (142621009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d15fc68711ef8ad9478601898dadbf9d2ca304d59ac2319ea8b358cf2b3f14`  
		Last Modified: Tue, 10 Nov 2026 00:35:45 GMT  
		Size: 17.9 MB (17906161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a2096660c048f70689c462575bebee7eb6023a2b56d4702bfa243e2196b73f`  
		Last Modified: Tue, 10 Nov 2026 00:35:44 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7cf7baf1d9e5bf6347cc4e28f36e11da43d2c96292e7fbf9851fa9623cbe1a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33f87c6bd8af357d55f5bb92f23e7c73edbb72360afdea41788196d57500fab`

```dockerfile
```

-	Layers:
	-	`sha256:74b354ee51a10e8cd226e9af3dd92e293bc96ebb0aa326334cc549d189bc30c9`  
		Last Modified: Tue, 10 Nov 2026 00:35:44 GMT  
		Size: 2.8 MB (2756066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc5e71867f3164ac1808dc00404a73dff9001674ccc697b359941a90c8415f23`  
		Last Modified: Tue, 10 Nov 2026 00:35:44 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a7cd3879ed9076ec8496d760f2f689cbdcb8375807a3234024efc10eacf892d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187160544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f0847e5de92bf29d4d806ccd8230e4e23ca2e4289443024916f88a68304367`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 01:51:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 01:55:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 01:55:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 01:55:16 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 01:55:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 01:55:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8c0212433609e99682f2296e1051cfd98ecb371221bad4b8f2148787744b48`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 18.3 MB (18279560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a0daafb92ce9cf617fbfa263047967c786997dda2976d6b1123e5918326c7f`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9602d935323363a3c60ed7cd197f8657b9fab2dfa8701ba03ad472bc1477f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706a4f57232d59ca81b5ed79e370989a051d30b2d49f370de6573a2288e2cf61`

```dockerfile
```

-	Layers:
	-	`sha256:4a41e9414716fd009b85b75365db5e39c9aa16713d472e78b18d252bfbde6ea6`  
		Last Modified: Tue, 10 Nov 2026 01:56:05 GMT  
		Size: 2.8 MB (2755805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:450ecfb9edfb61a3704d7e239f380d5482d3071b0b2541fe7ddcd991ad448cee`  
		Last Modified: Tue, 10 Nov 2026 01:56:05 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

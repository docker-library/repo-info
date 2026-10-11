## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:d42106b872803244b0530f49ba137f041c35b78497a95db7ae7b907281604744
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4538d99590f942f2c4a1c8df1f97022b199753405529379447858789c14b6436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196928014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8264e31a8f13726c39db1de734df1234718e8c4cd9a00ed3957a413c0f926c8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Thu, 08 Oct 2026 20:11:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 20:11:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 08 Oct 2026 20:11:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 20:11:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 08 Oct 2026 20:11:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 08 Oct 2026 20:11:03 GMT
WORKDIR /tmp
# Thu, 08 Oct 2026 20:12:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 08 Oct 2026 20:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 08 Oct 2026 20:12:25 GMT
ENV LEIN_ROOT=1
# Thu, 08 Oct 2026 20:12:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 08 Oct 2026 20:12:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 08 Oct 2026 20:12:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 08 Oct 2026 20:12:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f69685092901b9d34e8101dec524ad1352b8a381350710425dfd8a732fddff3`  
		Last Modified: Thu, 08 Oct 2026 20:12:47 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6165c2472ecb06ca12841b79a9e811970d04f8f1c8c52d150196c3e19aa9f2f`  
		Last Modified: Thu, 08 Oct 2026 20:12:44 GMT  
		Size: 16.7 MB (16743553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527d20d53fb082fdd18a20d966b0b6b8fb14be23f8dcb67ef9d1bf80eaf382b8`  
		Last Modified: Thu, 08 Oct 2026 20:12:44 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d009393dcb57436472e82ac3b454267b605193d99195ad904e5b8f7f0d279763`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3dc4755e3eb5651f6eedeffe2cb6455b3d51e4843832dda3c9e5e7b45856772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368dbc3fc02b8249c4b0d274ef24611e69cf2c2450a40f30179990d7f792c5bb`

```dockerfile
```

-	Layers:
	-	`sha256:1b94fdd87ff0814d5e24bbe8a22bb6b6fa9b7eb97dce49a8193d639a77edfd03`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 2.4 MB (2373031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2a01ae530ae20f237812b82329b8f06d81286b18aedac7365e9ba6ce69de05`  
		Last Modified: Thu, 08 Oct 2026 20:12:43 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6d998a3f09359606a72866f11d7896c657870ad7c8cef916b9addcabc14e942c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196076168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041c063261c7426fcfe8f773d746a518f73045150520b454f9aafe38a7c4ca77`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:02 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:02 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:17 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:19 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9adb7ac90a517f9f3164e79deedc4073ebd0c39dace50036a56fc16bb64ca8`  
		Last Modified: Sun, 11 Oct 2026 13:12:38 GMT  
		Size: 144.6 MB (144648281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06cc0b9489548a671435933636a1e99fa3e342ee3c08fc63578faa53e3cb0ed`  
		Last Modified: Sun, 11 Oct 2026 13:12:36 GMT  
		Size: 16.7 MB (16711984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec1e454f6d390788b591fdbfb035f719fd2705d6b4d67d5b2c76c1c7c6271f0`  
		Last Modified: Sun, 11 Oct 2026 13:12:35 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1f4a1b350364c2b21b5b61e2eabe3673509677aecb6c5358912230eb097c92`  
		Last Modified: Sun, 11 Oct 2026 13:12:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aa204a8fc9221de4c3b47ed36a7ce77ae74c28cb40babae537068b84630e9dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030ceafb1ab812781f2839528d59ad755b16fb62ef3282a36a3781974d57bdf8`

```dockerfile
```

-	Layers:
	-	`sha256:34109eb59aa1feff7bb2c4a36789981a98d07d957052b866d59064292416db86`  
		Last Modified: Sun, 11 Oct 2026 13:12:35 GMT  
		Size: 2.4 MB (2372641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15ded9583974337264faf6f911daafb9113f73da608a34f307898f0885ac7519`  
		Last Modified: Sun, 11 Oct 2026 13:12:35 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:47094e83451be7f88d06678180e1080130cfc77806b14e58fc071dd8b142fd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200622067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfb7044ccd09c6dc7aa3a66e3b396ef78fee86117980327bc3ba441cafd48a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:06:35 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:11:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:11:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:11:01 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:11:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:11:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20d3a530543616739863ab002993c8390b6080b2300d6388c6232bfa2803db7`  
		Last Modified: Tue, 06 Oct 2026 10:12:01 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7c527e9a97faa9f0c5b07c48e21f4a9341bec10c25894650d0b9d86e721a61`  
		Last Modified: Tue, 06 Oct 2026 10:11:58 GMT  
		Size: 16.8 MB (16783241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759c291e2d126ec637754a04b8153615dde449c460e046cd417831a62b5b6ba`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132d5a75a4874df54874c80acadfe3e732acd9e2f4cb2edd54f4b2939595084e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e92b900670b56780b9862791601c78b597a652555c0201497fcd8d3ad9591dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:875a82c4363d0832f505f5fc14f650eabffb49684402136f4aaa58f0f68bc3cf`

```dockerfile
```

-	Layers:
	-	`sha256:41ed9f312053b245637bcb6e535e963a3729261c94724aee65d42ad0ecf4b915`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36ca428626eee07d856d8653d715341664dbd676476e4c2ff78602d082db511e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:595278ad6265ac475b044fdf50e0d36101b363ca5d1eb603788b83cfeeafe8a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b9b0a86c069811c1835bfeb973bd6596b9c2fefac10cdeb4adac79ca4b2cf212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209220208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522afe4b120926cf9ed277de6df0b685f8f1bc8544ba699d4347b87ef46efb8e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:50:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:36 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:36 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:52:03 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:52:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:52:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b8b7b01a140820ee548f174697d9152e3e9f89c5e87e5fa160007dc954fa62`  
		Last Modified: Sat, 17 Oct 2026 01:52:26 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2216ff7cf7f9dc5fedc5afcebbc2f3158cb7d3665f38c7a508876fc181fb2244`  
		Last Modified: Sat, 17 Oct 2026 01:52:24 GMT  
		Size: 16.7 MB (16743742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676596edcf819e4952148c167ed2155c136a819700e3f8475a5c5af7a4f7a0f6`  
		Last Modified: Sat, 17 Oct 2026 01:52:23 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f55013eeb00bd71116939c64fca9006cd445c3986e4853b7bc40bf41116df5d`  
		Last Modified: Sat, 17 Oct 2026 01:52:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5bd14af814517793f3b9b895319579d516fa7368b2291c4479ce098949e46d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a3013086868b1fd4c1a9047efb22bdf22d9ce5e61d39d06ceaae401e47bb2a`

```dockerfile
```

-	Layers:
	-	`sha256:a720745ea6363482faaa0cdb2082e6c795ad547790b845191ab68b58a1f9dfc5`  
		Last Modified: Sat, 17 Oct 2026 01:52:23 GMT  
		Size: 2.4 MB (2374883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac37b6992e2e7dc2457cc8be11571ef192fc0fa02ca628f33a992dcb57d4d5c7`  
		Last Modified: Sat, 17 Oct 2026 01:52:23 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1d667905f3579af0c3b2f06af85d18c28440fcf99cddddca0e0019936d6723e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207828581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b785f6f9f672629c665c5b9481e12dcb3d7aed138fd3843b54f5f96876e812c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:50:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:44 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:44 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:52:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:52:10 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:52:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:52:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457c15c4aa9073dbf4e6d0c3e84e3e87b9c6b259b49b3c972876af31f152fe41`  
		Last Modified: Sat, 17 Oct 2026 01:52:35 GMT  
		Size: 156.4 MB (156400641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01a007b6738823b389dbc05daa31af0ebea9a216b2b4dbc16716574fc64dbac`  
		Last Modified: Sat, 17 Oct 2026 01:52:32 GMT  
		Size: 16.7 MB (16712018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef33e284482e98aef2b788fb72e3192aed3f6e8ef548fbc3b10f4f22eb7acb0`  
		Last Modified: Sat, 17 Oct 2026 01:52:32 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9329bbefcaa7a6a3033a362ba137f88fd5dc5e2d2cee8252744547b8fa6fe7dc`  
		Last Modified: Sat, 17 Oct 2026 01:52:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c94103b83b942552df09e7905d05346cda20b269ce33aabfb77d6ad9839bb5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fde114e951f9a39f0f0387198e4c755d45b878f9139e4b7ac2008bad5ddbb2`

```dockerfile
```

-	Layers:
	-	`sha256:5cf40249dba3f762944d2a18be8c99c92384b51db73e781ba2d066fbfd5a3b4e`  
		Last Modified: Sat, 17 Oct 2026 01:52:32 GMT  
		Size: 2.4 MB (2374493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ad218abb8c0fd5c34df9ddb2fd362c8bc5789b3027e491ceda9192faac6de35`  
		Last Modified: Sat, 17 Oct 2026 01:52:31 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2b946a67fdaa204648b854ac25f5fb71db8948ac93ae212b7a283eb508da5540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213232873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95a71bdc53b27ffc1662f291f0f989b9551317288aeea20487c0a1c983a3703`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:03:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:03:33 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:07:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:07:55 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:08:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:08:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:08:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:08:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc8db92c8093631fa89d93420542c74f3e69613279092fa836d43403c3a23fe`  
		Last Modified: Sat, 17 Oct 2026 06:08:53 GMT  
		Size: 158.3 MB (158282682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52bc677ad22efa6c38d9ff8a3adb2ed5babf468986bc1fb06585741b18ae2c0`  
		Last Modified: Sat, 17 Oct 2026 06:08:50 GMT  
		Size: 16.8 MB (16782967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b692e183455143fb8f9a15bc6c38fc9d94481b53d4ad369eccb1d38f5ba30e2`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14b92132ce819856235254d25a70c564ed1474228f4d9d00a48efb4f0f12ab`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69ce8e4b76261eae08d8d0f65a33ca394f83dac9a5cdd627899cbebcf8ed925e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32b6a5668422d33476a13767ba4d7724e44ee9a50b30e5611cc1a775b4f6b4d`

```dockerfile
```

-	Layers:
	-	`sha256:d69c95e9dc98187f7f1bacee8fd01b593c2012447e5d89274cd6aff3d7efecb5`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 2.4 MB (2375863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b83823e66f73a9c50bb444ebf32ce18bf137587c14cef7c72e773f8cc645735`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:120eaf029fa44e3458a31274cda1570c8ad6f551c14c771dee46563539e44518
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:385fb50cbd70931e7124ac29c21d0f1f41152701f767b6ab4b3e3aa8a463e8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196925908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232a2db1951eae25cba151026d9e98deb583f12f167b18e6f6b712093f3c9852`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:21:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:15 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:15 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:30 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:22:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:22:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092ffb0301cf5d01d79705878b7f7fa53f307d28518be8a0aba1dad2d425b0a2`  
		Last Modified: Fri, 25 Sep 2026 23:22:52 GMT  
		Size: 145.8 MB (145824874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7cf35d3e52c2270c03d65c7cf0a9bce421ea1f2a02da3da3f069411e417ebc`  
		Last Modified: Fri, 25 Sep 2026 23:22:49 GMT  
		Size: 16.8 MB (16754970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2846080cd166b6dc4220653070d588c9e140453ad33244ef53e94b3f0b0ae10`  
		Last Modified: Fri, 25 Sep 2026 23:22:49 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0b07783c8690c646deea462955c81f05198d9ef800d70329d9a96d3310680b`  
		Last Modified: Fri, 25 Sep 2026 23:22:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:83d38de9c50b3dfe0cf6c8ff612256ba41781092be8ca8bf97d04c795a2b079f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ed6b8cd3a81c4dbe6d082f274c252b18172ef8932a21f1338e2c724e776fa2`

```dockerfile
```

-	Layers:
	-	`sha256:3e6adfaa8757c8b2457fc76021ff4ef5d02471ec1a9484c914f6a63c809ff2de`  
		Last Modified: Fri, 25 Sep 2026 23:22:48 GMT  
		Size: 2.4 MB (2373031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a0450565a1084b9ccc62bd44473f101bb8e521607643028d21e40040435bdc5`  
		Last Modified: Fri, 25 Sep 2026 23:22:48 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f19922f7ff51add269d5611547b7914e4f9beea88a43efbb0c8e830bf35e9d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196065393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d417c570dbd75ad65070ad98e90f0a3491adc38ad876c737585755cd3fcd52ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:18:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:18:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:18:48 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:03 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:20:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:20:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3948e73a1b13f70a10e24555fa0ab695fae803ba6da0641d8f4fa09d320c4`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 144.6 MB (144648252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209647049a768840f7ccae739de5b833f5394b0b8284bab5ed2059fdee34f178`  
		Last Modified: Fri, 25 Sep 2026 23:20:22 GMT  
		Size: 16.7 MB (16711806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c0ae7e9e187397ed5cab5d21b8bdb59d290139f3e52cbbfd088c0672d53c36`  
		Last Modified: Fri, 25 Sep 2026 23:20:22 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42c17e288e77e0d9a018c2996e60df60f2680f6cd6f943874b9f635950bb93e`  
		Last Modified: Fri, 25 Sep 2026 23:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:65946f08d7cf15ab9e2c6fcf4842bb3b3ac3363722fe90902d474e92fe9ff78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43c57efe7779be914f0a75b31452a0421707941bdc4ed8fa40e0fe103157847`

```dockerfile
```

-	Layers:
	-	`sha256:234b5a4ae2a81181388b78887d09e377aaf92729b22fb624b4838417647c9438`  
		Last Modified: Fri, 25 Sep 2026 23:20:22 GMT  
		Size: 2.4 MB (2372641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ede5dc94675e157db91752d96f6a5abdc038b2ded0f032285d44dca408988fe4`  
		Last Modified: Fri, 25 Sep 2026 23:20:21 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:29f65ab19f909b158e4eb9ad2676ab389bfe8053eebf6273b9b14a41b53d1247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200609613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4330d4a643c142dac042fe72b374a1e4f39623f768b570563994f8306063e3d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:39:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:39:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:39:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:39:11 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:39:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:39:12 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:41:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:41:31 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:41:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:41:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:41:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:41:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7c7925796eb84dde8ba10ca1831ea4d072c2ec80278754639f2790ede8d83e`  
		Last Modified: Sat, 26 Sep 2026 04:42:18 GMT  
		Size: 145.7 MB (145670563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8b3fad439ea66e660dc421ba892c373236ff81d2b4e9f4e1097a1d47d497b`  
		Last Modified: Sat, 26 Sep 2026 04:42:15 GMT  
		Size: 16.8 MB (16782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995f9bc954205c5ae76b42d40fe3fe59a09cba2733f95c44f8bf73c508cd071e`  
		Last Modified: Sat, 26 Sep 2026 04:42:15 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fae087a09d7c55b373e7cb4abd52f21bbfc2625547c296ac7dd78564cc9059e`  
		Last Modified: Sat, 26 Sep 2026 04:42:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9c7e8a7e9b583cd16b0c24221b7cfcc664439a42d2b3d239bdc3a515f977bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cc5b1dc504d2b5306b6676ae9d7065468de12b1c16d3b2b0967ccc60517190`

```dockerfile
```

-	Layers:
	-	`sha256:beeb076d33b251acb2210c3d6dd495c993efd130453f5c491cc805076081e3a6`  
		Last Modified: Sat, 26 Sep 2026 04:42:14 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b119135a325a424f662ba99e0155f1920e7e09795be805ed4dad4122ca62f72`  
		Last Modified: Sat, 26 Sep 2026 04:42:14 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:823f368dd1b1cfa1e54a4f65ea53ce38faa43c2f2af1df0f1c9b705f3d5e4c87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:275d826cf3ab95574d558f99608d2f665e0eeeafd427f295b0a4a8e0886424ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233399310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc60eb26bf06c851075212951738dd68199fd66c5b7f8beb136655be7cf340fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:51:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:40 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a1439b6d546bb45e9c16b34fa352a89f06fa591d50a3425cb8cadf2c6e829d`  
		Last Modified: Tue, 04 Aug 2026 02:53:03 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a98ec6a4b602a2698efa3d80fc7f28ec06c21080e9047bed729783934840e2`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 16.9 MB (16940130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56361755e57f27dabef069a375528f688baca183b992e76ad1be77c685bf640b`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9332ac860ab9d6eac1da59ffdd822c89ad11e3cbfc76cbf56ac1578f99b42783`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d0d2b5c2c468f5a6d2daacd6292f68cb456abcfdb11df8fb87794de2f9eb4030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856aa6d83121a54457fdece35afde06973741a98e53d238043ef6d1328744c24`

```dockerfile
```

-	Layers:
	-	`sha256:08f5eebd8887621b5320d3ca22b16f6110bf98e15640207ac4fb541ccee9193d`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 4.5 MB (4502879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ba3f63f7d1324def87c0a9bee4668e413c6d4159d11879e21b52d306dbaa452`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8180ad3fecf79188e20dbfb8c832b4fcb48b488345959fbd3f3c38874dbb89d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230156027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ef1a907b2e1acbab1419a2b305c12bc499a266cc690f6cc2d57c123e2a5ba3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:51:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:00 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51708b68df6fc1398d498ca518d5880694c73fcde0066680fdb791e1e29c90b`  
		Last Modified: Tue, 04 Aug 2026 02:53:25 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462643830cc4bf54f7e716ddace65a89cfdf7ae71cecc85c0ee4566f0f90bb99`  
		Last Modified: Tue, 04 Aug 2026 02:53:22 GMT  
		Size: 16.9 MB (16918243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7482df14e12864f75ceb5785db6c762550eb6b0fdba18cba1c2ab1e3620548`  
		Last Modified: Tue, 04 Aug 2026 02:53:22 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac9dd2bbc10cd53b03eedf5fd6d3ea2ad1e68ff60dd5903b5ab372d2e091c29`  
		Last Modified: Tue, 04 Aug 2026 02:53:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:80a93417eed5a9c483bfeeeff89bcb1662c070b4f04870b188bfd70ae8a4d596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4519712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6671ae1409cad9db4e373321356faf84cf334c4066e14afdda629b5d7c3976`

```dockerfile
```

-	Layers:
	-	`sha256:4f61903c58c355f2bddcae5836cb3d62be9d2e681efdc46c25dd2f2267bff2b7`  
		Last Modified: Tue, 04 Aug 2026 02:53:21 GMT  
		Size: 4.5 MB (4501853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65d7790ceabe6377f1f226075b9d0ec108c348e764e7fa8dd5e3226285e615ae`  
		Last Modified: Tue, 04 Aug 2026 02:53:21 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
